package com.ecom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyStoreController {

    @RequestMapping("/mystore")
    public String myStore(){
        return "mystore";
    }

    @RequestMapping("/mystore_header")
    public String myStoreHeader(){
        return "mystore_header";
    }

    @RequestMapping("/myproduct_info")
    public String myProductInfo(){
        return "myproduct_info";
    }

    @RequestMapping("/addProduct")
    public String addProduct(){
        return "addProduct";
    }

}
