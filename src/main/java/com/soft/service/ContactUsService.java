package com.soft.service;

import com.soft.model.ContactUs;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ContactUsService {

    public void saveContactUs(ContactUs contactUs);
    public List<ContactUs> listContactUs();
    public ContactUs getContactUsById(Integer contactId);
}
