package com.login.rep;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.login.model.Login;

@Repository
public interface LoginRepository extends JpaRepository<Login,Integer> {

}
