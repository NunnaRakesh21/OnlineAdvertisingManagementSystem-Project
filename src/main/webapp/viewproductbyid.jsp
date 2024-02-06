<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Customer</title>
    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
        }

        .navbar {
            background-color: #000;
            border-radius: 30px;
            padding: 15px;
            text-align: center;
        }

        .navbar ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .navbar li {
            display: inline;
            margin: 0 20px;
        }

        .navbar li a {
            text-decoration: none;
            color: white;
            font-weight: bold;
        }

        .navbar li a:hover {
            color: red;
        }

        .search {
            float: right;
            color: white;
            padding: 12px 20px;
        }

        .navbar input {
            border: 2px solid #000;
            border-radius: 14px;
            padding: 10px 20px;
            width: 100%;
            max-width: 250px;
            font-size: 16px;
        }

        .button {
            background-color: #000;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 14px;
            cursor: pointer;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        label {
            padding: 12px 12px 12px 0;
            display: inline-block;
            font-weight: bold;
        }

        table {
            margin: 0 auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        table tr td {
            padding: 10px;
        }
    </style>
</head>

<body>
    <%@ include file="customernavbar.jsp" %>
    <br><br><br><br>
    <h3 style="text-align: center; background-color: light-blue; color: maroon; padding: 10px;">View Product By Id</h3>
    <form:form method="post" action="displayproduct">
        <table>
            <tr>
                <td>
                    <label for="pid">Select ID:</label>
                </td>
                <td>
                    <select name="pid" required>
                        <option value="">---Select---</option>
                        <c:forEach items="${productlist}" var="product">
                            <option value="${product.id}">${product.id}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="View" class="button">
                </td>
            </tr>
        </table>
    </form:form>
</body>

</html>
