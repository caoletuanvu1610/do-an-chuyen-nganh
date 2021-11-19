<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <title>Thêm sản phẩm</title>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-sm-4">
                <form method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="exampleInputPassword1">Loại</label>
                        <select class="form-control" name="maloai">
                            <?php
                            foreach ($dstenloai as $item) {
                            ?>
                                <option value="<?php echo $item->maloai ?>">
                                    <?php echo $item->tenloai?>
                                </option>
                            <?php
                            }
                            ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Tên Sản</label>
                        <input type="text" class="form-control" name="tensp">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Giá</label>
                        <input type="text" class="form-control" name="gia" >
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Hình</label>
                        <input type="file" name="Th_file" />
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Tên Hảng Sản Xuất</label>
                        <input type="text" class="form-control" name="tennsx">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Loại Màn Hình</label>
                        <input type="text" class="form-control" name="loaimanhinh">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Hệ Điều Hành</label>
                        <select class="form-control" name="hedieuhanh">
                            <option>Win 10</option>
                            <option>Android</option>
                            <option>IOS</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Ram</label>
                        <select class="form-control" name="ram">
                            <option>4 GB </option>
                            <option>8 GB</option>
                            <option>12 GB</option>
                            <option>16 GB</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Pin</label>
                        <select class="form-control" name="pin">
                            <option>3000 mAh </option>
                            <option>3600 mAh</option>
                            <option>4000 mAh</option>
                            <option>4600 mAh</option>
                            <option>Lion </option>
                        </select>
                    </div>
                    <button type="submit" name="btn_Them" class="btn btn-primary">Thêm Sản Phẩm</button>
                </form>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    -->
</body>

</html>