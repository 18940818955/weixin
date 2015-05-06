package com.exp.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.exp.base.BaseDaoImpl;
import com.exp.entities.Order;
import com.exp.service.OrderService;

@Service
@Transactional
public class OrderServiceImpl extends BaseDaoImpl<Order> implements
		OrderService {

}
