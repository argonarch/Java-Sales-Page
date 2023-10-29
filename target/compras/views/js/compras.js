var boton_borrar = document.getElementById('borrar_boton');
var boton_resumen = document.getElementById('resumen_boton');
var total_pagar = document.getElementById('total_pagar');
var nombre, apellido, correo, cantidad, categoria

// Agregar un evento onclick al botón
boton_borrar.onclick = function () {
    resetear();
    console.log('borrado');
};

boton_resumen.onclick = function () {
    var categorias = {
        "Estudiante": 0.80,
        "Trainee": 0.50,
        "Junior": 0.15
    };
    nombre = document.getElementById('nombre_compra').value;
    apellido = document.getElementById('apellido_compra').value;
    correo = document.getElementById('correo_compra').value;
    cantidad = document.getElementById('cantidad_compra').value;
    categoria = document.getElementById('categoria_compra').value;
    var pre_precio = 200 * parseInt(cantidad)
    var precio_total = pre_precio - pre_precio * categorias[categoria];
    if (cantidad == ""){
        total_pagar.textContent = "Total a Pagar: $"
    } else {
        total_pagar.textContent = "Total a Pagar: $" + precio_total
    };
};

function resetear(){
    document.getElementById('nombre_compra').value = "";
    document.getElementById('apellido_compra').value = "";
    document.getElementById('correo_compra').value = "";
    document.getElementById('cantidad_compra').value = "";
    document.getElementById('categoria_compra').value = "Estudiante";
    total_pagar.textContent = "Total a Pagar: $"
};