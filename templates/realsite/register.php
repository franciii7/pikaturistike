<!doctype html>
<html>
<head>
    {template_head}
</head>

<body class="<?php _widget('custom_paletteclass'); ?>">
<?php _widget('custom_palette'); ?>
<div class="page-wrapper">
    <div class="header header-standard">
        <?php _widget('header_loginmenu');?>
        <?php _widget('header_mainmenu');?>
    </div><!-- /.header-->
    <div class="main" id="main">
        <div class="container" id='content'>
            <div id="main-inner">
                <!-- MAP -->
                <?php //_widget('top_map'); ?>
                <div id="content" class="container">
                    <!-- SLOGAN -->
                    <?php _widget('top_slogan'); ?>                
                    <div class="block-content block-content-small-padding">
                        <div class="row">
                            <div class="col-sm-12">
                                <?php //_widget('center_recentproperties'); ?>  
                                
      <!--  <?php //if(file_exists(APPPATH.'controllers/admin/packages.php')): ?>
        <div class="row-fluid">
            <div class="span12">
            <h2>{lang_AvailablePackages}</h2>
            <div class="property_content ">
                <div class="widget-content">
                    <?php //if($this->session->flashdata('error_package')):?>
                    <p class="alert alert-error"><?php //echo $this->session->flashdata('error_package')?></p>
                    <?php //endif;?>
                    <table class="table table-striped" style="margin-bottom: 0px;">
                      <thead>
                        <tr>
                        	<th>#</th>
                            <th><?php //echo lang_check('Package name');?></th>
                            <th><?php //echo lang_check('Price');?></th>
                            <th><?php //echo lang_check('Free property activation');?></th>
                            <th><?php //echo lang_check('Days limit');?></th>
                            <th><?php //echo lang_check('Listings limit');?></th>
                            <th><?php //echo lang_check('Free featured limit');?></th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php
                        //if(count($packages)): foreach($packages as $package):
                        ?>
                                    <tr>
                                    	<td><?php //echo $package->id; ?></td>
                                        <td>
                                        <?php //echo $package->package_name; ?>
                                        <?php //echo $package->show_private_listings==1?'&nbsp;<i class="icon-eye-open"></i>':'&nbsp;<i class="icon-eye-close"></i>'; ?>
                                        </td>
                                        <td><?php //echo $package->package_price.' '.$package->currency_code; ?></td>
                                        <td><?php //echo $package->auto_activation?'<i class="icon-ok"></i>':'<i class="icon-remove"></i>'; ?></td>
                                        <td><?php //echo $package->package_days; ?></td>
                                        <td><?php //echo $package->num_listing_limit?></td>
                                        <td><?php //echo $package->num_featured_limit?></td>
                                    </tr>
                        <?php //endforeach;?>
                        <?php //else:?>
                                    <tr>
                                    	<td colspan="20"><?php //echo lang_check('Not available');?></td>
                                    </tr>
                        <?php //endif;?>           
                      </tbody>
                    </table>

                  </div>
            </div>
            </div>
        </div>
        
        <?php //endif; ?>
        
        <?php //if(isset($settings_activation_price) && isset($settings_featured_price) &&
                 //$settings_activation_price > 0 || $settings_featured_price > 0): ?>
        <div class="row-fluid">
            <div class="span12">
            <div class="property_content ">
                <div class="widget-content">
                <?php //if($settings_activation_price > 0): ?>
                    <?php //echo lang_check('* Property activation price:').' '.$settings_activation_price.' '.$settings_default_currency; ?><br />
                 <?php //endif;?>
                 <?php //if($settings_featured_price > 0): ?>
                    <?php //echo lang_check('* Property featured price:').' '.$settings_featured_price.' '.$settings_default_currency; ?>
                 <?php //endif;?>
                 </div>
            </div>
            </div>
        </div>
        <?php //endif;?> -->
        
        <div class="row-fluid">
            

            <div class="span6 register-form">
                <h2>{lang_Register}</h2>
                <a name="content" id="content"></a>
                <div class="property_content widget-content">
                <?php if($this->session->flashdata('error_registration') != ''):?>
                    <p class="alert alert-success"><?php echo $this->session->flashdata('error_registration')?></p>
                <?php endif;?>
                <?php if($is_registration):?>
                <?php echo validation_errors()?>
                <?php endif;?>
                  <!-- Login form -->
                <?php echo form_open(NULL, array('class' => 'form-horizontal'))?>
                <?php if(config_db_item('register_reduced') == FALSE): ?>
                                <div class="control-group">
                                  <label class="control-label"><?php echo lang('FirstLast')?></label>
                                  <div class="controls">
                                    <?php echo form_input('name_surname', set_value('name_surname', ''), 'class="form-control" id="inputNameSurname" placeholder="'.lang('FirstLast').'"')?>
                                  </div>
                                </div>
                                
                                <div class="control-group">
                                  <label class="control-label"><?php echo lang('Username')?></label>
                                  <div class="controls">
                                    <?php echo form_input('username', set_value('username', ''), 'class="form-control" id="inputUsername" placeholder="'.lang('Username').'"')?>
                                  </div>
                                </div>
                <?php endif; ?>
                                <div class="control-group">
                                  <label class="control-label"><?php echo lang('Email')?></label>
                                  <div class="controls">
                                    <?php echo form_input('mail', set_value('mail', ''), 'class="form-control" id="inputMail" placeholder="'.lang('Email').'"')?>
                                  </div>
                                </div>
                  
                                <div class="control-group">
                                  <label class="control-label"><?php echo lang('Password')?></label>
                                  <div class="controls">
                                    <?php echo form_password('password', set_value('password', ''), 'class="form-control" id="inputPassword" placeholder="'.lang('Password').'" autocomplete="off"')?>
                                  </div>
                                </div>
                                
                                <div class="control-group">
                                  <label class="control-label"><?php echo lang('Confirmpassword')?></label>
                                  <div class="controls">
                                    <?php echo form_password('password_confirm', set_value('password_confirm', ''), 'class="form-control" id="inputPasswordConfirm" placeholder="'.lang('Confirmpassword').'" autocomplete="off"')?>
                                  </div>
                                </div>
                <?php if(config_db_item('register_reduced') == FALSE): ?>
                                <div class="control-group">
                                  <label class="control-label"><?php echo lang('Address')?></label>
                                  <div class="controls">
                                    <?php echo form_textarea('address', set_value('address', ''), 'placeholder="'.lang('Address').'" rows="3" class="form-control"')?>
                                  </div>
                                </div>          
                                
                                <div class="control-group">
                                  <label class="control-label"><?php echo lang('Phone')?> <?php echo lang_check('PhoneAdd')?></label>
                                  <div class="controls">
                                    <?php echo form_input('phone', set_value('phone', ''), 'class="form-control" id="inputPhone" placeholder="'.lang('Phone').'"')?>
                                  </div>
                                </div>
                   <?php endif; ?>

                                
                                <?php if(config_item('captcha_disabled') === FALSE): ?>
                                <div class="control-group" >
                                    <label class="control-label captcha"><?php echo $captcha['image']; ?></label>
                                    <div class="controls">
                                        <input class="captcha" name="captcha" type="text" placeholder="{lang_Captcha}" value="" />
                                        <input class="hidden" name="captcha_hash" type="text" value="<?php echo $captcha_hash; ?>" />
                                    </div>
                                </div>
                                <?php endif; ?>
                            <?php if(config_item('recaptcha_site_key') !== FALSE): ?>
                            <div class="control-group" >
                                <label class="control-label captcha"></label>
                                <div class="controls">
                                    <?php _recaptcha(true); ?>
                               </div>
                            </div>
                            <?php endif; ?>     
                    <div class="control-group">
                        <div class="controls">
    						<button type="submit" class="btn btn-danger"><?php echo lang('Register')?></button>
                            <a class="btn btn-success" href="<?php echo site_url('/frontend/login')?>/{lang_code}"><?php echo lang_check('Sign in')?></a>
    					</div>
                    </div>
                  <?php echo form_close()?>
            </div></div>
        </div>
                                
                            </div>
                        </div><!-- /.row -->
                    </div><!-- /.block-content -->
                    <!-- SOCIAL -->
                    <?php //_widget('bottom_social'); ?>  
                    <!-- STATISTICS -->
                    <?php //_widget('bottom_stats'); ?> 
                </div><!-- /.container -->
            </div><!-- /#main-inner -->
        </div><!-- /#main -->
    </div><!-- /#main-wrapper -->
     <?php _subtemplate( 'footers', _ch($subtemplate_footer, 'standart')); ?>
</div><!-- /#wrapper -->
<?php _widget('custom_javascript'); ?> 
</body>
</html>