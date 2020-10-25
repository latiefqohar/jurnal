<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class Api extends REST_Controller
{
    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Api_model');
        $this->load->model('Review_model');
        
    }

    public function data_post(){
    $id = $this->input->post('id');
    // var_dump($id);die();
    $email_address = $this->Review_model->email($id);
    // var_dump($email_address);die();
    $email = $email_address->email;
 
    $scoring_identity    = $this->Review_model->scoring($id);
    $scoring_pekerjaan   = $this->Review_model->scoring_pekerjaan($id);
    $scoring1            = $scoring_identity->Score;
    $scoring2            = $scoring_pekerjaan->Score;
    $score1              = intval($scoring1);
    $score2              = intval($scoring2);

    $score = $score1 + $score2;
    // data pengguna
    $pengguna = $this->Review_model->show_data4($id);
    // data verifikasi
    $verifikasi= $this->Review_model->show_verifikasi($id)->result();
    // data riwayat
    $riwayat_pinjaman=$this->db->get_where('riwayat_pinjaman', array('registration_id' => $id))->result();
    //  data kontak darurat
    $kontak=$this->db->get_where('kontak_darurat', array('registration_id' => $id))->result();
    // data Verifikasi terakhir
    $data_verifikasi_akhir=$this->Review_model->verifikasi_terakhir($id)->row_array();
    // data other contact terakhir
    $data_kontak_akhir=$this->Review_model->get_othercontact($id)->row_array();
      // var_dump($data_kontak_akhir);die();
    $databunga=$this->Review_model->get_data('bunga_khusus')->result();
    $privyID = $this->Review_model->view_log_ikyc($email);
    $Response_privyID = $this->Review_model->view_response_ikyc($id);
    if ($verifikasi==NULL) {
      $data = array(
        'pengguna_data' => $pengguna,
      );
      echo json_encode($data);
    }else{
      $data = array(
        'pengguna_data' => $pengguna,
      );
      echo json_encode($data);
    }
    }

    // public function sample_post(){
    //     $token = $this->verifikasi_token();
    //     if ($token['status'] == 'success'){

            
    //     }else{
    //         $this->set_response("Unauthorised, Please Login!", REST_Controller::HTTP_UNAUTHORIZED);
    //     }      
    // }
    

    // public function register_post()
    // {

    //     $username = $this->post('username');
    //     $password = $this->post('password');
    //     $where = array(
    //         'username' => $username ,
    //         'password' => md5($password) 
    //     );
    //     $query = $this->Api_model->edit_data($where,'user_developer');
    //     if ($query->num_rows() > 0 ) {
    //         $data = $query->row_array();
    //         $tokenData = array();
    //         $tokenData['id_developer'] = $data['id'];
    //         $tokenData['username'] = $data['username'];
    //         $output['status'] = 'sukses';
    //         $output['data']['token'] = AUTHORIZATION::generateToken($tokenData);
    //         $this->set_response($output, REST_Controller::HTTP_OK);
    //     } else {
    //         $output = array(
    //             'status' => 'gagal',
    //             'data' => 'Login Gagal'
    //         );
    //         $this->set_response($output, REST_Controller::HTTP_UNAUTHORIZED);
    //     }
       
    // }

    /**
     * URL: http://localhost/CodeIgniter-JWT-Sample/authtimeout/token
     * Method: POST
     * Header Key: Authorization
     * Value: Auth token generated in GET call
     */
    private function log($nik,$nama,$id_aplikasi,$aktifitas){
        // ip addresss
        $ipaddress = '';
        if (getenv('HTTP_CLIENT_IP'))
            $ipaddress = getenv('HTTP_CLIENT_IP');
        else if(getenv('HTTP_X_FORWARDED_FOR'))
            $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
        else if(getenv('HTTP_X_FORWARDED'))
            $ipaddress = getenv('HTTP_X_FORWARDED');
        else if(getenv('HTTP_FORWARDED_FOR'))
            $ipaddress = getenv('HTTP_FORWARDED_FOR');
        else if(getenv('HTTP_FORWARDED'))
           $ipaddress = getenv('HTTP_FORWARDED');
        else if(getenv('REMOTE_ADDR'))
            $ipaddress = getenv('REMOTE_ADDR');
        else
            $ipaddress = 'UNKNOWN';


        $data = array(
            "nik" => $nik, 
            "ip_address" => $ipaddress, 
            "nama" => $nama, 
            "id_aplikasi" => $id_aplikasi, 
            "aktifitas" => $aktifitas,
            "waktu" => date("Y-m-d H:i:s")
        );

        $this->Api_model->insert_data($data,'log');
    } 

    
}