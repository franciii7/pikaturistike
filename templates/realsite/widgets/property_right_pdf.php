<?php if(file_exists(APPPATH.'libraries/Pdf.php')) : ?>
<div class=" panel-sidebar-1">
      <div style="text-align:right;">
        <a class='btn btn-default' target="_blank" href='<?php echo site_url('api/pdf_export/'.$property_id.'/'.$lang_code) ;?>'><img src='assets/img/icons/filetype/pdf.png' height="20px"/>
            <span style="vertical-align: middle;"><?php echo _l('PDF export');?> </span>
        </a>
    </div>
</div>
<?php endif;?>