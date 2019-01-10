<%@page contentType='text/html' pageEncoding='UTF-8' session='false'%>
<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<%@taglib prefix='spring' uri='http://www.springframework.org/tags' %> 
<!doctype html>
<html lang='nl'>
<head>
<title>Albums</title>
</head>
<body>
	<c:if test = "${not empty param.fout}">
		<div>${param.fout}</div>
	</c:if>	
	<h1>Albums</h1>
	<ul>
		<c:forEach var='album' items='${albums}'>
			<spring:url var='url' value='/albums/{id}'>
				<spring:param name = 'id' value='${album.id}'/>
			</spring:url>	
			<li><a href='${url}'>${album.naam}</a> ${album.artiest.naam}</li>
		</c:forEach>	
	</ul>
</body>
</html>
