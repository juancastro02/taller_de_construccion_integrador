<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Formulario Alumno</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: auto;
        }
        h1 {
            text-align: center;
            color: #343a40;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            color: #495057;
        }
        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>${alumno.id != null ? "Editar Alumno" : "Nuevo Alumno"}</h1>
    <form action="/appAlumnos/alumnos/guardar" method="post">
        <input type="hidden" name="id" value="${alumno.id}" />
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" value="${alumno.nombre}" required />
        
        <label for="apellido">Apellido:</label>
        <input type="text" id="apellido" name="apellido" value="${alumno.apellido}" required />
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${alumno.email}" required />
        
        <button type="submit">Guardar</button>
    </form>
</body>
</html>
