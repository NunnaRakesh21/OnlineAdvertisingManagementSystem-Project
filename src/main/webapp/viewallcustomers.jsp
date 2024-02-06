<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="path/to/your-new.css"> <!-- Link to your new CSS file -->

    <style>
        /* Your new CSS styles go here */
        .card-container {
            max-width: 1000px; /* Set the maximum width for the container */
            margin: 0 auto; /* Center the container on the page */
        }

        .card {
            width: calc(33.33% - 20px); /* Set the width for each card */
            height: 300px;
            margin: 10px;
            border-radius: 20px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            float: left;
            background: #3498db;
            color: #fff;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }

        .card-header {
            background-color: #2980b9;
            padding: 10px;
            text-align: center;
        }

        .card-body {
            background-color: #3498db;
            padding: 10px;
        }

        .card-footer {
            background-color: #2980b9;
            padding: 10px;
            text-align: center;
        }

        .card a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
        }

        .card button {
            background-color: #e74c3c;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 10px;
            cursor: pointer;
        }

        .card button:hover {
            background-color: #c0392b;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>

    <br>
    <br>
    <br>
    <br>
    <br>
    <h3 style="text-align: center; background-color: green; color: #fff; padding: 10px;">View/Delete</h3>

    <div class="card-container">
        <div class="row">
            <c:forEach items="${custdata}" var="c">
                <div class="card">
                    <div class="card-header">
                        Customer Information
                    </div>
                    <div class="card-body">
                        <p>Name: ${c.firstname} ${c.lastname}</p>
                        <p>Email: ${c.email}</p>
                    </div>
                    <div class="card-footer">
                        <button><a href='<c:url value="view?id=${c.id}"></c:url>'><i class="fas fa-eye"></i> View</a></button>
                    </div>
                    <div class="card-footer">
                        <button onclick="confirmDelete('<c:url value='delete/${c.id}'></c:url>')">
                            <i class="fas fa-trash"></i> Delete
                        </button>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <script>
        function confirmDelete(deleteURL) {
            if (confirm("Are you sure you want to delete this customer?")) {
                window.location.href = deleteURL; // Proceed with the deletion if confirmed
            }
        }
    </script>
</body>
</html>
