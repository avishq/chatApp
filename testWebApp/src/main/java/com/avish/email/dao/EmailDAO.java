package com.avish.email.dao;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.avish.model.Email;

@Repository
@Transactional
public class EmailDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public void add(Email email) {
		sessionFactory.getCurrentSession().saveOrUpdate(email);
	}

	/*
	 * public void add(Email email) { String sql =
	 * "insert into Email (email) values (?)"; jdbcTemplate.update(sql,
	 * email.getEmail()); System.out.println("added"); }
	 */

	/*
	 * public List<Email> findByEmail(Email email) { String sql =
	 * "select * from Email where email = (?)"; List<Email> list; list =
	 * jdbcTemplate.queryForList(sql, new Object[]{email.getEmail()},
	 * ParameterizedBeanPropertyRowMapper.newInstance(Email.class));
	 * //jdbcTemplate.execute(sql); System.out.println("Fetchh size " +
	 * jdbcTemplate.getFetchSize()); //jdbcTemplate.query(sql,
	 * email.getEmail()); return list; }
	 */

	@Transactional
	public Long countByEmail(String email) { 
		Criteria crit = sessionFactory.getCurrentSession().createCriteria(Email.class);
		crit.add( Restrictions.eq("email", email));
		crit.setProjection(Projections.rowCount());
		System.out.println(crit.uniqueResult());
		return (Long) crit.uniqueResult();
	}
	 
}
