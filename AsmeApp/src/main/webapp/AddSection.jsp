<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.askme.dao.CategoryDAOImpl"%>   
     <%@page import="com.askme.dao.SectionDAOImpl"%>   
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Section</title>
</head>
<body>
 
    <p>CategoryList</p>
<%  
		CategoryDAOImpl categoryDao=new CategoryDAOImpl();
        ResultSet rs=categoryDao.showAllCategory();
		%>
	
   		<table border="2">
			<thead>
				<tr>
				   <th >Category Name</th>
				</tr>
			</thead>
			<br>
			<br>
			<tbody>
				<%
				while(rs.next()){				
				%>
				<tr>	
					 <td><%=rs.getString(2) %></td>					
					
			</tr>
					
			<%} %>
					</tbody>
		           </table><br><br>
 <form name="section"  action="AddSectionServlet"  method="post">
     
      <table>
       <tr>
          <td><label for="name">Select your Category Name</label></td>
          <td><input type="text" name="selectCategoryName"  placeholder="CategoryName"required autofocus></td>
        </tr>
        <tr>
          <td><label for="name">Enter Section Name</label></td>
          <td><input type="text" name="sectionName"  placeholder="sectionName"required autofocus></td>
        </tr>
        <tr>
          <td colspan="2"><input type="submit" class="submit" /></td>
        </tr>      
       
      </table>
    </form>

</body>
</html>