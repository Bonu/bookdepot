package com.aptiva.bookdepot.web;

import com.aptiva.bookdepot.domain.Lot;
import com.aptiva.bookdepot.repository.LotRepository;
import com.aptiva.bookdepot.service.LotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/lot")
public class LotController {

    @Autowired
    LotService lotService;

    @RequestMapping(method = {RequestMethod.GET}, value="/all")
    public List<Lot> getLots(){
        return lotService.list();
    }

    @RequestMapping(value="/",method=RequestMethod.GET)
    public Lot get(Long id){
        Lot user = lotService.get(1);
        return user;
    }

}
