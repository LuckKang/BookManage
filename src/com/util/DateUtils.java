package com.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {
    static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    public static String DateToString(Date bTime) {
        return sdf.format(bTime);
    }
}
