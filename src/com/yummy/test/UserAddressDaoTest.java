package com.yummy.test;

import com.yummy.dao.UserAddressDao;
import com.yummy.dao.impl.UserAddressDaoImpl;
import com.yummy.entity.UserAddress;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

/**
 * @author LuckyH
 * @email 2064150592@qq.com
 * @create 2020-09-17 8:41
 */
public class UserAddressDaoTest {

    private  final UserAddressDao userAddressDao = new UserAddressDaoImpl();

    @Test
    public void listUserAddressByUserId() {
        List<UserAddress> userAddresses = userAddressDao.listUserAddressByUserId("1");
        for (UserAddress userAddress : userAddresses) {
            System.out.println(userAddress);
        }
    }

    @Test
    public void getUserAddressById() {
        System.out.println(userAddressDao.getUserAddressById("38254291"));
    }

    @Test
    public void updateUserAddress() {
        UserAddress userAddress = userAddressDao.getUserAddressById("38253282");
        userAddress.setRecPhone("17799556633");
        System.out.println(userAddressDao.updateUserAddress(userAddress));
    }

    @Test
    public void deleteUserAddressById() {
        System.out.println(userAddressDao.deleteUserAddressById("38253282"));
    }

    @Test
    public void deleteUserAddressByUserId() {
        System.out.println(userAddressDao.deleteUserAddressByUserId("2"));
    }

    @Test
    public void saveUserAddress() {

//        for (int i = 0; i < 14; i++) {
//            String id = System.currentTimeMillis() + "";
//            id = id.substring(6) + i % 3;
//            UserAddress userAddress = new UserAddress(id, "Lucky" + (i % 3), "13366778855","XXX-XXX-XXX-XXX",  "" + (i % 3));
//            userAddressDao.saveUserAddress(userAddress);
//        }

    }

    @Test
    public void countUserAddressByUserId() {
        System.out.println(userAddressDao.countUserAddressByUserId("1"));
    }

    @Test
    public void listUserAddressForPageByUserId() {
        List<UserAddress> userAddresses = userAddressDao.listUserAddressForPageByUserId(1, 3, "1");
        for (UserAddress userAddress : userAddresses) {
            System.out.println(userAddress);
        }
    }
}