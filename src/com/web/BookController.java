package com.web;


import com.bean.Book;
import com.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Map;

@Controller
public class BookController {

    @Autowired
    private BookService bookService;

    @RequestMapping(value = "/books/find", method = RequestMethod.GET)
    public String find(Map model){
        List<Book> list = bookService.queryAllBook();
        model.put("list",list);
        System.out.println(list);
        return "/books/list";
    }

    @RequestMapping("books/toAddBook")
    public String toAddBook(){
        return "/books/addBook";
    }

    @RequestMapping("/books/addBook")
    public String add(Book book){
        System.out.println(book);
        bookService.addBook(book);
        return "redirect:/books/find";
    }

    @RequestMapping("/books/del/{bId}")
    public String del(@PathVariable("bId") int id){
        bookService.deleteBook(id);
        return "redirect:/books/find";
    }

}
