package com.soft.model;


import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="ADDRESS_DETAILS")
public class AddressDetails {

    @Id
    @GeneratedValue
    @Column(name="address_Id")
    private Integer addressId;

    @Column(name="Address1")
    private String address1;

    @Column(name="Address2")
    private String address2;

    @Column(name="City")
    private String city;

    @Column(name="Pincode")
    private String pincode;
    
    @Column(name="State")
    private String state;
    
    @Column(name="Country")
    private String country="INDIA";

    public AddressDetails() {
    }

    public AddressDetails(Integer addressId, String address1, String address2, String city, String pincode, String state, String country) {
        this.addressId = addressId;
        this.address1 = address1;
        this.address2 = address2;
        this.city = city;
        this.pincode = pincode;
        this.state = state;
        this.country = country;
    }

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Override
    public String toString() {
        return "AddressDetails{" +
                "addressId=" + addressId +
                ", address1='" + address1 + '\'' +
                ", address2='" + address2 + '\'' +
                ", city='" + city + '\'' +
                ", pincode='" + pincode + '\'' +
                ", state='" + state + '\'' +
                ", country='" + country + '\'' +
                '}';
    }
}
