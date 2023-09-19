package org.nic.rb.mongo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.nic.rb.constants.TSRBLogger;
import org.nic.rb.entity.AppointmentEntity;
import org.nic.rb.model.ActionAppModel;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.gridfs.GridFsResource;
import org.springframework.data.mongodb.gridfs.GridFsTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;
import com.mongodb.client.gridfs.GridFSFindIterable;
import com.mongodb.client.gridfs.model.GridFSFile;

@Component
public class MongoOperations {
	
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());
	
	@Autowired
	private GridFsTemplate gridFsTemplate;
	
	
	public void inserDocument(MultipartFile file, AppointmentEntity app_entity,String doc_id, String bucket) {
		
		Class<? extends GridFsTemplate> cls = gridFsTemplate.getClass();
		java.lang.reflect.Field bucket_field = null;
		try {
			bucket_field = cls.getDeclaredField("bucket");
			if(bucket_field != null) {
				bucket_field.setAccessible(true);
				bucket_field.set(gridFsTemplate, bucket);
			}
		} catch (NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException e) {
			logger.error("EXCEPTION in Mongo Operations inserDocument OF TYPE NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException {}", e.getMessage());
//			e.printStackTrace();
		}
		DBObject metaData = new BasicDBObject();
		metaData.put("doc_id", doc_id);
		metaData.put("visitor_id", app_entity.getVisit_id());
		metaData.put("application_no", app_entity.getApplication_no());
		
		try {
			gridFsTemplate.store(file.getInputStream(), file.getOriginalFilename(), file.getContentType(), metaData);
		} catch (IOException e) {
			logger.error("loadDocument EXCEPTION in AppointMent Controller {}", e.getMessage());
		}finally {
			try {
				if(file.getInputStream() != null)
					file.getInputStream().close();
			} catch (IOException e) {
				logger.error("EXCEPTION Occured In MONGO OPERATIONS While Closing The Stream {}"+e.getMessage());
			}
		}
	}
	
	
	public GridFsResource getDocumentById(String doc_id, String bucket) {
		Class<? extends GridFsTemplate> cls = gridFsTemplate.getClass();
		java.lang.reflect.Field bucket_field = null;
		
		System.out.println("------doc_id"+doc_id+" -----------bucket "+bucket);
		try {
			bucket_field = cls.getDeclaredField("bucket");
			if(bucket_field != null) {
				bucket_field.setAccessible(true);
				bucket_field.set(gridFsTemplate, bucket);
			}
		} catch (NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException e) {
			logger.error("EXCEPTION in Mongo Operations getDocumentById OF TYPE NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException {}", e.getMessage());
			e.printStackTrace();
		}
		DBObject metaData = new BasicDBObject();
		metaData.put("doc_id", doc_id);
		
		/*
		 * This block of code gives single record first one (ascending order)
		 * 
		 * GridFSFile grid_file = gridFsTemplate.findOne(new Query(Criteria.where("metadata.doc_id").is(doc_id)));
		if(grid_file != null) {
			return gridFsTemplate.getResource(grid_file);
		}*/
		
		
		// The following block of code gives latest single record
		GridFSFindIterable grid_file = gridFsTemplate.find(new Query(Criteria.where("metadata.doc_id").is(doc_id)));
		if(grid_file != null) {
			GridFsResource gridfsres = null;
			for (GridFSFile gridFSFile : grid_file) {
				gridfsres = gridFsTemplate.getResource(gridFSFile);
			}
			return gridfsres;
		}
		return null;
	}
	
	public void inserDocumentMsg(MultipartFile file,ActionAppModel appModel, String doc_id, String bucket) {
		
		Class<? extends GridFsTemplate> cls = gridFsTemplate.getClass();
		java.lang.reflect.Field bucket_field = null;
		try {
			bucket_field = cls.getDeclaredField("bucket");
			if(bucket_field != null) {
				bucket_field.setAccessible(true);
				bucket_field.set(gridFsTemplate, bucket);
			}
		} catch (NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException e) {
			logger.error("EXCEPTION in Mongo Operations inserDocument OF TYPE NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException {}", e.getMessage());
//			e.printStackTrace();
		}
		DBObject metaData = new BasicDBObject();
		metaData.put("doc_id", doc_id);
		metaData.put("visitor_id", appModel.getVisit_id());
		
		try {
			gridFsTemplate.store(file.getInputStream(), file.getOriginalFilename(), file.getContentType(), metaData);
		} catch (IOException e) {
			logger.error("loadDocument EXCEPTION in AppointMent Controller {}", e.getMessage());
		}finally {
			try {
				if(file.getInputStream() != null)
					file.getInputStream().close();
			} catch (IOException e) {
				logger.error("EXCEPTION Occured In MONGO OPERATIONS While Closing The Stream {}"+e.getMessage());
			}
		}
	}

	public void storeGallery(MultipartFile file ,String doc_id, String bucket) {
		
		Class<? extends GridFsTemplate> cls = gridFsTemplate.getClass();
		java.lang.reflect.Field bucket_field = null;
		try {
			bucket_field = cls.getDeclaredField("bucket");
			if(bucket_field != null) {
				bucket_field.setAccessible(true);
				bucket_field.set(gridFsTemplate, bucket);
			}
		} catch (NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException e) {
			logger.error("EXCEPTION in Mongo Operations inserDocument OF TYPE NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException {}", e.getMessage());
			e.printStackTrace();
		}
		DBObject metaData = new BasicDBObject();
		metaData.put("doc_id", doc_id);
		
		try {
			gridFsTemplate.store(file.getInputStream(), file.getOriginalFilename(), file.getContentType(), metaData);
		} catch (IOException e) {
			logger.error("loadDocument EXCEPTION in AppointMent Controller {}", e.getMessage());
		}finally {
			try {
				if(file.getInputStream() != null)
					file.getInputStream().close();
			} catch (IOException e) {
				logger.error("EXCEPTION Occured In MONGO OPERATIONS While Closing The Stream {}"+e.getMessage());
			}
		}
	}
	
	public List<GridFsResource> getDocumentById(String doc_id) {
		Class<? extends GridFsTemplate> cls = gridFsTemplate.getClass();
		java.lang.reflect.Field bucket_field = null;
		try {
			bucket_field = cls.getDeclaredField("bucket");
			if(bucket_field != null) {
				bucket_field.setAccessible(true);
				bucket_field.set(gridFsTemplate, "gallery_images");
			}
		} catch (NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException e) {
			logger.error("EXCEPTION in Mongo Operations getDocumentById OF TYPE NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException {}", e.getMessage());
//			e.printStackTrace();
		}
		DBObject metaData = new BasicDBObject();
		metaData.put("doc_id", doc_id);
		
		List<GridFSFile> gridFSFiles = new ArrayList<GridFSFile>();
		gridFsTemplate.find(new Query(Criteria.where("metadata.doc_id").is(doc_id))).into(gridFSFiles);
		
		List<GridFsResource> gridFsResource = new ArrayList<GridFsResource>(gridFSFiles.size());
		for (GridFSFile gridFSFile : gridFSFiles) {
			gridFsResource.add(gridFsTemplate.getResource(gridFSFile));
		}
		
		return gridFsResource;
	}
	
	public void deleteByObjectId(String doc_id) {
		Class<? extends GridFsTemplate> cls = gridFsTemplate.getClass();
		java.lang.reflect.Field bucket_field = null;
		try {
			bucket_field = cls.getDeclaredField("bucket");
			if(bucket_field != null) {
				bucket_field.setAccessible(true);
				bucket_field.set(gridFsTemplate, "gallery_images");
			}
		} catch (NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException e) {
			logger.error("EXCEPTION in Mongo Operations getDocumentById OF TYPE NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException {}", e.getMessage());
		}
		
		gridFsTemplate.delete(new Query(Criteria.where("_id").is(doc_id)));
	}

}
