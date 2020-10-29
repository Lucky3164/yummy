package com.yummy.test;

import com.yummy.dao.ProductDao;
import com.yummy.dao.impl.ProductDaoImpl;
import com.yummy.entity.Product;
import org.junit.Test;

import java.math.BigDecimal;

import static org.junit.Assert.*;

/**
 * @author LuckyH
 * @email 2064150592@qq.com
 * @create 2020-09-14 19:06
 */
public class ProductDaoTest {

    private final ProductDao productDao = new ProductDaoImpl();

    @Test
    public void saveProduct() {

        for(int i = 0; i < 10; i++){
            String id = (System.currentTimeMillis() + "").substring(7) + i;
            String img_path = "/static/images/tools/c2.jpg";
            productDao.saveProduct(new Product(id, "勺子", new BigDecimal(59), img_path, "No Desc", "snacks"));
        }

    }

    @Test
    public void deleteProductById() {
    }

    @Test
    public void updateProduct() {
    }

    @Test
    public void getProductById() {
    }

    @Test
    public void listProductByType() {
    }

    @Test
    public void countProductByType() {
    }
}