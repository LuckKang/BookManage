package com.service;

import com.bean.Book;

import java.util.List;

public interface BookService {
    List<Book> queryAllBook();
    void addBook(Book book);
    void deleteBook(int id);
}
