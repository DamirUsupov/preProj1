<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>

<html>

<head>
    <title>Users</title>
    <style type="text/css">
        .formSize {
            height: 5px;
            width: 90px;
        }

        #left {
            position: absolute;
            left: 0;
            top: 0;
            width: 10%;
        }

        #right {
            position: absolute;
            right: 0;
            top: 0;
            width: 90%;
        }
        p{
            padding-left: 10px;
        }

    </style>
</head>
<body>
<div id="left">
    <form method="post">
        <p><label>Email</label>
        <p><input name="email">
        <p><label>Name</label>
        <p><input name="name">
        <p><label>Password</label>
        <p><input name="pass">
        <p><button href="/reg" name="reg" value="1">Register</button>
    </form>
</div>

<div id="right">
    <form id="usersTable">
        <table border='1'>
            <tr>
                <td>Id</td>
                <td>Email</td>
                <td>Name</td>
                <td>Pass</td>
            </tr>

            <c:forEach var="user" items="${users}" varStatus="st">
                <tr>

                    <td> ${user.id} </td>
                    <td> ${user.email} </td>
                    <td> ${user.name} </td>
                    <td> ${user.pass} </td>

                    <td>
                        <form method="post" action="delete/" class="formSize">
                            <button name="id" value="${user.id}">Delete user</button>
                        </form>
                    </td>

                    <td>
                        <form method="get" action="update" class="formSize">
                            <button name="id" value="${user.id}">Update user</button>
                        </form>
                    </td>

                </tr>
            </c:forEach>
        </table>

    </form>
</div>


</body>
</html>
