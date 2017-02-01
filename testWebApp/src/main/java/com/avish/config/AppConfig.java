package com.avish.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.avish.model.Email;

@Configuration
@EnableWebMvc
@EnableTransactionManagement
@PropertySource("classpath:avish.properties")
@ComponentScan(basePackages = { "com.avish.controller", "com.avish.email.dao" })
public class AppConfig extends WebMvcConfigurerAdapter {

	private String url;
	private String driver;
	private String user;
	private String password;

	@Autowired
	private Environment env;

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

	@Bean
	public DataSource dataSource() {
		driver = env.getProperty("mysql.driver");
		url = env.getProperty("mysql.url");
		user = env.getProperty("mysql.user");
		password = env.getProperty("mysql.password");
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(driver);
		dataSource.setUrl(url);
		dataSource.setUsername(user);
		dataSource.setPassword(password);
		return dataSource;
	}

	@Bean
	public DataSourceTransactionManager transactionManager() {
		DataSourceTransactionManager transactionManager = new DataSourceTransactionManager();
		transactionManager.setDataSource(dataSource());
		return transactionManager;
	}

	@Bean
	public SessionFactory sessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(
				dataSource);
		Properties props = new Properties();
		props.put("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
		props.put("hibernate.show_sql", "true");
		sessionBuilder.addProperties(props);
		sessionBuilder.addAnnotatedClass(Email.class);
		return sessionBuilder.buildSessionFactory();
	}

	@Bean
	public HibernateTransactionManager transactionManager(
			SessionFactory sessionFactory) {
		return new HibernateTransactionManager(sessionFactory);
	}

	/*
	 * @Bean public JdbcTemplate jdbcTemplate(DataSource dataSource) { return
	 * new JdbcTemplate(dataSource); }
	 */
}
