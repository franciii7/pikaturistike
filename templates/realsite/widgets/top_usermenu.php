        {not_logged}
        <ul class="breadcrumb">
          <li><span><i class="icon-phone icon-white"></i> {settings_phone}</span></li>
          <li><a href="mailto:{settings_email}"><i class="icon-envelope icon-white"></i> {settings_email}</a></li>
          <?php if(config_db_item('property_subm_disabled')==FALSE):  ?>
          <li class="hidden-sm hidden-xs"><a href="{front_login_url}"><i class="icon-user icon-white"></i> {lang_Login}</a></li>
          <?php endif;?>
        </ul>
        {/not_logged}
        {is_logged_user}
        <ul class="breadcrumb">
        <?php if(file_exists(APPPATH.'controllers/admin/booking.php')):?>
          <li><a href="{myreservations_url}#content"><i class="icon-shopping-cart icon-white"></i> {lang_Myreservations}</a></li>
        <?php endif; ?>
          <li><a href="{myproperties_url}#content"><i class="icon-list icon-white"></i> {lang_Myproperties}</a></li>
        <?php if(file_exists(APPPATH.'controllers/admin/savesearch.php')): ?>
          <li><a href="{myresearch_url}#content"><i class="icon-filter icon-white"></i> {lang_Myresearch}</a></li>  
        <?php endif; ?>
        <?php if(file_exists(APPPATH.'controllers/admin/favorites.php')):?>
          <li><a href="{myfavorites_url}#content"><i class="icon-star icon-white"></i> {lang_Myfavorites}</a></li>
        <?php endif; ?>
          <li><a href="<?php _che($mymessages_url); ?>#content"><i class="icon-envelope icon-white"></i> <?php _l('My messages'); ?></a></li>
          <li class="hidden-sm hidden-xs"><a href="{myprofile_url}"><i class="icon-user icon-white"></i> {lang_Myprofile}</a></li>
          <li><a href="{logout_url}"><i class="icon-off icon-white"></i> {lang_Logout}</a></li>
        </ul>
        {/is_logged_user}
        {is_logged_other}
        <ul class="breadcrumb">
          <li><a href="{login_url}"><i class="icon-wrench icon-white"></i> {lang_Admininterface}</a></li>
        <?php if(isset($page_edit_url)&&!empty($page_edit_url)&&$this->session->userdata('type') != 'ADMINISTRATOR BASHKIE' && $this->session->userdata('PUNONJES BASHKIE')):?>
            <li><a href="{page_edit_url}"><i class="icon-edit icon-white"></i> <?php echo _l('edit page');?></a></li>
        <?php endif;?>
        <?php if(isset($category_edit_url)&&!empty($category_edit_url)) :?>
            <li><a href="{category_edit_url}"><i class="icon-edit icon-white"></i> <?php echo _l('edit category');?></a></li>
        <?php endif;?>
          <li><a href="{logout_url}"><i class="icon-off icon-white"></i> {lang_Logout}</a></li>
        </ul>
        {/is_logged_other}