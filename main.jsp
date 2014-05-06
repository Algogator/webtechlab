<%@page import="java.sql.*"%>
<%
  String urid = (String)session.getAttribute( "user" ); 
%>  

<%!
  String jsp1()
  {
    String a="Bought!";
    try{
      Connection conn = null;
      Class.forName("com.mysql.jdbc.Driver").newInstance();
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root", "philips");
      Statement st=null;
      st=conn.createStatement();
      System.out.println("urid");
    }
    catch(Exception e){
      System.out.println(e);
    }
    return a;
  }
%>

<html>

  <script>
    function cb1(){
      alert("<%= jsp1() %>");
    }
  </script>
  
  <body bgcolor="#E6E6FA">
    <div align="center">
    Hello <%= session.getAttribute( "user" ) %>
    <h1>MENU</h1><br>
    <form name="f1">
      <img src="picture1.jpg" width="300" height="300"><br>Rs. 300<br><input type="button" name="b1" value="Buy Me!" onClick="cb1()"><br><br>
      <img src="picture2.jpg" width="300" height="300"><br>Rs. 400<br><input type="button" name="b2">Buy Me!</button><br><br>
      <img src="picture3.jpg" width="300" height="300"><br>Rs. 500<br><input type="button" name="b3">Buy Me!</button><br><br>
    </form>
    <a href="trans.jsp">
      <h2>Your Transactions!</h2>
    </a>
    </div>
  </body>
</html>
