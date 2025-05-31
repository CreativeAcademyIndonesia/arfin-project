@include('layouts.header')
@include('layouts.navbar')
@include('layouts.sidebarmenu')

{{-- sidebar-collapse --}}
<body class="hold-transition sidebar-mini">
  <div class="content-wrapper">
    <div class="row justify-content-center loadingme" style="display: none">
        <div class="container" style="text-align: center;">
            <img src="{{ asset('img/loading-ico2.gif') }}" style="width: 115px;margin-top: 18%;"><br>
        </div>
    </div>
    <div class = "form-content">

    </div>
  </div>
  <input class="roleme" type = "hidden" value="<?php echo Session::get('karyawan_role'); ?>">

  <footer class="main-footer">
    <strong> 
    <b>Yayasan wahdah Islamiyah Bulukumba
    
    <div class="float-right d-none d-sm-inline-block">
      <p style = "    font-weight: normal;
    font-size: 12px;">Jalan Tuing-tuing, Kelurahan Ela-ela</p>
    </div>
  </footer>
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>



@include('layouts.footer')
<script>
    $(document).ready(function () {
        if($('.roleme').val() == 'Admin') {
            getcontent_dashboard("nav-dashboard");
        } else {
            getcontent_peminjaman('nav-peminjaman');
        }

    });
</script>
