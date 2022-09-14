package com.demo.configurations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.demo.services.UserService;


@EnableWebSecurity
@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private UserService userService;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.cors().and().csrf().disable();
		
		http.authorizeRequests()
			.antMatchers("/demo/**").permitAll()
			.antMatchers("/superadmin/**").access("hasRole('ROLE_SUPER_ADMIN')")
			.antMatchers("/store/**").access("hasRole('ROLE_SUPER_ADMIN') or hasRole('ROLE_STORE')")
			.antMatchers("/user/cart/**").access("hasRole('ROLE_SUPER_ADMIN') or hasRole('ROLE_STORE') or hasRole('ROLE_USER')")
			.antMatchers("/user/myaccount/**").access("hasRole('ROLE_SUPER_ADMIN') or hasRole('ROLE_STORE') or hasRole('ROLE_USER')")
			.and()
			.formLogin().loginPage("/account/login")
			.loginProcessingUrl("/account/process-login")
			.defaultSuccessUrl("/user/home/index")
			.failureUrl("/account/login?error")
			.usernameParameter("username")
			.passwordParameter("password")
			.and()
			.logout().logoutUrl("/account/logout")
			.logoutSuccessUrl("/account/login?logout")
			.and()
			.exceptionHandling().accessDeniedPage("/account/accessDenied")
			
			;
	}
	
	@Bean
	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}
	
	
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder builder) throws Exception{
		builder.userDetailsService(userService);
	}
	
	
	
}
