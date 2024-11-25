<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Listado de Alumnos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: white;
            text-transform: uppercase;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .actions a {
            margin-right: 10px;
            color: #007bff;
            font-weight: bold;
        }
        .actions a:hover {
            color: #0056b3;
        }
        .add-button {
            display: inline-block;
            padding: 10px 15px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            margin-bottom: 10px;
        }
        .add-button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <a class="add-button" href="${pageContext.request.contextPath}/alumnos/formulario">Agregar Nuevo Alumno</a>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Email</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="alumno" items="${alumnos}">
                <tr>
                    <td>${alumno.id}</td>
                    <td>${alumno.nombre}</td>
                    <td>${alumno.apellido}</td>
                    <td>${alumno.email}</td>
                    <td class="actions">
                        <a href="/appAlumnos/alumnos/editar/${alumno.id}">Editar</a>
                        <a href="/appAlumnos/alumnos/eliminar/${alumno.id}">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
