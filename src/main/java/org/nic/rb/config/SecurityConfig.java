package org.nic.rb.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private DataSource datasource;
	
	@Autowired
	private PasswordEncoder passEncoder;
	
	@Autowired
	private CaptchaFilter captchaFilter;
	
	/*@Autowired
	private CustomCsrfTokenRepository customCsrfTokenRepository;*/
	
	/*@Autowired
	private UserDetailsService userDetailsService;*/

	/*@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService);
	}*/
	
	private static final String AUTHONTICATION_QUERY="select user_name,password, is_active from user_mst where user_name= ?";
	private static final String AUTHORIZATION_QUERY="select us.user_name,r.rolename as user_role from user_mst us LEFT JOIN roles_mst r ON us.role_id =r.id where us.user_name = ?";
	
	@Override
	public void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().dataSource(datasource).passwordEncoder(passEncoder)
								 .usersByUsernameQuery(AUTHONTICATION_QUERY)
								 .authoritiesByUsernameQuery(AUTHORIZATION_QUERY);
	}

	/*@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/admin/*.do").hasRole("Ädmin")
			.antMatchers("/*.do").permitAll()
			.and().formLogin();
	}*/
	
	@Override
	public void configure(HttpSecurity http) throws Exception {
		/*http.headers().contentSecurityPolicy("default-src 'none'; script-src 'self' 'unsafe-inline' https://platform.twitter.com/ https://www.facebook.com/ https://www.youtube-nocookie.com/ https://translate.googleapis.com/ https://cdn.syndication.twimg.com/ https://cdn.datatables.net/ https://code.jquery.com/ https://cdnjs.cloudflare.com/; connect-src 'self'; img-src 'self' data: https://www.gstatic.com/ https://syndication.twitter.com/ https://pbs.twimg.com/ https://abs.twimg.com/ https://ton.twimg.com/ https://platform.twitter.com/; style-src 'self' 'unsafe-inline' https://translate.googleapis.com/ https://platform.twitter.com/ https://ton.twimg.com/ https://cdn.datatables.net/ https://cdnjs.cloudflare.com/; font-src 'self' https://cdnjs.cloudflare.com/; frame-src https://www.facebook.com/ https://www.youtube-nocookie.com/ https://platform.twitter.com/ https://syndication.twitter.com/");*/
//		http.headers().contentSecurityPolicy("default-src 'none'; script-src 'self' 'unsafe-inline' https://platform.twitter.com/ https://www.facebook.com/ https://www.youtube-nocookie.com/ https://translate.googleapis.com/ https://cdn.syndication.twimg.com/ https://cdn.datatables.net/ https://code.jquery.com/ https://cdnjs.cloudflare.com/; connect-src 'self'; img-src 'self' data: https://www.gstatic.com/ https://syndication.twitter.com/ https://pbs.twimg.com/ https://abs.twimg.com/ https://ton.twimg.com/ https://platform.twitter.com/; style-src 'self' 'unsafe-inline' https://translate.googleapis.com/ https://platform.twitter.com/ https://ton.twimg.com/ https://cdn.datatables.net/ https://cdnjs.cloudflare.com/; font-src 'self' https://cdnjs.cloudflare.com/; frame-src https://www.facebook.com/ https://www.youtube-nocookie.com/ https://platform.twitter.com/ https://syndication.twitter.com/");
//		http.headers().contentSecurityPolicy("default-src 'none'; script-src 'self'; connect-src 'self'; img-src 'self'; style-src 'self';base-uri 'self';form-action 'self'");
		http.headers().cacheControl();
//		http.addFilterBefore(captchaFilter, ChannelProcessingFilter.class);
		http.csrf();/*.csrfTokenRepository(customCsrfTokenRepository)*/
		http.addFilterAt(captchaFilter,  UsernamePasswordAuthenticationFilter.class);
		http.authorizeRequests().antMatchers("/").permitAll()
			.antMatchers("/changePass.do").authenticated()
		    .antMatchers("/rb_exe/*.do").hasAuthority("Admin")
		    .antMatchers("/rb_chief/*.do").hasAuthority("Adc")
		    .antMatchers("/rb_secr/*.do").hasAuthority("Secretary")
		    .antMatchers("/tsrb.do").authenticated()
		    .antMatchers("/logout.do").authenticated()
//		    .anyRequest().denyAll()
			.and().formLogin().usernameParameter("user_name").passwordParameter("p_val")
			.loginPage("/")
			.failureUrl("/auth_failure.do").loginProcessingUrl("/login.do")
			.defaultSuccessUrl("/tsrb.do", true);
			/*.and().logout().logoutUrl("/logout.do")
			.logoutSuccessUrl("/login.do");*/
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new CustomPasswordEncoder();
	}
}