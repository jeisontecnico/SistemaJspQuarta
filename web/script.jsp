       
    <!-- Datatables -->
<script src="js/jquery.dataTables.min.js"></script>

<script src='js/pdfmake.min.js'></script>
  <script src='js/vfs_fonts.js'></script>
  
  <script src='https://code.jquery.com/jquery-3.3.1.js'></script>
<script src='https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js'></script>
<script src='https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js'></script>

<script type="text/javascript">
        $(document).ready( function() {
    $('#mytable').DataTable({
        dom: 'Bfrtip',
            buttons: [
        'pdf','copy','csv','excel','print'
    ]
});
});
    </script>
