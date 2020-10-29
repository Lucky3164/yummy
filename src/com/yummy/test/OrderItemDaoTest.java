package com.yummy.test;

import com.alibaba.druid.sql.visitor.functions.Length;
import com.yummy.dao.OrderItemDao;
import com.yummy.dao.impl.OrderItemDaoImpl;
import com.yummy.entity.OrderItem;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.List;

import static org.junit.Assert.*;

/**
 * @author LuckyH
 * @email 2064150592@qq.com
 * @create 2020-09-13 16:22
 */
public class OrderItemDaoTest {

    private static final OrderItemDao orderItemDao = new OrderItemDaoImpl();

    @Test
    public void saveOrderItem() {
        for (int i = 0; i < 15; i++) {
            String id = System.currentTimeMillis() + "";
            String itemId = id.substring(id.length() - 5) + i;

            //OrderItem orderItem = new OrderItem(itemId, "item", new BigDecimal(15), 3, (Integer.parseInt(itemId) % 3) + "");

            //orderItemDao.saveOrderItem(orderItem);
        }


    }

    @Test
    public void deleteOrderItemById() {
        System.out.println(orderItemDao.deleteOrderItemById("483307"));
    }

    @Test
    public void deleteOrderItemByOrderId() {
        System.out.println(orderItemDao.deleteOrderItemByOrderId("0"));
    }

    @Test
    public void updateOrderItem() {
        OrderItem orderItem = orderItemDao.getOrderItemById("4836311");
        orderItem.setItemCount(10);

        System.out.println(orderItemDao.updateOrderItem(orderItem));

    }

    @Test
    public void getOrderItemById() {
        System.out.println(orderItemDao.getOrderItemById("4836311"));
    }

    @Test
    public void listOrderItemByOrderId() {
        List<OrderItem> orderItems = orderItemDao.listOrderItemByOrderId("2");
        for (OrderItem orderItem : orderItems) {
            System.out.println(orderItem);
        }
    }

    @Test
    public void countOrderItemByOrderId() {
        System.out.println(orderItemDao.countOrderItemByOrderId("2"));
    }
}