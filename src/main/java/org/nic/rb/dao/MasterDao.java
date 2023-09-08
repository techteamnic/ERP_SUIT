package org.nic.rb.dao;

import java.util.List;

import org.nic.rb.entity.GalleryEntity;

public interface MasterDao {
	public <T> List<T> getMasterDetailsByQ(String query_entity);
	
	public <T> T addMasterData(T clazz);
	
	public <T> List<T> masterLoadDataByEntity(T clazz);
	
	public String getmasterLabelByIdAndTable(Integer id, String entity_name, String label);
	
	public Integer addGallery(GalleryEntity galEntity);
	
	public List<GalleryEntity> getAllGallery(int pageNumber);
	
	public List<GalleryEntity> getGalleries();
}
