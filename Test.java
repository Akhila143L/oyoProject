package com.infinite.oyo;

import java.sql.Date;

public class Test {
	public static void main(String[] args) {
		RoomDAO obj = new RoomDAO();
		Booking booking = obj.bookings("R003");
		RoomDAO obj1 = new RoomDAO();
		
		int noOfDays = obj1.noOfDays(booking.getChkInDate(), booking.getChkOutDate());
		
		System.out.println(noOfDays);
	}
}
