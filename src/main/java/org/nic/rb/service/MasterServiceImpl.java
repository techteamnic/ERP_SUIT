package org.nic.rb.service;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.nic.rb.constants.TSRBLogger;
import org.nic.rb.dao.MasterDao;
import org.nic.rb.entity.ApplicantTypeMaster;
import org.nic.rb.entity.DistrictMaster;
import org.nic.rb.entity.GalleryEntity;
import org.nic.rb.entity.PurposeVisitMaster;
import org.nic.rb.entity.RolesMaster;
import org.nic.rb.entity.TypeInvitaionMaster;
import org.nic.rb.model.GalleryModel;
import org.nic.rb.model.MasterModel;
import org.nic.rb.mongo.MongoOperations;
import org.nic.rb.utils.ClassUtils;
import org.nic.rb.utils.DateUtils;
import org.nic.rb.utils.MasterUtils;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.gridfs.GridFsResource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
@Transactional
public class MasterServiceImpl implements MasterService{
	
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());
	
	@Autowired
	private MasterDao masterDao;
	
	@Autowired
	private MongoOperations mongoOperations;
	
	@Override
	public <T> List<T> getMasterDetailsByQ(String query_entity) {
		query_entity += "Master";
		return masterDao.getMasterDetailsByQ(query_entity);
	}

	@Override
	public Integer saveMasterData(MasterModel masterModel, HttpServletRequest request) {
		Class<?> clazz = ClassUtils.getClassByString(masterModel.getMastr_name());
		logger.debug("clazz {}", clazz);
		switch (masterModel.getMastr_name()) {
		case "ApplicantType":
			ApplicantTypeMaster app_type = new ApplicantTypeMaster();
			
			if(masterModel.getId() == null || masterModel.getId().isEmpty())
				app_type = MasterUtils.masterAdd(app_type, request);
			else {
				app_type = MasterUtils.masterUpdate(app_type, request);
				app_type.setId(Integer.parseInt(masterModel.getId()));
			}
			
			app_type.setValue(masterModel.getValue());
			return masterDao.addMasterData(app_type).getId();
		case "District":
			DistrictMaster dis_type = new DistrictMaster();
			if(masterModel.getId() == null || masterModel.getId().isEmpty())
				dis_type = MasterUtils.masterAdd(dis_type, request);
			else {
				dis_type = MasterUtils.masterUpdate(dis_type, request);
				dis_type.setId(Integer.parseInt(masterModel.getId()));
			}
			
			dis_type.setValue(masterModel.getValue());
			return masterDao.addMasterData(dis_type).getId();
		case "PurposeVisit":
			PurposeVisitMaster purpose_type = new PurposeVisitMaster();
			if(masterModel.getId() == null || masterModel.getId().isEmpty())
				purpose_type = MasterUtils.masterAdd(purpose_type, request);
			else {
				purpose_type = MasterUtils.masterUpdate(purpose_type, request);
				purpose_type.setId(Integer.parseInt(masterModel.getId()));
			}
			purpose_type.setValue(masterModel.getValue());
			return masterDao.addMasterData(purpose_type).getId();
		case "TypeInvitaion":
			TypeInvitaionMaster inve_type = new TypeInvitaionMaster();
			if(masterModel.getId() == null || masterModel.getId().isEmpty())
				inve_type = MasterUtils.masterAdd(inve_type, request);
			else {
				inve_type = MasterUtils.masterUpdate(inve_type, request);
				inve_type.setId(Integer.parseInt(masterModel.getId()));
			}
			
			inve_type.setValue(masterModel.getValue());
			return masterDao.addMasterData(inve_type).getId();
		case "Roles":
			RolesMaster role_type = new RolesMaster();
			if(masterModel.getId() == null || masterModel.getId().isEmpty())
				role_type = MasterUtils.masterAdd(role_type, request);
			else {
				role_type = MasterUtils.masterUpdate(role_type, request);
				role_type.setId(Integer.parseInt(masterModel.getId()));
			}
			
			role_type.setValue(masterModel.getValue());
			return masterDao.addMasterData(role_type).getId();
		case "User":
			
			break;
		default:
			return null;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public <T> List<T> getMasterDataByEntityName(Class<T> clazz) {
			return (List<T>) masterDao.masterLoadDataByEntity(clazz);
	}
	
	@Override
	public Integer addGalleryService(GalleryModel galModel, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(galModel.getDoc_id() != null && !galModel.getDoc_id().isEmpty()) {
			for (MultipartFile gai_image : galModel.getGallery_imgs()) {
				mongoOperations.storeGallery(gai_image, galModel.getDoc_id(), "gallery_images");
			}
			return 0;
		}else {
			GalleryEntity gal_entity = new GalleryEntity();
			gal_entity.setTitle(galModel.getGallery_title());
			gal_entity.setDoc_id(UUID.randomUUID().toString());
			
			gal_entity.setCreated_by(session.getAttribute("user_name").toString());
			gal_entity.setCreated_date(DateUtils.getCurrentDate());
			gal_entity.setTs(DateUtils.getCurrentDate());
			gal_entity.setIp(request.getRemoteAddr());
			
			Integer gal_id = masterDao.addGallery(gal_entity);
			if(gal_id != null) {
				for (MultipartFile gai_image : galModel.getGallery_imgs()) {
					mongoOperations.storeGallery(gai_image, gal_entity.getDoc_id(), "gallery_images");
				}
			}
			return gal_id;
		}
	}

	@Override
	public List<GalleryEntity> loadGallery(int pageNumber) {
		return masterDao.getAllGallery(pageNumber);
	}

	@Override
	public List<GalleryEntity> getAllGallery() {
		return masterDao.getGalleries();
	}

	@Override
	public List<GridFsResource> getAllImagesByEventId(String doc_id) {
		return mongoOperations.getDocumentById(doc_id);
	}

	@Override
	public void deleteEventPhotos(String[] ids) {
		for (String id : ids) {
			mongoOperations.deleteByObjectId(id);
		}
	}
}
