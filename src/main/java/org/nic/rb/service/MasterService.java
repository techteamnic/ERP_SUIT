package org.nic.rb.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.nic.rb.entity.GalleryEntity;
import org.nic.rb.model.GalleryModel;
import org.nic.rb.model.MasterModel;
import org.springframework.data.mongodb.gridfs.GridFsResource;

public interface MasterService {
	public <T> List<T> getMasterDetailsByQ(String query_entity);
	public Integer saveMasterData(MasterModel masterModel, HttpServletRequest request);
	public <T> List<T> getMasterDataByEntityName(Class<T> clazz);
	public Integer addGalleryService(GalleryModel galModel, HttpServletRequest request);
	public List<GalleryEntity> loadGallery(int pageNumber);
	public List<GalleryEntity> getAllGallery();
	public List<GridFsResource> getAllImagesByEventId(String doc_id);
	public void deleteEventPhotos(String[] ids);
}
