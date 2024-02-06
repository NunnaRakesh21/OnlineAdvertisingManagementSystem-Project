<!DOCTYPE html>
<html lang="en">

<head>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }

        h3 {
            text-align: center;
            text-decoration: underline;
            color: #007BFF;
        }

        form {
            background-color: #fff;
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        select,
        input[type="text"],
        textarea,
        input.larger-input { /* Added 'input.larger-input' to apply styles to the Price field */
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        select {
            background-color: #f8f8f8;
        }

        input[type="file"] {
            background-color: #f8f8f8;
        }

        .button {
            background-color: #007BFF;
            border: none;
            color: #fff;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        .blink {
            animation: blink 1s steps(1, end) infinite;
        }

        @keyframes blink {
            0% {
                opacity: 1;
            }
            50% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
    </style>
</head>

<body>
    <%@ include file="adminnavbar.jsp" %>
    <br><br><br><br>
    <span class="blink">
        <h3 align="center" style="color:red">${ message}</h3>
    </span>
    <h3 style="text-align: center; background-color: green; color: #fff; padding: 10px;">Add Product</h3>

    <form action="insertproduct" method="post" enctype="multipart/form-data">

        <table align="center">

            <tr>
                <td><label>Category</label></td>
                <td>
                    <select name="category" required="required">
                        <option value="">---Select---</option>
                        <option value="Mobile">Mobiles</option>
                        <option value="Laptop">Laptops</option>
                        <option value="Watch">Watches</option>
                        <option value="Headphone">Headphones</option>
                        <option value="Camera">Cameras</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td><label>Name</label></td>
                <td><input type="text" name="name" required="required" /></td>
            </tr>

            <tr>
                <td><label>Price</label></td>
                <td><input type="number" name="price" required="required" step="0.01" class="larger-input" /></td>
            </tr>

            <tr>
                <td><label>Description</label></td>
                <td>
                    <textarea name="description"></textarea>
                </td>
            </tr>

            <tr>
                <td><label>Image</label></td>
                <td><input type="file" name="productimage" required="required" /></td>
            </tr>

            <tr>
                <td colspan="2"><input type="submit" value="Add" class="button" /></td>
            </tr>

        </table>

    </form>

</body>

</html>
