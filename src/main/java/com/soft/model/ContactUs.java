package com.soft.model;


import jakarta.persistence.*;
import lombok.Data;
import java.util.Date;


@Data
@Entity
@Table(name="Contact_Us")
public class ContactUs {

    @Id
    @GeneratedValue
    @Column(name = "CONTACT_ID")
    Integer contactId;

    @Column(name = "CONTACT_NAME")
    private String contactName;

    @Column(name = "CONTACT_EMAIL")
    private String contactEmail;

    @Column(name = "CONTACT_NUMBER")
    private String contactNumber;

    @Column(name = "CONTACT_DESC", length = 2000)
    private String contactDesc;

    @Column(name = "CONTACT_DATE")
    private Date contactDate;

    public ContactUs() {
    }

    public ContactUs(Integer contactId, String contactName, String contactEmail, String contactNumber, String contactDesc, Date contactDate) {
        this.contactId = contactId;
        this.contactName = contactName;
        this.contactEmail = contactEmail;
        this.contactNumber = contactNumber;
        this.contactDesc = contactDesc;
        this.contactDate = contactDate;
    }

    public Integer getContactId() {
        return contactId;
    }

    public void setContactId(Integer contactId) {
        this.contactId = contactId;
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getContactDesc() {
        return contactDesc;
    }

    public void setContactDesc(String contactDesc) {
        this.contactDesc = contactDesc;
    }

    public Date getContactDate() {
        return contactDate;
    }

    public void setContactDate(Date contactDate) {
        this.contactDate = contactDate;
    }

    @Override
    public String toString() {
        return "ContactUs{" +
                "contactId=" + contactId +
                ", contactName='" + contactName + '\'' +
                ", contactEmail='" + contactEmail + '\'' +
                ", contactNumber='" + contactNumber + '\'' +
                ", contactDesc='" + contactDesc + '\'' +
                ", contactDate=" + contactDate +
                '}';
    }
}
