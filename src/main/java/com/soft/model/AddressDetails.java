package com.soft.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicUpdate;

@Entity
@Table(name="ADDRESS_DETAILS")
@DynamicUpdate

public class AddressDetails {
	
	@Id
	@GeneratedValue
	@Column(name="Serial_Id")
	private Integer serialId=1;
	
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
    
    

	public Integer getSerialId() {
		return serialId;
	}

	public void setSerialId(Integer serialId) {
		this.serialId = serialId;
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
    
}
