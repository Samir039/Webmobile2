<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Calculator</title>
    </head>

    <body>

        <%

    String p1 = request.getParameter("p1");
	String p2 = request.getParameter("p2");
	String op = request.getParameter("op");
	
	String ans = "";
	
	 if(op == null) {
			ans = "Pass values";
	 } else if(op.equals("add")){
		
		try {
			int num1 = Integer.parseInt(p1);
			int num2 = Integer.parseInt(p2);
			ans = p1 + "+" + p2 + "=" + String.valueOf(num1+num2);
					
		} catch(Exception ex){
			ans = "Number are not integers";
		}
		
	} else if(op.equals("sub")){
		try {
			int num1 = Integer.parseInt(p1);
			int num2 = Integer.parseInt(p2);
			ans = p1 + "-" + p2 + "=" + String.valueOf(num1-num2);
						
		} catch(Exception ex){
			ans = "Number are not integers";
		}
		
	} else if(op.equals("mul")){
		try {
			int num1 = Integer.parseInt(p1);
			int num2 = Integer.parseInt(p2);
			ans = p1 + "*" + p2 + "=" + String.valueOf(num1*num2);
			
		} catch(Exception ex){
			ans = "Number are not integers";
		}
		
	} else if(op.equals("div")){
		try {
			int num1 = Integer.parseInt(p1);
			int num2 = Integer.parseInt(p2);
			ans = p1 + "/" + p2 + "=" + String.valueOf(num1/num2);
			
			
		} catch(ArithmeticException ex){
			ans = "Number can't be divided by zero";
		} catch(Exception ex){
			ans = "Number are not integers";
		}
	} else {
		ans = "Invalid Operator";
	}  
%>

            <h1>Calculator</h1>
            <p>In order to perform arithmetic operations such as addition, subtraction, multiplication and division pass three parameters</p>
            <ul>
                <li>p1 (should be integer)</li>
                <li>p2 (should be integer)</li>
                <li>op (should be add, sub, mul, div)</li>
            </ul>

            <h2>Answer</h2>
            <h3>

                <h3>
                    <% out.print(ans); %>
                        <h3>

                            <br>
                            <hr>
                            <h1>Get Details</h1>

                            <a href="/Assignment/SystemInfo">System Info</a>

    </body>

    </html>