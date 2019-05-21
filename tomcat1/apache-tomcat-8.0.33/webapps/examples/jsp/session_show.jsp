<%
if(session.getAttribute("testeSession")!=null) {
out.print("Achei atributo");
} else {
out.print("NAO Achei atributo");
}%>