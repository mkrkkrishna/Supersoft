package com.soft.dao;

import com.soft.model.ContactUs;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContactUsDAO extends JpaRepository<ContactUs,Integer>
{

}
