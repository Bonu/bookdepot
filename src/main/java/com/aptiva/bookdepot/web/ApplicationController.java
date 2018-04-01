package com.aptiva.bookdepot.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/bookdepot")
public class ApplicationController {

    @RequestMapping(method = {RequestMethod.GET},value={"/version"})
    public String getVersion() {
        return "1.0";
    }
}

