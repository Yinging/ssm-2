package com.better.shuai.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by 夏帅帅 on 2016/9/16.
 */
public class DateUtil {
    public static final String YEAY = "YEAR";
    public static final String MONTH = "MONTH";
    public static final String DAY = "DAY";

    public static String getDate(){
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        String dateNowStr = sdf.format(d);
        return dateNowStr;
    }

    public static Map<String, String> getYearMonthDay(){
        Map<String, String> map = new HashMap<>();
        Calendar now = Calendar.getInstance();
        map.put(YEAY, now.get(Calendar.YEAR) + "");
        map.put(MONTH, now.get(Calendar.MONTH) + 1 + "");
        map.put(DAY, now.get(Calendar.DAY_OF_MONTH) + "");
        return map;
    }

}
