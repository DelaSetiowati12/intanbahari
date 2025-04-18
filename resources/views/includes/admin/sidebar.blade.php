<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{ route('dashboard') }}">
      <div class="sidebar-brand-icon">Intan Bahari</div><i class="fas fa-map-marked"></i>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
      <a class="nav-link" href="{{ route('dashboard') }}">
        <i class="fas fa-fw fa-tachometer-alt"></i>
        <span>Dashboard</span></a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="{{ route('travel-package.index') }}">
          <i class="fas fa-ticket-alt"></i>
          <span>Data Tiket</span></a>
      </li>
    
      <li class="nav-item">
        <a class="nav-link" href="{{ route('gallery.index') }}">
         <i class="fas fa-photo-video"></i>
          <span>Galeri Wisata</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="{{ route('transaction.index') }}">
         <i class="fas fa-exchange-alt"></i>
          <span>Data Transaksi</span></a>
      </li>

    <hr class="sidebar-divider">


    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
      <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

  </ul>
  <!-- End of Sidebar -->