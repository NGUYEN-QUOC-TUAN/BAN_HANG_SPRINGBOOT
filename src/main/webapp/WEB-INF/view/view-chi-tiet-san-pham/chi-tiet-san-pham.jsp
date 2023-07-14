<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CHI_TIET_SAN_PHAM</title>
    <link rel="stylesheet" href=".././css/custom/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<header>
    <div class="container">
        <div class="tieuDe">
            <br>
            <h3 style="text-align: center">CHI_TIET_SAN_PHAM</h3>
            <br>
            <hr>
        </div>
    </div>
</header>
<section>
    <div class="container">
        <form method="post" action="/view-chi-tiet-san-pham/add">
            <div class="row">
                <div class="col-4">
                    <div class="form-floating mb-3">
                        <select class="form-select" name="sanPham">
                            <option value="NULL" selected>CHON_SAN_PHAM</option>
                            <c:forEach items="${listSanPhams}" var="sanPham">
                                <option value="${sanPham.id}">${sanPham.ten}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-floating mb-3">
                        <select class="form-select" name="nhaSanXuat">
                            <option value="NULL" selected>CHON_NHA_SAN_XUAT</option>
                            <c:forEach items="${listNhaSanXuats}" var="nhaSanXuat">
                                <option value="${nhaSanXuat.id}">${nhaSanXuat.ten}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-floating mb-3">
                        <select class="form-select" selected name="mauSac">
                            <option value="NULL">CHON_MAU_SAC</option>
                            <c:forEach items="${listMauSacs}" var="mauSac">
                                <option value="${mauSac.id}">${mauSac.ten}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-floating mb-3">
                        <select class="form-select" name="dongSanPham">
                            <option value="NULL" selected>CHON_DONG_SAN_PHAM</option>
                            <c:forEach items="${listDongSanPhams}" var="dongSanPham">
                                <option value="${dongSanPham.id}">${dongSanPham.ten}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="col-4">
                    <div class="form-floating mb-3">
                        <select class="form-select" name="boNho">
                            <option value="NULL" selected>CHON_BO_NHO</option>
                            <c:forEach items="${listBoNhos}" var="boNho">
                                <option value="${boNho.id}">${boNho.ten}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="number" class="form-control" name="giaNhap">
                        <label>GIA_NHAP</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="number" class="form-control" name="giaBan">
                        <label>GIA_BAN</label>
                    </div>
                    <br>
                    <hr>
                    <button type="submit" class="btn btn-success">ADD</button>
                    <br>
                    <hr>
                </div>
                <div class="col-4">
                    <div class="form-floating mb-3">
                        <input type="number" class="form-control" name="namBaoHanh">
                        <label>NAM_BAO_HANH</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="moTa">
                        <label>MO_TA</label>
                    </div>
                    <div class="form-floating mb-3">
                        <p>TRANG_THAI:</p>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="trangThai" value="1" checked>
                            <label class="form-check-label">CON_HANG</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="trangThai" value="2">
                            <label class="form-check-label">HET_HANG</label>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <br>
        <hr>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th scope="col">ANH_SP</th>
                <th scope="col">TEN_SP</th>
                <th scope="col">TEN_NSX</th>
                <th scope="col">TEN_MS</th>
                <th scope="col">TEN_DSP</th>
                <th scope="col">TEN_BN</th>
                <th scope="col">GIA_NHAP</th>
                <th scope="col">GIA_BAN</th>
                <th scope="col">NAM_BH</th>
                <th scope="col">TRANG_THAI</th>
                <th scope="col">ACTION</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${listChiTietSanPhams}" var="chiTietSanPham">
                <tr>
                    <td align="center">
                        <img src="/uploads/${chiTietSanPham.sanPham.anh}" width="40" height="40">
                    </td>
                    <td>${chiTietSanPham.sanPham.ten}</td>
                    <td>${chiTietSanPham.nhaSanXuat.ten}</td>
                    <td>${chiTietSanPham.mauSac.ten}</td>
                    <td>${chiTietSanPham.dongSanPham.ten}</td>
                    <td>${chiTietSanPham.boNho.ten}</td>
                    <td>${chiTietSanPham.giaNhap}</td>
                    <td>${chiTietSanPham.giaBan}</td>
                    <td>${chiTietSanPham.namBaoHanh}</td>
                    <td>${chiTietSanPham.moTa}</td>
                    <td>${chiTietSanPham.trangThai}</td>
                    <td>
                        <a href="/view-chi-tiet-san-pham/detail/${chiTietSanPham.id}" class="btn btn-success">DETAIL</a>
                        <a href="/view-chi-tiet-san-pham/view-update/${chiTietSanPham.id}" class="btn btn-warning">UPDATE</a>
                        <a href="/view-chi-tiet-san-pham/delete/${chiTietSanPham.id}" class="btn btn-danger">DELETE</a>
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