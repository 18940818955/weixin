package com.exp.util;

import java.util.HashSet;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.exp.entities.Basedata;
import com.exp.entities.Role;
import com.exp.entities.User;
@Component
public class InitialData {
	@Resource
	private SessionFactory sessionFactory;
	@Transactional
	public void initData(){
		Session s = sessionFactory.getCurrentSession();
		Role r1 = new Role("ROLE_USER","注册用户");
		Role r2 = new Role("ROLE_ADMIN","管理员");
		Role r3 = new Role("ROLE_CUSTOMER","客户");
		s.save(r1);
		s.save(r2);
		s.save(r3);

		Set<Role> roles1 = new HashSet<Role>();
		roles1.add(r1);
		roles1.add(r2);
		Set<Role> roles2 = new HashSet<Role>();
		roles2.add(r1);
		roles2.add(r3);

		User u1 = new User("admin", "admin", "", "", "","111", roles1);
		User u2 = new User("user", "user", "", "", "", "111", roles2);
		s.save(u1);
		s.save(u2);

		Basedata b = new Basedata("已下单", 1);
		Basedata b1 = new Basedata("已发货", 1);
		Basedata b2 = new Basedata("订单完成", 1);
		Basedata b3 = new Basedata("订单取消", 1);
		s.save(b);
		s.save(b1);
		s.save(b2);
		s.save(b3);
	}
	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("spring-common.xml");
		InitialData initialData = (InitialData) ac.getBean("initialData");
		initialData.initData();
	}
}
