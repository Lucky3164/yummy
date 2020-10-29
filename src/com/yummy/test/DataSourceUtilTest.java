package com.yummy.test;


import com.yummy.entity.District;
import com.yummy.util.DataSourceUtil;
import org.junit.Test;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Date;

/**
 * @author LuckyH
 * @email 2064150592@qq.com
 * @create 2020-09-07 14:52
 */
public class DataSourceUtilTest {

    @Test
    public void getConnection() {

        System.out.println(DataSourceUtil.getConnection());

    }
}