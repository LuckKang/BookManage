package com.bean;

import com.util.DateUtils;
import org.springframework.format.annotation.DateTimeFormat;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Book {
    private int b_id;
    private String b_name;
    private String b_author;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date b_time;
    private int b_type;

    public int getB_id() {
        return b_id;
    }

    public void setB_id(int b_id) {
        this.b_id = b_id;
    }

    public String getB_name() {
        return b_name;
    }

    public void setB_name(String b_name) {
        this.b_name = b_name;
    }

    public String getB_author() {
        return b_author;
    }

    public void setB_author(String b_author) {
        this.b_author = b_author;
    }


    public void setB_time(String b_time) throws ParseException {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        this.b_time = format.parse(b_time);
    }

    public int getB_type() {
        return b_type;
    }

    public void setB_type(int b_type) {
        this.b_type = b_type;
    }

    public String getB_time() {
        return DateUtils.DateToString(b_time);
    }


}
