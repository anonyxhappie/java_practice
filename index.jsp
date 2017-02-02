<%@ page import="java.io.*,java.util.*" %>
<html>
	<head><title>anonyxhappie</title></head>
	<body>
		<center>
			<h1>Hello Buddy!!</h1>
			<% response.setIntHeader("Refresh", 5); %>
			<%
			out.println("Your IP address is " + request.getRemoteAddr() + " : " + request.getServerPort() 
				+ "\n isSecure() : " + request.isSecure()
				+ "\n getServerPort() : " + request.getServerPort());
			%>
			
			<%-- This is JSP comment --%>
			<jsp:include page="date.jsp" flush="true" />
			<jsp:useBean id="test" class="action.TestBean" />
			<jsp:setProperty name="test" property="message" value="Hey Buddy I'm back!!" />
			<h3>Got the msg...</h3> 
			<jsp:getProperty name="test" property="message" />

			<%! int day = 3, fontsize; %>
			<%! String fcolor = "blue"; %>
			<%  if (day == 1 || day == 7) { %>
					<p>Today is weekend.</p>
			<%	}else{ %>
					<p>Today is working day.</p>
			<%	}  %>
			<%	for (fontsize = 7; fontsize > 0 ; fontsize--) { 
					if(fcolor == "blue") 
						fcolor = "red"; 
					else 
						fcolor = "blue"; 
			%>
			<font color="<%= fcolor %>" size="<%=fontsize%>">Akshay</font>
			</br>
			<%  } %>
			<table width="100%" border="1" align="center">
				<tr bgcolor="#949494">
				<th>Header Name</th><th>Header Value(s)</th>
				</tr>
				<%
				   Enumeration headerNames = request.getHeaderNames();
				   while(headerNames.hasMoreElements()) {
				      String paramName = (String)headerNames.nextElement();
				      out.print("<tr><td> " + paramName + " </td>\n");
				      String paramValue = request.getHeader(paramName);
				      out.println("<td> " + paramValue + " </td></tr>\n");
				   }
				%>
			</table>
		</center>
	</body>
</html>
