<html>

  <body bgcolor="#E6E6FA"><div align="center">
    <form action="reg.jsp" method="post">
      User name :<input type="text" name="usr" /><br>
      password :<input type="password" name="pwd" /><br>
      <input type="submit" />
    </form>
  </div></body>

  <%@page import="java.sql.*"%>
   
  <%
    if(request.getParameter("usr")!=null && request.getParameter("pwd")!=null){
      String u=request.getParameter("usr");
      session.putValue("user",u);
      String p=request.getParameter("pwd");
      try{
        Connection conn = null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root", "philips");
        Statement st=null;
        st=conn.createStatement();
        st.executeUpdate("insert into data values('"+u+"','"+p+"')");
        String redirectURL = "main.jsp";
        response.sendRedirect(redirectURL);
      }
      catch(Exception e){
        System.out.println(e);
      }
    }
  %>
  
</html>
