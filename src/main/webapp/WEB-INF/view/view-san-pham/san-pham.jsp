<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>QUAN_LY_SAN_PHAM</title>
    <link rel="stylesheet" href=".././css/custom/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<header>
    <div class="container">
        <div class="tieuDe">
            <br>
            <h3 style="text-align: center">QUAN_LY_SAN_PHAM</h3>
            <br>
            <hr>
        </div>
    </div>
</header>
<section>
    <div class="container">
        <div class="row">
            <div class="col-3">

            </div>
            <div class="col-6">
                <form method="post" action="/view-san-pham/add" enctype="multipart/form-data">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="ma" value="${sanPham.ma}">
                        <label>MA</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="ten" value="${sanPham.ten}">
                        <label>TEN</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="anh" value="${sanPham.anh}" disabled>
                        <label>TEN_ANH</label>
                    </div>
                    <div class="input-group mb-3">
                        <input type="file" class="form-control" name="images" accept="image/jpeg, image/png">
                        <label class="input-group-text">UPLOAD IMG</label>
                    </div>
                    <br>
                    <hr>
                    <button type="submit" class="btn btn-success">ADD</button>
                    <br>
                    <hr>
                </form>
            </div>
            <div class="col-3">

            </div>
        </div>
        <br>
        <hr>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">ANH</th>
                <th scope="col">ID</th>
                <th scope="col">MA</th>
                <th scope="col">TEN</th>
                <th scope="col">ACTION</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${listSanPhams}" var="sanPham">
                <tr>
                    <td align="center">
                        <img src="/uploads/${sanPham.anh}" width="40" height="40">
                    </td>
                    <td>${sanPham.id}</td>
                    <td>${sanPham.ma}</td>
                    <td>${sanPham.ten}</td>
                    <td>
                        <a href="/view-san-pham/detail/${sanPham.id}" class="btn btn-success">DETAIL</a>
                        <a href="/view-san-pham/view-update/${sanPham.id}" class="btn btn-warning">UPDATE</a>
                        <a href="/view-san-pham/delete/${sanPham.id}" class="btn btn-danger">DELETE</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>
<footer>

</footer>
<script>
    var message = "${message}";
    if (message) {
        alert(message);
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
        integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"
        integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ"
        crossorigin="anonymous"></script>
</body>
</html>