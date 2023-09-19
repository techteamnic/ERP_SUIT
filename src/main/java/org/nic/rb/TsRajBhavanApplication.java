package org.nic.rb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication(scanBasePackages={"org.nic.rb","nic.userdetails","nic.commons","nic.config","nic.constants"})
@EntityScan(basePackages= {"org.nic.rb.entity","nic.userdetails.entity"})
public class TsRajBhavanApplication {

	public static void main(String[] args) {
		SpringApplication.run(TsRajBhavanApplication.class, args);
	}
	
	@Bean
	public RestTemplate restTemplate() {
		return new RestTemplate();
	}
}
