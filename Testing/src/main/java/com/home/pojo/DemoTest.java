package com.home.pojo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DemoTest extends CrudRepository<UserPojo,Integer> {
	  
}
