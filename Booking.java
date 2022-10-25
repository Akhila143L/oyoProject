package com.infinite.oyo;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name="Booking")
public class Booking {
	@Id
	@Column(name="BookId")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long bookId;
	
	@Column(name="RoomId")
	private String roomId;
	
	@Column(name="CustName")
	private String custName;
	
	@Column(name="City")
	private String city;
	
	@Column(name="BookDate")
	private Date bookDate;
	
	@Column(name="ChkInDate")
	private Date chkInDate;
	
	@Column(name="ChkOutDate")
	private Date chkOutDate;


	//Getters and Setter
	public Long getBookId() {
		return bookId;
	}

	public void setBookId(Long bookId) {
		this.bookId = bookId;
	}

	public String getRoomId() {
		return roomId;
	}

	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}

	public String getCustName() {
		return custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Date getBookDate() {
		return bookDate;
	}

	public void setBookDate(Date bookDate) {
		this.bookDate = bookDate;
	}

	public Date getChkInDate() {
		return chkInDate;
	}

	public void setChkInDate(Date chkInDate) {
		this.chkInDate = chkInDate;
	}


	public Date getChkOutDate() {
		return chkOutDate;
	}

	public void setChkOutDate(Date chkOutDate) {
		this.chkOutDate = chkOutDate;
	}
}