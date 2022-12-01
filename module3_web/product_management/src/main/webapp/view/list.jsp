<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 01/12/2022
  Time: 11:13 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Danh Sách</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<a href="/product?action=create">Thêm mới</a>
<table>
    <tr>
        <th>STT</th>
        <th>Tên Sản Phẩm</th>
        <th>Giá Sản Phẩm</th>
        <th>Mô Tả</th>
        <th>Hãng Sản Xuất</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>

    <c:forEach var="product" items="${listProduct}" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.brand}</td>
            <td><a href="${pageContext.request.contextPath}/product?action=update&id=${product.id}">Update</a></td>
            <td><a href="${pageContext.request.contextPath}/product?action=delete&id=${product.id}">Delete</a></td>

        </tr>
    </c:forEach>

</table>
</body>
</html>
