package nic.config;

import java.io.InputStream;

import org.nic.rb.constants.TSRBLogger;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.mongodb.DB;
import com.mongodb.DBObject;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSDBFile;
import com.mongodb.gridfs.GridFSInputFile;
import com.mongodb.util.JSON;

import nic.userdetails.model.PersonalModel;

@Component
public class MongoRepository {
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());
	
	@Autowired
	MongoTemplate mongoTemplate;
	
	public String saveFile(MultipartFile file,String collectionname,String uuid) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		DB db = (DB) mongoTemplate.getDb();
		try {
			InputStream is = file.getInputStream();
			// The root node storage FS
			GridFS gridFS = new GridFS(db, collectionname);
			if(file != null && !file.isEmpty() &&file.getSize()>0){
				 GridFSDBFile findFile = (GridFSDBFile) gridFS.findOne((DBObject) JSON.parse("{_id:\""+uuid+"\"}"));
					if(findFile != null) {
						gridFS.remove(findFile);
					} 
					GridFSInputFile gfs = gridFS.createFile(is);
					gfs.put("_id", uuid);
					gfs.put("filename", file.getOriginalFilename());
					gfs.put("contentType", file.getContentType());
					gfs.put("userid", ((UserDetails) principal).getUsername());
					gfs.save();
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Exception in saveImageFile"+e.getMessage());
		} 
		/*finally{
			db.getMongo().close();
		}*/
		return "1";
	}
	
	public String saveFile(PersonalModel declared_model, MultipartFile file,String collectionname,String uuid) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		DB db = (DB) mongoTemplate.getDb();
		try {
			InputStream is = file.getInputStream();
			// The root node storage FS
			GridFS gridFS = new GridFS(db, collectionname);
			if(file != null && !file.isEmpty() &&file.getSize()>0){
				 GridFSDBFile findFile = (GridFSDBFile) gridFS.findOne((DBObject) JSON.parse("{_id:\""+uuid+"\"}"));
					if(findFile != null && declared_model == null) {
						gridFS.remove(findFile);
					} 
					GridFSInputFile gfs = gridFS.createFile(is);
					gfs.put("_id", uuid);
					gfs.put("filename", file.getOriginalFilename());
					gfs.put("contentType", file.getContentType());
					gfs.put("userid", ((UserDetails) principal).getUsername());
					gfs.save();
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Exception in saveImageFile"+e.getMessage());
		} 
		/*finally{
			db.getMongo().close();
		}*/
		return "1";
	}
	
	public String saveImageFile(MultipartFile file,String collectionname,String uuid) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		DB db = (DB) mongoTemplate.getDb();
		try {
			InputStream is = file.getInputStream();
			// The root node storage FS
			GridFS gridFS = new GridFS(db, collectionname);
			if(file.getSize() > 0){
				GridFSDBFile findFile = (GridFSDBFile) gridFS.findOne((DBObject) JSON.parse("{_id:\""+uuid+"\"}"));
				if(findFile != null) {
					gridFS.remove(findFile);
				} 
				GridFSInputFile gfs = gridFS.createFile(is);
				gfs.put("_id", uuid);
				gfs.put("filename", file.getOriginalFilename());
				gfs.put("contentType", file.getContentType());
				gfs.put("userid", ((UserDetails) principal).getUsername());
				gfs.save();
			}
		} catch (Exception e) {
			logger.error("Exception in saveImageFile"+e.getMessage());
		} 
		return "1";
	}
	
	public String saveAccreditationFile(MultipartFile file,String collectionname,String accreditedBy ,String uuid) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		DB db = (DB) mongoTemplate.getDb();
		try {
			InputStream is = file.getInputStream();
			// The root node storage FS
			GridFS gridFS = new GridFS(db, collectionname);
			if(file.getSize() > 0){
				GridFSDBFile findFile = (GridFSDBFile) gridFS.findOne((DBObject) JSON.parse("{_id:\""+uuid+"\", accreditedBy:\""+accreditedBy+"\"}"));
				if(findFile != null) {
					gridFS.remove(findFile);
				} 
					GridFSInputFile gfs = gridFS.createFile(is);
					gfs.put("_id", uuid);
					gfs.put("filename", file.getOriginalFilename());
					gfs.put("accreditedBy", accreditedBy);
					gfs.put("contentType", file.getContentType());
					gfs.put("userid", ((UserDetails) principal).getUsername());
					gfs.save();
			}
		} catch (Exception e) {
			logger.error("Exception in saveAccreditationFile"+e.getMessage());
		} 
		return "1";
	}
	
	
	public String saveAfctnFeeFile(MultipartFile file,String collectionname,String uuid) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		DB db = (DB) mongoTemplate.getDb();
		try {
		    logger.debug(db.toString());
			InputStream is = file.getInputStream();
			// The root node storage FS
			GridFS gridFS = new GridFS(db, collectionname);
			GridFSInputFile gfs = gridFS.createFile(is);
			gfs.put("_id", uuid);
			gfs.put("filename", file.getOriginalFilename());
			gfs.put("contentType", file.getContentType());
			gfs.put("userid", ((UserDetails) principal).getUsername());
			gfs.save();
		} catch (Exception e) {
			logger.error("Exception in saveAfctnFeeFile"+e.getMessage());
		} 
		return "1";
	}
	
	public String saveInstitionSeekingFile(MultipartFile file,String collectionname,String uuid) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		DB db = (DB) mongoTemplate.getDb();
		try {
		    logger.debug(db.toString());
			InputStream is = file.getInputStream();
			// The root node storage FS
			GridFS gridFS = new GridFS(db, collectionname);
			GridFSInputFile gfs = gridFS.createFile(is);
			gfs.put("_id", uuid);
			gfs.put("filename", file.getOriginalFilename());
			gfs.put("contentType", file.getContentType());
			gfs.put("userid", ((UserDetails) principal).getUsername());
			gfs.save();
		} catch (Exception e) {
			logger.error("Exception in saveInstitionSeekingFile"+e.getMessage());
		}
		return "1";
	}
	

	public GridFSDBFile getFile(String collectionname,String uuid){
		GridFSDBFile queryFile = null;
		DB db = (DB) mongoTemplate.getDb();
		try {
			GridFS fs = new GridFS(db,collectionname);
			queryFile = fs.findOne((DBObject) JSON.parse("{_id:\""+uuid+"\"}"));
		} catch (Exception e) {
			logger.error("Exception in getFile"+e.getMessage());
		}
		return queryFile;
	}
	
    public GridFSDBFile getFile(String collectionname,String uuid, String approvedBy) {
		GridFSDBFile queryFile = null;
		DB db = (DB) mongoTemplate.getDb();
		try {
			GridFS fs = new GridFS(db,collectionname);
			queryFile = fs.findOne((DBObject) JSON.parse("{_id:\""+uuid+"\", accreditedBy:\""+approvedBy+"\"}"));
		} catch (Exception e) {
			logger.error("Exception in getFile"+e.getMessage());
		}
		return queryFile;
	}
    
	public GridFSDBFile getImagebytes(String collectionname,String uuid) {
		GridFSDBFile queryFile = null;
		DB db = (DB) mongoTemplate.getDb();
		try {
			GridFS fs = new GridFS(db,collectionname);
			queryFile = fs.findOne((DBObject) JSON.parse("{_id:\""+uuid+"\"}"));
		} catch (Exception e) {
			logger.error("Exception in getImagebytes"+e.getMessage());
		}
		return queryFile;
	}
}