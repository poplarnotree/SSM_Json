package org.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.ssm.until.Book;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/json")
public class BookController1 {
    @RequestMapping(value = "/testRequestBody1")
    //@ResponseBody可以直接将集合数据转换成json格式，并返回客户端
    @ResponseBody
    public Object getJson(){
        List<Book> list = new ArrayList<Book>();
        list.add(new Book(1,"SpringMVC","杨某某"));
        list.add(new Book(2,"SpringMVC2","杨某某2"));
        return list;
    }

}
