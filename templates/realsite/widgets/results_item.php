<?php
$col_md = '4';
if(isset($columns) && $columns == 4)
{
    $col_md = '3';
}
?>
<style>
    p {
        font-size: 12px;
        font-style: bold;
    }
    

</style>

<?php if(config_db_item('template_purpose') == 'real-estate'): ?>

<div class="col-md-<?php echo $col_md; ?> col-sm-6 ad-search">
    <div class="property-box">
    <div class="property-box-label <?php echo $item['is_featured']?'property-box-label-primary':''; ?>"><?php echo _ch($item['option_4']); ?></div>
        <div class="property-box-image">
            <a href="<?php echo _ch($item['url']); ?>">
                <img src="<?php echo _simg($item['thumbnail_url'], '393x265'); ?>" alt="">
                <span class="property-box-excerpt">
                    <?php echo _ch($item['option_chlimit_8']); ?>
                </span>
            </a>
        </div>
        <!-- /.property-image -->

        <div class="property-box-content">
            <div class="property-box-meta">

                <div class="property-box-meta-item">
                    <span><?php echo $options_name_2; ?></span>
                    <strong><?php echo _ch($item['option_2']); ?></strong>
                </div>
                <!-- /.property-box-meta-item -->

                <div class="property-box-meta-item">
                    <span><?php echo $options_name_64; ?></span>
                    <strong><?php echo _ch($item['option_64']); ?></strong>
                </div>
                <!-- /.property-box-meta-item -->
                <div class="property-box-meta-item">
                    <span><?php echo $options_name_56; ?></span>
                    <strong><?php echo _ch($item['option_56']); ?><?php echo (!empty($item['option_56'])) ? _ch($options_suffix_56): ''; ?></strong>
                </div>


                <!-- <div class="property-box-meta-item">
                    <span><?php //echo $options_name_32;?></span>
                    <strong class="<?php //echo (!empty($item['option_32'])) ? 'glyphicon glyphicon-ok':'glyphicon glyphicon-remove';  ?>"></strong>
                </div> -->
                <!-- /.property-box-meta-item -->
            </div>
            <!-- /.property-box-meta -->
        </div>
        <!-- /.property-box-content -->

        <div class="property-box-bottom">
            <div class="property-box-price">
                <?php if(!empty($item[ 'option_36']))echo $options_prefix_36.price_format($item[ 'option_36'], $lang_id).$options_suffix_36; ?>
            </div>
            <!-- /.property-box-price -->

            <a href="<?php echo _ch($item['url']); ?>" class="property-box-view">
                {lang_Details}
            </a>
            <!-- /.property-box-view -->
        </div>
        <!-- /.property-box-bottom -->
    </div>
    <!-- /.property-box -->
</div>

<?php else: ?>

<div class="col-md-<?php echo $col_md; ?> col-sm-6 ad-search">
    <div class="property-box">
        <div class="property-box-label <?php echo $item['is_featured']?'property-box-label-primary':''; ?>"><?php echo _ch($item['option_4']); ?></div>
        <div class="property-box-image">
            <a href="<?php echo _ch($item['url']); ?>">
                <img src="<?php echo _simg($item['thumbnail_url'], '393x265'); ?>" alt="">
                <span class="property-box-excerpt">
                    <?php echo _ch($item['option_chlimit_8']); ?>
                </span>
            </a>
        </div>
        <!-- /.property-image -->

        <div class="property-box-content">
            <div class="property-box-meta">

                <div class="property-box-meta-item">
                    <span><p><?php echo $options_name_2; ?></p></span>
                    <strong style="font-size:18px;"><?php echo _ch($item['option_2']); ?></strong>
                </div>
                <!-- /.property-box-meta-item -->
                <div class="property-box-meta-item">
                    <span><p><?php echo $options_name_64; ?></p></span>
                    <strong style="font-size:15px;"><?php echo _ch($item['option_64']); ?></strong>
                </div>

                <div class="property-box-meta-item">
                    <span><p><?php echo $options_name_56; ?></p></span>
                    <strong><?php echo _ch($item['option_56']); ?><?php echo (!empty($item['option_56'])) ? _ch($options_suffix_56): ''; ?></strong>
                </div>
                <!-- /.property-box-meta-item -->

                <div class="property-box-meta-item">
                    <span><?php //echo $options_name_32;?></span>
                    <strong class="<?php //echo (!empty($item['option_32'])) ? 'glyphicon glyphicon-ok':'glyphicon glyphicon-remove';  ?>"></strong>
                </div>
                <!-- /.property-box-meta-item -->
            </div>
            <!-- /.property-box-meta -->
        </div>
        <!-- /.property-box-content -->

        <div class="property-box-bottom">
            <div class="property-box-price">
                <?php if(!empty($item[ 'option_36']))echo $options_prefix_36.price_format($item[ 'option_36'], $lang_id).$options_suffix_36; ?>
            </div>
            <!-- /.property-box-price -->

            <a href="<?php echo _ch($item['url']); ?>" class="property-box-view">
                {lang_Details}
            </a>
            <!-- /.property-box-view -->
        </div>
        <!-- /.property-box-bottom -->
    </div>
    <!-- /.property-box -->
</div>

<?php endif;?>