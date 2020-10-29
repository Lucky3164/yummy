package com.yummy.test;

import com.yummy.dao.OrderDao;
import com.yummy.dao.impl.OrderDaoImpl;
import com.yummy.entity.Order;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * @author LuckyH
 * @email 2064150592@qq.com
 * @create 2020-09-09 19:27
 */
public class OrderDaoImplTest {

    private static final OrderDao orderDao = new OrderDaoImpl();

    @Test
    public void saveOrder() {
//        for (int i = 0; i < 15; i++) {
//            String orderId = System.currentTimeMillis() + "";
//            Order order = new Order(orderId, new Date(), new BigDecimal(i * 15), new BigDecimal(0), new BigDecimal(i * 15),
//                    new BigDecimal(i * 15), 100, "Lucky" + i % 3, "13399997777", "XXX", "" + i % 3);
//            orderDao.saveOrder(order);
//        }

    }

    @Test
    public void getOrderById() {
        System.out.println(orderDao.getOrderById("202009201937200"));
        System.out.println(orderDao.getOrderById("202009201947100"));
    }

    @Test
    public void deleteOrderById() {
        System.out.println(orderDao.deleteOrderById("1599984579219"));
    }

    @Test
    public void updateOrder() {
        Order order = orderDao.getOrderById("1599984579214");
        order.setOrderStatue(200);
        System.out.println(orderDao.updateOrder(order));
    }

    @Test
    public void listOrderByUserId() {
        List<Order> orderList = orderDao.listOrderByUserId("0");
        for (Order order : orderList) {
            System.out.println(order);
        }
    }

    @Test
    public void countOrderByUserId() {
        System.out.println(orderDao.countOrderByUserId("1"));
    }

}