<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
    <!doctype html>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="db.ConexionDB"%>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../styles/bootstrap.min.css" rel="stylesheet">
        </link>
        <link href="../styles/styles.css" rel="stylesheet">
        </link>

        <title>Final Codo a Codo</title>
    </head>

    <body>
        <header class="fixed-top bg-navbar" data-bs-theme="dark">
            <div class="container">
                <nav class="navbar navbar-expand-lg py-0">
                    <div class="container-fluid p-0">
                        <a class="navbar-brand text-bolder d-flex align-items-center" href="#">
                            <img src="../images/codoacodo.png"
                                class="animate__animated animate__flipInX logo-codo-a-codo" width="100" alt="...">
                            <h1 class="fs-5 display-inline-block text-white fw-normal">Conf Bs As</h1>
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavDropdown">
                            <ul class="navbar-nav ms-auto">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="index.html#inicio">La
                                        conferencia</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="index.html#oradores">Los oradores</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="index.html#lugar-fecha">El lugar y la fecha</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="index.html#conviertete">Conviertete en orador</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link comprar-ticket" href="compras.jsp">Comprar tickets</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link comprar-ticket" href="carrito.jsp">Carrito</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>

        </header>
        <div class="container">
            <table class="table" style="margin-top: 110px;">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">Cantidad</th>
                        <th scope="col">Categoria</th>
                        <th scope="col">Precio</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        
                        ConexionDB conex=new ConexionDB(); 
                        
                        Statement st=conex.conectar();
                        
                        ResultSet rs=st.executeQuery("SELECT * FROM codon");

                        while(rs.next()) { 
                            
                        out.println("<tr>");
                            
                        out.println("<th scope='row'>");
                        out.println(rs.getInt("id"));
                        out.println("</th>");

                        out.println("<td>");
                        out.println(rs.getString("nombre"));
                        out.println("</td>");

                        out.println("<td>");
                        out.println(rs.getString("apellido"));
                        out.println("</td>");
                        
                        out.println("<td>");
                        out.println(rs.getString("cantidad"));
                        out.println("</td>");
                        
                        out.println("<td>");
                        out.println(rs.getString("categoria"));
                        out.println("</td>");
                        
                        out.println("<td>");
                        out.println(rs.getString("precio"));
                        out.println("</td>");

                        out.println("</tr>");

                        }

                    %>
                </tbody>
            </table>
        </div>

        <div id="conviertete" class="bg-footer-2 py-2">
            <div class="container-footer">
                <ul class="nav justify-content-center align-items-center nav-pills nav-fill">
                    <li class="nav-item"><a href="#" class="nav-link text-white fs-6-5">
                            <div>Preguntas</div>
                            <div>Preguntas</div>
                        </a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white fs-6-5">Contáctanos</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white fs-6-5">Prensa</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white fs-6-5">conferencia</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white fs-6-5">
                            <div>Términos y</div>
                            <div>condiciones</div>
                        </a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white fs-6-5">Privacidad</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white fs-6-5">Estudiantes</a></li>
                </ul>
            </div>
        </div>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/compras.js"></script>
    </body>

    </html>