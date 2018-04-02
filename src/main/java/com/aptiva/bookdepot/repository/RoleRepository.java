package com.aptiva.bookdepot.repository;

import com.aptiva.bookdepot.domain.Role;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;

@Repository
public interface RoleRepository extends CrudRepository<Role, BigInteger> {
}
