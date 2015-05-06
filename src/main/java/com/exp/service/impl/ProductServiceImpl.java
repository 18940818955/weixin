package com.exp.service.impl;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.exp.base.BaseDaoImpl;
import com.exp.entities.Product;
import com.exp.service.ProductService;
@Transactional
@Service
public class ProductServiceImpl extends BaseDaoImpl<Product> implements ProductService {


}
