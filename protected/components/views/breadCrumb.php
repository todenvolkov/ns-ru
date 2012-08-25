<p class="breadcrumbs">   
    <?php 
    foreach($this->crumbs as $crumb) {
        if(isset($crumb['url'])) {
            echo "<a href='".$crumb['url']."'>".$crumb['name']."</a>";
        } else {
            echo $crumb['name'];
        }
        if(next($this->crumbs)) {
            echo $this->delimiter;
        }
    }
    ?>
</p>