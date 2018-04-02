package com.aptiva.bookdepot.repository;

import com.aptiva.bookdepot.domain.Lot;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;

@Repository
public interface LotRepository extends CrudRepository<Lot, BigInteger> {
}
