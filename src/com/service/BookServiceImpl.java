package com.service;

import com.bean.Book;
import com.dao.BookDaoMapper;

import java.util.List;

public class BookServiceImpl implements BookService{


    private BookDaoMapper bookDaoMapper;

    public BookDaoMapper getBookDaoMapper() {
        return bookDaoMapper;
    }

    public void setBookDaoMapper(BookDaoMapper bookDaoMapper) {
        this.bookDaoMapper = bookDaoMapper;
    }

    @Override
    public List<Book> queryAllBook() {
        return bookDaoMapper.queryAllBook();
    }

    @Override
    public void addBook(Book book) {
        bookDaoMapper.addBook(book);
    }

    @Override
    public void deleteBook(int id) {
        bookDaoMapper.deleteBook(id);
    }
}
