<%@page import = "java.util.ArrayList"%>
<%@page import = "com.Accio.HistoryResult"%>

<html>
<head>
<link rel = "stylesheet" type ="text/css" href ="styles.css">

</head>
<body>
<div class="resultTable">
<h1> History </h1>
<table border=2>
<tr>
<td>Name</td>
<td>Link</td>
</tr>
<%
ArrayList<HistoryResult> results = (ArrayList<HistoryResult>) request.getAttribute("results");
for(HistoryResult result:results){
%>
<tr>
<td><%out.println(result.getName());%></td>
<td><a href="Search?keyword=<%out.println(result.getName());%>"><%out.println(result.getLink());%></a></td>


</tr>
<%
}
%>
</table>
</div>

</body>
<div class="footer">
  <p>&copy; 2022 Ashutosh Kashyapa</p>
</div>
</html>
