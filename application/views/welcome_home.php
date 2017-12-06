<!DOCTYPE html>
<html lang="en">
        <?php if($dataPegawai->level == "1") { 
            $this->load->view('admin/home');
            ?>  
        <?php } else if($dataPegawai->level == "2") { 
            $data ['datalog'] = $dataPegawai;
             $this->load->view('operator/home',$data);
            ?>
        <?php } else if($dataPegawai->level == "3") { 
             $this->load->view('user/home');
            ?>
             <?php }else { ?>           
                <?php redirect('index.php/login/login_form');?>
        <?php } ?>
</html>
