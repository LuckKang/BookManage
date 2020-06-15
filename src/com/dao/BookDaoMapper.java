package com.dao;

import com.bean.Book;

import java.util.List;

public interface BookDaoMapper {
    List<Book> queryAllBook();
//    Book queryBookById();
    void addBook(Book book);
    void deleteBook(int id);
}
