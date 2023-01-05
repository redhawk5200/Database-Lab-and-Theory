//maven
package com.wahab.spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        ApplicationContext con = new ClassPathXmlApplicationContext("appconfig.xml");
        campus c = (campus)con.getBean("campus");
        
        System.out.println(c);
        
        //person p = (person) con.getBean("student");
        //p.identity();
    }
}
/
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns = "http://www.springframework.org/schema/beans"
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
   xmlns:context = "http://www.springframework.org/schema/context"
   xsi:schemaLocation = "http://www.springframework.org/schema/beans
   http://www.springframework.org/schema/beans/spring-beans-3.0.xsd
   http://www.springframework.org/schema/context
   http://www.springframework.org/schema/context/spring-context-3.0.xsd">
   
   <context:component-scan base-package="com.wahab.spring" ></context:component-scan>
   
   <bean id="campus" class="com.wahab.spring.campus" >
   <constructor-arg value="10" type="int" ></constructor-arg>
   <property name="name" value="karachi" ></property>
   </bean>
	   
   
   
</beans>
//jdbc
package l10;

import java.sql.*;
import java.util.Scanner;

class connectiontest{
	public static void main(String [] args) throws Exception {
		
		final String url = "jdbc:mysql:///jdbc1";
		final String user = "root";
		final String pass = "root";
		
//		Scanner sc = new Scanner(System.in);
//		
//		System.out.println("Enter the id: ");
//		int id =sc.nextInt();
//		
//		System.out.println("Enter the name: ");
//		String name= sc.next();
		
		
		
		Connection con = DriverManager.getConnection(url, user, pass);
		
		
		Statement st = con.createStatement();
		
		String q= "select * from person where idperson=1";
		
//		String query = "update person set name = ? where idperson = ?";
		
//		String query= "delete from person where idperson = ?  ";
//		
		//PreparedStatement st = con.prepareStatement(q);
		
		
		ResultSet rs = st.executeQuery(q);
		
		String name="";
		
		while(rs.next()) {
			name=rs.getString(2);
		}
		
		System.out.println(name);
//		st.setInt(1, id);
//		st.setString(2, name);
//		
//		int count = st.executeUpdate();
		
		
		
		rs.close();
		st.close();
		con.close();
	}
}
//servlet
public class addservlet extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
		int i = Integer.parseInt(req.getParameter("num1"));
		int j = Integer.parseInt(req.getParameter("num2"));
		int k = i+j;
		
		res.sendRedirect("sq");
		
		k+=k;
		PrintWriter out= res.getWriter();
		out.println("the value of k " + k);
		
		int k = (int) req.getAttribute("k");
		req.setAttribute("k",k);
		RequestDispatcher rd = req.getRequestDispatcher("sq");
		rd.forward(req, res);
	}
}
/
  <servlet>
  	<servlet-name> abc </servlet-name>
  	<servlet-class>l8.addservlet</servlet-class>
  </servlet>
  <servlet-mapping>
  	<servlet-name> abc</servlet-name>
  	<url-pattern>/add</url-pattern>
  </servlet-mapping>
