package com.aptiva.bookdepot.service;

import com.aptiva.bookdepot.domain.Lot;
import com.aptiva.bookdepot.repository.LotRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.util.List;

@Service
public class LotService {

    @Autowired
    LotRepository lotRepository;

    public List<Lot> list() {
        return (List<Lot>)lotRepository.findAll();
    }

    public Lot get(int id){
        Lot lot = lotRepository.findOne(BigInteger.valueOf(3L));
        return lot;
    }



}
