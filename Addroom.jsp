<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Room</title>
</head>
<body>
	<form>
		Select Room Type:
		<select name="type">
		  <option value="Single">Single</option>
		  <option value="Double">Double</option>
		</select><br>
		
		Cost Per Day:
		<input type="text" name="costPerDay" placeholder="Cost Per Day"/><br>
		<input type="submit" value="SUBMIT">
	</form>
	
	<c:if test="${param.type != null }">
		<jsp:useBean id="rooms" class="com.infinite.oyo.Room"/>
		<jsp:setProperty property="*" name="rooms"/>
		
		<jsp:useBean id="beanDAO" class="com.infinite.oyo.RoomDAO"/>
		<c:out value="${beanDAO.addRoomDAO(rooms)}"/>
	</c:if>
</body>
</html>