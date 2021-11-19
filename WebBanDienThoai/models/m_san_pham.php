<?php

include_once("models/database.php");
class M_San_Pham extends database
{

  function Doc_cac_san_pham()
  {
    $database = new database();
    $chuoiSQL = 'SELECT *from sanpham';
    $database->setQuery($chuoiSQL);
    return $database->loadAllRows();
  }

  function Doc_san_pham_theo_ma_san_pham($masp)
  {
    $database = new database();
    $chuoiSQL = 'SELECT * FROM sanpham where  masp = ?';
    $database->setQuery($chuoiSQL);
    return $database->loadRow(array($masp));
  }

  function Doc_san_pham_theo_loai_san_pham($masp)
  {
    $database = new database();
    $chuoiSQL = 'SELECT * FROM sanpham where  maloai = ?';
    $database->setQuery($chuoiSQL);
    return $database->loadRow(array($masp));
  }
  function Doc_san_pham_lien_quan($maloai, $masp)
  {
    $database = new database();
    $chuoiSQL = 'SELECT * FROM sanpham where maloai = ? and masp != ?';
    $database->setQuery($chuoiSQL);
    return $database->loadAllRows(array($maloai, $masp));
  }

  function Doc_cac_banner()
  {
    $database = new database();
    $chuoiSQL = 'SELECT *from banner';
    $database->setQuery($chuoiSQL);
    return $database->loadAllRows();
  }
  function Doc_cac_loai_san_pham()
  {
    $database = new database();
    $chuoiSQL = 'SELECT *from loaisp';
    $database->setQuery($chuoiSQL);
    return $database->loadAllRows();
  }
  function Doc_cac_theo_ma_loai_san_pham($maloai)
  {
    $database = new database();
    $chuoiSQL = 'SELECT *from loaisp where maloai = ?';
    $database->setQuery($chuoiSQL);
    return $database->loadRow(array($maloai));
  }

  function Danh_sach_san_pham_theo_loai($maloai)
  {
    $database = new database();
    $chuoiSQL = 'SELECT *from sanpham where maloai=?';
    $database->setQuery($chuoiSQL);
    return $database->loadAllRows(array($maloai));
  }

  function doc_danh_sach_theo_gia_tri_tim($gia_tri_tim)
  {
    $database = new database();
    $gt = "'%" . $gia_tri_tim . "%'";
    $chuoiSQL = "SELECT *From sanpham where tensp like $gt";
    $database->setQuery($chuoiSQL);
    return $database->loadAllRows();
  }

  function Them_san_pham($maloai, $tensp, $gia, $hinh, $tennsx, $loaimanhinh, $hedieuhanh, $ram, $pin)
  {
    $database = new database();
    $chuoiSQL = 'INSERT into sanpham(`maloai`,`tensp`, `gia`, `hinh`, `hang`, `manhinh`, `hedieuhanh`, `ram`, `pin`) VALUES(?,?,?,?,?,?,?,?,?)';
    $database->setQuery($chuoiSQL);
    $database->execute(array($maloai, $tensp, $gia, $hinh, $tennsx, $loaimanhinh, $hedieuhanh, $ram, $pin));
    return $database->getLastId();
  }
  function Sua_san_pham($maloai, $tensp, $gia, $hinh, $tennsx, $loaimanhinh, $hedieuhanh, $ram, $pin)
  { 
    $database = new database();
   // $chuoiSQL = 'UPDATE sanpham set maloai=?,tensp=?,gia=?,hinh=?,hang=?,manhinh=?,hedieuhanh=?,ram=?,pin=? WHERE masp=?';
   $chuoiSQL = 'UPDATE sanpham set `maloai`,`tensp`, `gia`, `hinh`, `hang`, `manhinh`, `hedieuhanh`, `ram`, `pin`Where masp=?';
    $database->setQuery($chuoiSQL);
    $database->execute(array($maloai, $tensp, $gia, $hinh, $tennsx, $loaimanhinh, $hedieuhanh, $ram, $pin));
    return $database->getLastId(array($maloai, $tensp, $gia, $hinh, $tennsx, $loaimanhinh, $hedieuhanh, $ram, $pin));
  }
  function Xoa_san_pham($masp)
  {
    $database = new database();
    $chuoiSQL = 'DELETE FROM sanpham where masp=?';
    $database->setQuery($chuoiSQL);
    return $database->loadRow(array($masp));
  }
}
