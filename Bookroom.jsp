<%@page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Room</title>
</head>
<body>
	<jsp:useBean id="beanDAO" class="com.infinite.oyo.RoomDAO"></jsp:useBean>
	Select Room:
	<table border=3>
		<tr>
			<th>ID</th>
			<th>Type</th>
			<th>Cost Per Day</th>
			<th>Book</th>
		</tr>
		<c:forEach var="room" items="${beanDAO.showAvailRooms() }" >
			<tr>
				<td><c:out value="${room.getRoomId() }"></c:out></td>
				<td><c:out value="${room.getType() }"></c:out></td>
				<td><c:out value="${room.getCostPerDay() }"></c:out></td>
				<td><a href="book-room.jsp?roomId=${room.getRoomId() }"><button>BOOK</button></a></td>
			</tr>
		</c:forEach>
	</table>
	
	<c:if test="${param.roomId != null }">
		<form>
			<input name="roomId" value="${param.roomId }" readonly><br>
			<input name="custName" type="text" placeholder="Customer Name"><br>
			<input name="city" type="text" placeholder="City"><br>
			<input name="chkInDate" type="date" placeholder="Check In Date (yyyy-MM-dd)"><br>
			<input name="chkOutDate" type="date" placeholder="Check Out Date (yyyy-MM-dd)"><br>
			<input type=submit>
		</form>	
	</c:if>
	
	<c:if test="${param.roomId != null && param.custName != null }">
		<jsp:useBean id="beanBooking" class="com.infinite.oyo.Booking"></jsp:useBean>
		<jsp:setProperty property="roomId" name="beanBooking" />
		<jsp:setProperty property="custName" name="beanBooking" />
		<jsp:setProperty property="city" name="beanBooking" />
		
		<fmt:parseDate value="${param.chkInDate}" pattern="yyyy-MM-dd" var="cdate1"/>
		<c:set var="sqlDate1" value="${beanDAO.convertDate(cdate1)}"/>
		
		<fmt:parseDate value="${param.chkOutDate}" pattern="yyyy-MM-dd" var="cdate2"/>
		<c:set var="sqlDate2" value="${beanDAO.convertDate(cdate2)}"/>
		
		<jsp:setProperty property="chkInDate" name="beanBooking" value="${sqlDate1}"/>
		<jsp:setProperty property="chkOutDate" name="beanBooking" value="${sqlDate2}"/>
		
		<c:out value="${beanDAO.bookRoomDAO(beanBooking) }"></c:out>
		
		 <br/><br/>
	</c:if>
</body>
</html>