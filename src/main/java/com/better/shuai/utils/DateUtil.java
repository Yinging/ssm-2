package com.better.shuai.utils;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by 夏帅帅 on 2016/9/16.
 */
public class DateUtil {
    public static final String YEAY = "YEAR";
    public static final String MONTH = "MONTH";
    public static final String DAY = "DAY";

    public static String formatMillLong(Date time){
        SimpleDateFormat format =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA);
        return format.format(time);
    }

    public static Date getDate(){
        return new Date(System.currentTimeMillis());
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
