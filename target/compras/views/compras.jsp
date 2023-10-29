<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
    <html>

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
                                    <a class="nav-link comprar-ticket" href="buy.html">Comprar tickets</a>
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
        <div class="row container-cards mb-2 gap-2" style="margin-top: 110px;">
            <div class="card border-primary  rounded-0 col-md" style="min-height: 270px;">
                <div class="card-body text-center">
                    <h4 class="card-text fw-bold my-4">Estudiante</h4>
                    <h5 class="card-text">Tienen un descuento</h5>
                    <h5 class="card-text fw-bold my-4">80%</h5>
                    <p class="card-text text-body-secondary">* presentar documentación</p>
                </div>
            </div>
            <div class="card border-secondary  rounded-0 col-md">
                <div class="card-body text-center">
                    <h4 class="card-text fw-bold my-4">Trainee</h4>
                    <h5 class="card-text">Tienen un descuento</h5>
                    <h5 class="card-text fw-bold my-4">50%</h5>
                    <p class="card-text text-body-secondary">* presentar documentación</p>
                </div>
            </div>
            <div class="card border-warning rounded-0 col-md">
                <div class="card-body text-center">
                    <h4 class="card-text fw-bold my-4">Junior</h4>
                    <h5 class="card-text">Tienen un descuento</h5>
                    <h5 class="card-text fw-bold my-4">15%</h5>
                    <p class="card-text text-body-secondary">* presentar documentación</p>
                </div>
            </div>
        </div>
        <form class="container-form mb-4" action="../controller/send_SQL.jsp">
            <div class="d-flex align-items-center flex-column mt-4 mb-1">
                <div class="text-uppercase fs-6 fw-normal">VENTA</div>
                <div class="text-uppercase fs-1 fw-semibold">VALOR DE TICKET $200</div>
            </div>
            <div class="row g-2 mb-3 mt-2">
                <div class="col-md">
                    <input type="name" class="form-control shadow-none" id="nombre_compra" name="nombre_compra"
                        placeholder="Nombre">
                </div>
                <div class="col-md">
                    <input type="apellido" class="form-control shadow-none" id="apellido_compra" name="apellido_compra"
                        placeholder="Apellido">
                </div>
            </div>
            <div class="mb-3">
                <input type="email" class="form-control shadow-none" id="correo_compra" name="correo_compra"
                    placeholder="Correo">
            </div>
            <div class="row g-2 mb-3 mt-1">
                <div class="col-md">
                    <label class="form-label">Cantidad</label>
                    <input type="cantidad" class="form-control" placeholder="Cantidad" name="cantidad_compra"
                        id="cantidad_compra">
                </div>
                <div class="col-md">

                    <label class="form-label">Categoria</label>
                    <select id="categoria_compra" name="categoria_compra" class="form-select">
                        <option selected>Estudiante</option>
                        <option>Trainee</option>
                        <option>Junior</option>
                    </select>

                </div>
            </div>
            <div class="alert alert-info mt-4 mb-4" role="alert" id="total_pagar">
                Total a Pagar: $
            </div>
            <div class="row g-2 mt-3">
                <input type="button" class="btn btn-primary color-verde-claro border-0 col-md m-1" id="borrar_boton"
                    value="Borrar"></input>
                <input type="button" class="btn btn-primary color-verde-claro border-0 col-md m-1" id="resumen_boton"
                    value="Resumen"></input>
                <input type="submit" name="boton" class="btn btn-primary color-verde-claro border-0 col-md m-1"
                    value="Comprar"></input>
            </div>
        </form>
        <div>
            <% 
				String mensaje=request.getParameter("mensaje");
				if(mensaje!=null) {
					out.println("<div class='bg-danger text-center p-1 rounded'>");
					out.println(mensaje);
					out.println("</div>");
				}	
			%>	
        </div>
        <div id="conviertete" class="bg-footer py-2">
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