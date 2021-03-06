 <?php defined('BASEPATH') or exit('No direct script access allowed'); ?>



 <?php $this->load->view('include/header'); ?>



 <!-- Morris chart -->

 <link rel="stylesheet" href="<?= base_url('public') ?>/components/morris.js/morris.css">

 <!-- jvectormap -->

 <link rel="stylesheet" href="<?= base_url('public') ?>/components/jvectormap/jquery-jvectormap.css">

 <!-- Date Picker -->

 <link rel="stylesheet" href="<?= base_url('public') ?>/components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">

 <!-- Daterange picker -->

 <link rel="stylesheet" href="<?= base_url('public') ?>/components/bootstrap-daterangepicker/daterangepicker.css">

 <!-- bootstrap wysihtml5 - text editor -->

 <link rel="stylesheet" href="<?= base_url('public') ?>/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">



 </head>

 <body class="hold-transition skin-blue sidebar-mini">

   <div class="wrapper">



     <?php $this->load->view('include/topbar'); ?>

     <!-- Left side column. contains the logo and sidebar -->

     <?php $this->load->view('include/sidebar'); ?>



     <!-- Content Wrapper. Contains page content -->

     <div class="content-wrapper">

       <!-- Content Header (Page header) -->

       <section class="content-header">

         <h1>

           Dashboard

           <small>Control panel</small>

         </h1>

         <ol class="breadcrumb">

           <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>

           <li class="active">Dashboard</li>

         </ol>

       </section>



       <!-- Main content -->

       <section class="content">

         <!-- Small boxes (Stat box) -->

         <div class="row">

           <div class="col-lg-3 col-xs-6">

             <!-- small box -->

             <div class="small-box bg-aqua">

               <div class="inner">

                 <h3><?= $orders; ?></h3>



                 <p>Pesanan</p>

               </div>

               <div class="icon">

                 <i class="ion ion-bag"></i>

               </div>

               <a href="<?= base_url('v3/order-list'); ?>" class="small-box-footer">Lihat Detail <i class="fa fa-arrow-circle-right"></i></a>

             </div>

           </div>



           <div class="col-lg-3 col-xs-6">

             <!-- small box -->

             <div class="small-box bg-yellow">

               <div class="inner">

                 <h3><?= $members; ?></h3>



                 <p>Daftar Member</p>

               </div>

               <div class="icon">

                 <i class="ion ion-person-add"></i>

               </div>

               <a href="<?= base_url('v3/customer-list'); ?>" class="small-box-footer">Lihat Detail <i class="fa fa-arrow-circle-right"></i></a>

             </div>

           </div>







           <!-- ./col -->

         </div>

         <!-- /.row -->

         <!-- Main row -->



         <!-- /.row (main row) -->



       </section>

       <!-- /.content -->

     </div>

     <!-- /.content-wrapper -->



     <?php $this->load->view('include/footer'); ?>



     <script src="<?= base_url('public') ?>/components/Flot/jquery.flot.js"></script>

     <!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->

     <script src="<?= base_url('public') ?>/components/Flot/jquery.flot.resize.js"></script>

     <!-- FLOT PIE PLUGIN - also used to draw donut charts -->

     <script src="<?= base_url('public') ?>/components/Flot/jquery.flot.pie.js"></script>

     <!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->

     <script src="<?= base_url('public') ?>/components/Flot/jquery.flot.categories.js"></script>

     <script>
       /*

     * BAR CHART

     * ---------

     */



       var bar_data = {

         data: [

           ['January', 10],

           ['February', 50],

           ['March', 4],

           ['April', 13],

           ['May', 17],

           ['June', 9],

           ['July', 50],

           ['August', 0],

           ['September', 0],

           ['October', 40],

           ['November', 0],

           ['December', 0]

         ],

         color: '#3c8dbc'

       }

       $.plot('#bar-chart', [bar_data], {

         grid: {

           borderWidth: 1,

           borderColor: '#f3f3f3',

           tickColor: '#f3f3f3'

         },

         series: {

           bars: {

             show: true,

             barWidth: 0.5,

             align: 'center'

           }

         },

         xaxis: {

           mode: 'categories',

           tickLength: 0

         }

       })

       /* END BAR CHART */
     </script>

     <!-- jQuery UI 1.11.4 -->

     <script src="<?= base_url('public') ?>/components/jquery-ui/jquery-ui.min.js"></script>

     <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->

     <script>
       $.widget.bridge('uibutton', $.ui.button);
     </script>













     <!-- AdminLTE for demo purposes -->

 </body>

 </html>