<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Details</title>
        <style>
            tr td {
                font-size: 20px;
                padding: 10px;
            }
            
            table,
            tr,
            td {
                border: 1px solid black;
                border-collapse: collapse;
            }
        </style>
    </head>

    <body>
        <h1>Details</h1>


        <table width="100%">
            <tr>
                <td>OS Name</td>
                <td>
                    <% out.print(System.getProperty("os.name")); %>
                </td>
            </tr>
            <tr>
                <td>IP address</td>
                <td>
                    <%=request.getRemoteAddr()%>
                </td>
            </tr>
            <tr>
                <td>User-agent/Browswer</td>
                <td>
                    <%=request.getHeader("user-agent")%>
                </td>
            </tr>
            <tr>
                <td>session ID</td>
                <td>
                    <%=request.getRequestedSessionId()%>
                </td>
            </tr>
            <tr>
                <td>URL</td>
                <td>
                    <%=request.getRequestURL()%>
                </td>
            </tr>
            <tr>
                <td>session ID</td>
                <td>
                    <%=request.getRequestedSessionId()%>
                </td>
            </tr>
            <tr>
                <td>session ID</td>
                <td>
                    <%=request.getRequestedSessionId()%>
                </td>
            </tr>

        </table>

        <br>
        <a href="/Assignment/webpage.jsp">Back</a>

    </body>

    </html>