package com.avish.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "com.avish.controller" })
public class AppConfig extends WebMvcConfigurerAdapter {

	@Bean
	public ViewResolver jspViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/jsp/");
		resolver.setSuffix(".jsp");
		return resolver;
	}

	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// registry.addResourceHandler("/resources/**").addResourceLocations("/WEB-INF/resources/");
		registry.addResourceHandler("/images/**").addResourceLocations(
				"/WEB-INF/resources/images/");
		registry.addResourceHandler("/assets/**").addResourceLocations(
				"/WEB-INF/resources/assets/");
		registry.addResourceHandler("/css/**").addResourceLocations(
				"/WEB-INF/resources/css/");
		registry.addResourceHandler("/js/**").addResourceLocations(
				"/WEB-INF/resources/js/");
		// registry.addResourceHandler("images/**").addResourceLocations("/WEB-INF/resources/images/**");
	}
}
