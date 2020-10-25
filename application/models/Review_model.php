<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

    class Review_model extends CI_Model
    {

        public function __construct()
        {
            parent::__construct();
        }

       public function show_data4($id){
            return $this->db->select('
                a.registration_id,
                a.verifikator_awal,
                a.no_ponsel,
                a.status_reg,
                a.date_reg,
                b.name
                ,b.ktp
                ,b.birthday
                ,b.gender
                ,b.img_ktp
                ,b.img_face
                ,c.email
                ,c.whatsapp
                ,d.no_phone2
                ,c.ibu_kandung
                ,c.address
                ,c.education
                ,c.other_phone
                ,c.jumlah_anak
                ,c.kelurahan
                ,c.latitude
                ,c.longitude
                ,c.status_rumah
                ,d.relation1 
                ,d.relation2 
                ,d.relation3 
                ,d.relation4 
                ,d.relation5
                ,d.name1
                ,d.no_phone1
                ,d.name2
                ,d.name3
                ,d.no_phone3
                ,d.name4 
                ,d.no_phone4 
                ,d.name5 
                ,d.no_phone5
                ,e.no_rek
                ,f.nama_kelurahan
                ,g.nama_kecamatan
                ,h.nama_kabupaten
                ,i.provinsi_company
                ,i.kabupaten_company
                ,i.address_company
                ,i.kecamatan_company
                ,i.name_company
                ,i.phone_company
                ,i.tanggal_gajian
                ,i.npwp
                ,i.name_relation
                ,i.phone_relation
                ,e.bank_code
                ,k.bank_name
                ,l.npwp
                ,l.work_place
                ,l.card_family
                ,l.work_letter
                ,l.sim
                ,l.salary_card
                ,l.work_card
                ,o.amount_money
                ,o.amount_bill
                ,o.bill_permonth
                ,o.bunga_khusus
                ,q.range
                ,q.installment
                ,r.eduName
                ,s.nama_status_pernikahan
                ,t.religion
                ,u.lama_tinggal
                ,v.nama_status_rumah
                ,w.profession
                ,x.penghasilan
                ,y.user_code
                ,z.lama_kerja
                ,aa.industry_category
                ')->from('registration a')->join('identify_information b','a.registration_id=b.registration_id')->join('base_information c','a.registration_id=c.registration_id')->join('other_contact d','a.registration_id=d.registration_id')->join('bank_account e','a.registration_id=e.registration_id')->join('kelurahan f','c.kelurahan=f.kelurahan_id')->join('kecamatan g','f.kecamatan_id=g.kecamatan_id')->join('kabupaten h','g.kabupaten_id=h.kabupaten_id')->join('company i','a.registration_id=i.registration_id')->join('work_range z','i.lama_kerja=z.lama_kerja_id')->join('occupation aa','i.lama_kerja=aa.id')->join('bank_code k','e.bank_code=k.bank_id')->join('other_doc l','a.registration_id=l.registration_id')->join('loan_apply o','a.registration_id=o.registration_id')->join('loan_range q','o.loan_range=q.loan_range_id')->join('education r','c.education=r.edu_id')->join('status_pernikahan s','c.status_pernikahan=s.status_pernikahan_id')->join('religion t','c.religion=t.religion_id')->join('lama_tinggal u','c.lama_tinggal=u.lama_tinggal_id')->join('status_rumah v','c.status_rumah=v.status_rumah_id')->join('profession w','i.job=w.id')->join('salary_range x','i.penghasilan=x.id')->join('users y','a.verifikator_awal=y.id')->where('a.registration_id',$id)->where('e.status_rekening',1)->where('d.status_kontak',1)->get()->result();
        }

        public function scoring(){
          
           return $this->db->select('(SELECT SUM(education.score1 + kids.score2 + status_pernikahan.score3 + lama_tinggal.score4 + status_rumah.score5) FROM base_information INNER JOIN education ON base_information.education= education.edu_id INNER JOIN kids ON base_information.jumlah_anak=kids.jumlah_anak_id INNER JOIN status_pernikahan ON base_information.status_pernikahan=status_pernikahan.status_pernikahan_id INNER JOIN lama_tinggal ON base_information.lama_tinggal=lama_tinggal.lama_tinggal_id INNER JOIN status_rumah ON base_information.status_rumah=status_rumah.status_rumah_id WHERE registration_id="500987") AS Score', FALSE)->get()->row();
            
        }

         public function scoring_review($id){

           return $this->db->select('
            a.eduName
            ,a.score1
            ,b.jumlah_anak
            ,b.score2
            ,c.nama_status_pernikahan
            ,c.score3
            ,d.lama_tinggal
            ,d.score4
            ,e.nama_status_rumah
            ,e.score5
            
            ')->from('base_information f')->join('education a','f.education=a.edu_id')->join('kids b','f.jumlah_anak=b.jumlah_anak_id')->join('status_pernikahan c','f.status_pernikahan=c.status_pernikahan_id')->join('lama_tinggal d','f.lama_tinggal=d.lama_tinggal_id')->join('status_rumah e','f.status_rumah=e.status_rumah_id')->where('f.registration_id',$id)->get()->row();

        }

        public function pekerjaan_scoring_review($id){
            return $this->db->select('
                                         a.industry_category
                                        ,a.score1
                                        ,b.profession
                                        ,b.score2
                                        ,c.penghasilan
                                        ,c.score3
                                        ,d.lama_kerja
                                        ,d.score4
                                    ')->from('company e')->join('occupation a','e.industry_type=a.id')->join('profession b','e.job=b.id')->join('salary_range c','e.penghasilan=c.id')->join('work_range d','e.lama_kerja=d.lama_kerja_id')->where('registration_id',$id)->get()->row();
        }

        public function scoring_pekerjaan($id){

             return $this->db->select('(SELECT SUM(occupation.score1 + profession.score2 + salary_range.score3 + work_range.score4) FROM company INNER JOIN occupation ON company.industry_type= occupation.id INNER JOIN profession ON company.job=profession.id INNER JOIN salary_range ON company.penghasilan=salary_range.id INNER JOIN work_range ON company.lama_kerja=work_range.lama_kerja_id WHERE registration_id="'.$id.'") AS Score',FALSE)->get()->row();

        }

    

        public function show_verifikasi($id){
            $w = array('registration_id' => $id,'status_verifikasi'=>0);
            $query= $this->db->get_where('verifikasi', $w);
            return $query;
        }
        public function verifikasi_terakhir($id){
            $query= $this->db->query('select * from verifikasi where status_verifikasi=1 and registration_id="'.$id.'" order by id DESC limit 1 ');
            return $query;
        }
        public function hit1($no_ponsel,$registration_id){
            return $this->db->query('select a.registration_id from other_contact a
            where no_phone3="'.$no_ponsel.'" or no_phone2="'.$no_ponsel.'" or no_phone1="'.$no_ponsel.'" having registration_id !="'.$registration_id.'" UNION select registration_id from company where phone_company="'.$no_ponsel.'" and registration_id != "'.$registration_id.'"')->result();
            
        }
        public function hit($no_ponsel,$registration_id){
            $this->db->query('select a.registration_id from other_contact a
            where no_phone3="'.$no_ponsel.'" or no_phone2="'.$no_ponsel.'" or no_phone1="'.$no_ponsel.'" having registration_id !="'.$registration_id.'" UNION select registration_id from company where phone_company="'.$no_ponsel.'" and registration_id != "'.$registration_id.'"');
            return $this->db->affected_rows();
        }


        public function update($table,$data,$w){
            $this->db->update($table, $data, $w);

        }

        public function save_verifikasi($data){
            $this->db->insert('verifikasi',$data);

        }
        public function simpan($table,$data){
            $this->db->insert($table,$data);

        }
        public function get_data($table){
            return $this->db->get($table);
        }
        
        function edit_data($where,$table){		
            return $this->db->get_where($table,$where);
        }
        public function relation($id){
            return $this->db->select('*')->from('hubungan_kerabat')->where('id',$id)->get()->row_array();
        }
       
        public function get_othercontact($registration_id){
            return $this->db->query('select * from other_contact where registration_id='.$registration_id.' and status_kontak=0 order by id_contact DESC limit 1');
        }

        public function cek_hit($no_ponsel,$registration_id){
            return $this->db->query('select borrower_name,amount_money,terlambat from riwayat_pinjaman where no_ponsel = "'.$no_ponsel.'" and registration_id != "'.$registration_id.'"');
        }

         public function view_log_ikyc($email){
            return $this->db->select('privyID,phone,email,status')->from('callback_privyid')->where('email',$email)->order_by('id_callback','desc')->limit(1)->get()->result();
        }

        public function view_response_ikyc($id){
            return $this->db->select('response')->from('log_ikyc')->where('registration_id',$id)->order_by('id_ikyc','desc')->limit(1)->get()->result();
        }

        public function save_log_ikyc($registration_id,$response){
            $data = array('registration_id'=>$registration_id,'response'=>$response);
            return $this->db->insert('log_ikyc',$data);
        }

        public function email($id){
            return $this->db->select('email')->from('base_information')->where('registration_id',$id)->get()->row();
        }

        public function saveLog_inquiryPusdafil($dcode){

            $array = array(

                            'no_identitas'              => $dcode,
                            // 'nama_borrower'             => $dcode['nama_borrower'],
                            // 'nilai_pendanaan'           => $dcode['nilai_pendanaan'],
                            // 'tgl_penyaluran_dana'       => $dcode['tgl_penyaluran_dana'],
                            // 'tgl_pelaporan_data'        => $dcode['tgl_pelaporan_data'],
                            // 'sisa_pinjaman_berjalan'    => $dcode['sisa_pinjaman_berjalan'],
                            // 'tgl_jatuh_tempo_pinjaman'  => $dcode['tgl_jatuh_tempo_pinjaman'],
                            // 'dpd_terakhir'              => $dcode['dpd_terakhir'],
                            // 'dpd_max'                   => $dcode['dpd_max'],
                            // 'id_penyelenggara'          => $dcode['id_penyelenggara'],
                            // 'kualitas_pinjaman_ket'     => $dcode['kualitas_pinjaman_ket'],
                            // 'status_pinjaman_ket'       => $dcode['status_pinjaman_ket'],
                        );
            $this->db->insert('saveLog_inquiryPusdafil',$array);
        }


  }// End Model
