<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%@ page import="java.util.HashMap" %>
<%
    String nombre_s = request.getParameter("nombre_compra");
    String apellido_s = request.getParameter("apellido_compra");
    String cantidad_s = request.getParameter("cantidad_compra");
    String categoria_s = request.getParameter("categoria_compra");
    HashMap<String, Double> categorias = new HashMap<>();
    categorias.put("Estudiante", 0.80);
    categorias.put("Trainee", 0.50);
    categorias.put("Junior", 0.15);
    double value_categoria = categorias.get(categoria_s);
    int pre_precio = 200 * Integer.parseInt(cantidad_s);

    double precio_coma = pre_precio - pre_precio * value_categoria;
    int precio_total = (int) precio_coma;

    ConexionDB conex=new ConexionDB();
	Statement st=conex.conectar();
	try {
		Integer okIns=st.executeUpdate("INSERT INTO codon (nombre,apellido,cantidad,categoria,precio) VALUES ('"+nombre_s+"','"+apellido_s+"','"+cantidad_s+"','"+categoria_s+"','"+String.valueOf(precio_total)+"') ");
		
		if(okIns==1) {
			response.sendRedirect("../views/compras.jsp");
		} else {
			response.sendRedirect("../views/compras.jsp?mensaje=No%20se%20puedo%20agregar%20el%20usuario");
		}
		
	} catch(Exception e) {
		//enviar email al desarrollador
		response.sendRedirect("../views/compras.jsp?mensaje=No%20se%20puedo%20agregar%20el%20usuario");		
	}
    
%>
