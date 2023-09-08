package org.nic.rb.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.config.AbstractMongoConfiguration;
import org.springframework.data.mongodb.gridfs.GridFsTemplate;

import com.mongodb.MongoClient;

@Configuration
public class MongoConfig extends AbstractMongoConfiguration{
	
	@Value("${spring.data.mongodb.host}")
	private String mongo_host;
	
	@Bean
	public GridFsTemplate gridFsTemplate() throws Exception {
		return new GridFsTemplate(mongoDbFactory(), mappingMongoConverter());
	}

	@Override
	protected String getDatabaseName() {
		/*return "rajbhavan_ts";*/
		return "rajbhavan_ts";
	}

	@Override
	@Bean
	public MongoClient mongoClient() {
	    /*List<MongoCredential> auths = new ArrayList<MongoCredential>();
	    ServerAddress serverAddress = new ServerAddress("10.160.4.231", 27017);
		return new MongoClient(serverAddress, auths);*/
		return new MongoClient(mongo_host);
	}

}