<?php

include('./models/m_san_pham.php');

class San_Pham
{

    public function Danh_sach_san_pham()
    {
        $ma_sp = new M_San_Pham();
        $gttim = '';
        if (isset($_POST['GTTim'])) {
            $gttim = $_POST['GTTim'];
            $dssp = $ma_sp->doc_danh_sach_theo_gia_tri_tim($gttim);

            echo "Số Sản phẩm tìm được là " . count($dssp);
        } else
            $dssp = $ma_sp->Doc_cac_san_pham();
        $dsbanner = $ma_sp->Doc_cac_banner();
        $dstenloai = $ma_sp->Doc_cac_loai_san_pham();


        include("./views/trang_chu/v_trang_chu.php");
    }

    public function chi_tiet_san_pham()
    {

        $m_sp = new M_San_Pham();
        $masanpham = $_GET['masp'];
        $sanpham = $m_sp->Doc_san_pham_theo_ma_san_pham($masanpham);
        $gttim = '';
        if (isset($_POST['GTTim'])) {
            $gttim = $_POST['GTTim'];
            $dssp_lien_quan = $m_sp->doc_danh_sach_theo_gia_tri_tim($gttim);
        } else
            $dssp_lien_quan = $m_sp->Doc_san_pham_lien_quan($sanpham->maloai, $masanpham);
        $dsbanner = $m_sp->Doc_cac_banner();
        //$dssp_lien_quan = $m_sp->Doc_san_pham_lien_quan($sanpham->maloai, $masanpham);
        $dstenloai = $m_sp->Doc_cac_loai_san_pham();

        include('./views/chitietsanpham/v_chi_tiet_san_pham.php');
    }

    public function Them_san_pham()
    {

        $m_san_pham = new M_San_Pham();
        
        if (isset($_POST['btn_Them'])) {
            $file = $_FILES['Th_file'];
            $arrType = array('image/png', 'image/jgp', 'image/gif', 'image/jpeg');
            if (array_search($file['type'], $arrType) !== false) {
                if ($file['size'] < 11000) {
                    move_uploaded_file($file['tmp_name'], 'images/san_pham/' . $file['name']);
                    $thong_bao = 'UpLoad Thanh Cong';
                } else $thong_bao = 'File co kich thuoc qua lon';
            } else
                $thong_bao = 'Chi Cho phep up file hinh anh';
              var_dump($file);
        
            $maloai = $_POST['maloai'];
            $tensp = $_POST['tensp'];
            $gia = $_POST['gia'];
           
            $tennsx = $_POST['tennsx'];
            $loaimanhinh = $_POST['loaimanhinh'];
            $hedieuhanh = $_POST['hedieuhanh'];
            $ram = $_POST['ram'];
            $pin = $_POST['pin'];
            $m_san_pham->Them_san_pham($maloai, $tensp, $gia, $file['name'], $tennsx, $loaimanhinh, $hedieuhanh, $ram, $pin);
          
        } else
            $dstenloai = $m_san_pham->Doc_cac_loai_san_pham();
        include('./views/themsanpham/v_them_san_pham.php');
    }


    public function sua_san_pham()
    {

        $m_san_pham = new M_San_Pham(); 
        $masanpham = $_GET['masp'];
        $sanpham = $m_san_pham->Doc_san_pham_theo_ma_san_pham($masanpham);
        $dstenloai = $m_san_pham->Doc_cac_loai_san_pham();

        if (isset($_POST['btn_Sua'])) {
            $file = $_FILES['Th_file'];
            $arrType = array('image/png', 'image/jgp', 'image/gif', 'image/jpeg');
            if (array_search($file['type'], $arrType) !== false) {
                if ($file['size'] < 11000) {
                    move_uploaded_file($file['tmp_name'], 'images/san_pham/' . $file['name']);
                    $thong_bao = 'UpLoad Thanh Cong';
                } else $thong_bao = 'File co kich thuoc qua lon';
            } else
                $thong_bao = 'Chi Cho phep up file hinh anh';
            
        
            $maloai = $_POST['maloai'];
            $tensp = $_POST['tensp'];
            $gia = $_POST['gia'];
            $tennsx = $_POST['tennsx'];
            $loaimanhinh = $_POST['loaimanhinh'];
            $hedieuhanh = $_POST['hedieuhanh'];
            $ram = $_POST['ram'];
            $pin = $_POST['pin'];
            $m_san_pham->Sua_san_pham($maloai, $tensp, $gia, $file['name'], $tennsx, $loaimanhinh, $hedieuhanh, $ram, $pin);
           
        } else
        $sanpham = $m_san_pham->Doc_san_pham_theo_ma_san_pham($masanpham);
        $dstenloai = $m_san_pham->Doc_cac_loai_san_pham();
        include('./views/themsanpham/v_sua_san_pham.php');
    }
    public function xoa_san_pham(){
        
        $m_san_pham = new M_San_Pham(); 
        $masanpham = $_GET['masp'];
        $ma_sp = new M_San_Pham();
        $gttim = '';
        if (isset($_POST['GTTim'])) {
            $gttim = $_POST['GTTim'];
            $dssp = $ma_sp->doc_danh_sach_theo_gia_tri_tim($gttim);

            echo "Số Sản phẩm tìm được là " . count($dssp);
        } else
            $dssp = $ma_sp->Doc_cac_san_pham();
        $dsbanner = $ma_sp->Doc_cac_banner();
        $dstenloai = $ma_sp->Doc_cac_loai_san_pham();
        $sanpham=$ma_sp->Xoa_san_pham($masanpham);
        include('./views/trang_chu/v_trang_chu.php');
    }
}
