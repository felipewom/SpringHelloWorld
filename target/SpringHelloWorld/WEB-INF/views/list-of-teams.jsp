<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<tiles:insertDefinition name="defaultLayout">
  <tiles:putAttribute name="body">
<h1>List of teams</h1>
<p>Here you can see the list of the teams, edit them, remove or update.</p>
<table border="1px" cellpadding="0" cellspacing="0" >
  <thead>
  <tr>
    <th width="10%">id</th><th width="15%">name</th><th width="10%">rating</th><th width="10%">actions</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="team" items="${teams}">
    <tr>
      <td>${team.id}</td>
      <td>${team.name}</td>
      <td>${team.rating}</td>
      <td>
        <a href="${pageContext.request.contextPath}/team/edit/${team.id}">Edit</a><br/>
        <a href="${pageContext.request.contextPath}/team/delete/${team.id}">Delete</a><br/>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>

<p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>
</tiles:putAttribute>
</tiles:insertDefinition>