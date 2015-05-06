package com.exp;

import java.util.HashSet;
import java.util.Set;

import org.junit.Test;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import com.exp.entities.Role;
import com.exp.entities.User;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JsonTest  {
	public static String conv() throws Exception{
		ObjectMapper op = new ObjectMapper();
		Set<Role> roles = new HashSet<>();
		roles.add(new Role());
		UserDetails user = new User("ddd", "ddd", "4214", "156#156.sss", "213312", "111", roles);
		String str = op.writeValueAsString(user);
		return null;
	}
	public static void main(String[] args) throws Exception {
//		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		ObjectMapper op = new ObjectMapper();
//		Set<Role> roles = new HashSet<>();
//		roles.add(new Role());
//		//User user = new User("ddd", "ddd", "4214", "156#156.sss", "213312", "111", roles);
//		user.setId(1);
//		String str = op.writeValueAsString((UserDetails)user);
//		System.out.println("over");
		UserDetails principal = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		System.out.println(principal);
	}
	@Test
	public void test111() {
		System.out.println("1");
	}
}
