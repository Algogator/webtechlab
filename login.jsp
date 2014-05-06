<html>
  <body bgcolor="#E6E6FA"><div align="center">
    <form method="post">
      User name :<input type="text" name="usr" /><br>
      password :<input type="password" name="pwd" /><br>
      <input type="submit" /><br>
    </form>
    <a href="reg.jsp">REGISTER!</a>
  </div></body>

  <%@page import="java.sql.*"%>
  <%
    String u=request.getParameter("usr");
    session.putValue("user",u);
    String p=request.getParameter("pwd");
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp", "root", "philips");
    Statement st= conn.createStatement(); 
    ResultSet rs=st.executeQuery("select * from data where uid='"+u+"'"); 
    if(rs.next()) 
    { 
      if(rs.getString(2).equals(p)) 
      {
        String redirectURL = "main.jsp";
            response.sendRedirect(redirectURL);
      } 
    } 
  %>

</html>
