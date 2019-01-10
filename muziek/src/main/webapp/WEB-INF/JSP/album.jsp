<%@page contentType='text/html' pageEncoding='UTF-8' session='false'%>
<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<!doctype html>
 <html lang='nl'>
<head>
<title>${album.naam} - ${album.artiest.naam}</title>
</head>
<body>
	<h1>${album.naam} - ${album.artiest.naam}</h1>
	<ul>
		<c:forEach var='track' items='${album.tracks}'>
			<li>${track.naam} ${track.tijd}</li>
		</c:forEach>	
	</ul>
	Totale tijd = ${album.tijd}
</body>
</html>
