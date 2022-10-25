package com.infinite.oyo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Billing")
public class Checkout {
	@Id
	@Column(name="bId")
	private int bId;
	
	@Column(name="roomId")
	private String roomId;
	
	@Column(name="BookId")
	private int bookId;
	
	@Column(name="BillAmt")
	private long billAmt;
	
	@Column(name="NoOfDays")
	private long noOfDays;

	
	public int getbId() {
		return bId;
	}

	public void setbId(int bId) {
		this.bId = bId;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public long getBillAmt() {
		return billAmt;
	}

	public void setBillAmt(long billAmt) {
		this.billAmt = billAmt;
	}

	public long getNoOfDays() {
		return noOfDays;
	}

	public void setNoOfDays(long noOfDays) {
		this.noOfDays = noOfDays;
	}

	public String getRoomId() {
		return roomId;
	}

	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
}

