

<%! public String generateWishMessage(String user){
	   //get system date & time
	   java.time.LocalDateTime ldt=java.time.LocalDateTime.now();
	   //get current hour of the day
	   int hour=ldt.getHour();
	   //generate wish message
	   if(hour<12)
		   return "Good Morning::"+user;
	   else if(hour<16)
		   return "Good Afternoon::"+user;
	   else if(hour<20)
		   return "Good Evening::"+user;
	   else
		   return "Good Night::"+user;
	}
	%>

<h1 style="color:red;text-align:center">Welcome to jsp</h1>
<h1 style="color:red;text-align:center">Date & Time is::<%=new java.util.Date() %></h1>

<% String user=request.getParameter("uname"); %>

<h2>Wish Message is:<%=generateWishMessage(user) %></h2>

