<?php


namespace app\home\controller;


use app\home\model\Dwz;
use think\Controller;

class Index extends Controller
{
    public function index()
    {
        //echo url('/',[],null,true);
        return $this->fetch();
    }

    public function short($url=''){
        $modelDwz = new Dwz();
        $md5=md5($url);
        $crc32 = \Link::shorturl($md5);
        $listDwz = $modelDwz->checkExpiration($crc32);
        $returnArray=array('id'=>'','url'=>'');
        if($listDwz){
            $returnArray['id']=$listDwz['crc32'];
            $returnArray['url']=$url;
        }else{
            $modelDwz->insertUrl($crc32,$md5,$url);
            $returnArray['id']=$crc32;
            $returnArray['url']=$url;
        }
        $return_json = json_encode($returnArray);
        return $return_json;
    }

    public function showUrl($crc32=''){
//        $modelDwz = new Dwz();
//        $listDwz = $modelDwz->checkExpiration($crc32);
//        if(!$listDwz){
//            die('404');
//        }
       // $this->assign('crc32',$listDwz['crc32']);
        $this->assign('crc32',$crc32);
        return $this->fetch();

    }

    public function jumpUrl($crc32=''){
        $modelDwz = new Dwz();
        $listDwz = $modelDwz->checkExpiration($crc32);
        $returnArray=array('code'=>0,'type'=>'','base64'=>'','time'=>0);
        if(!$listDwz){
            $returnArray['code'] = 0;
        }else{
            $returnArray['code'] = 1;
            $returnArray['type']=$listDwz['type'];
            $returnArray['base64']=base64_encode($listDwz['url']);
            $returnArray['time']=$listDwz['expiration_time'];
        }
        return json($returnArray);
    }

}