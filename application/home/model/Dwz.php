<?php


namespace app\home\model;


use think\Model;

class Dwz extends Model
{
    /** 判断是否有未过期链接
     * @param $crc32
     * @return array|Model|null
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function checkExpiration($crc32){
        return $this->where([
            ['crc32','=',$crc32],
            ['expiration_time','>',time()]
        ])->find();
    }

    /**
     * 插入数据库
     * @param $crc32
     * @param $md5
     * @param $url
     * @param float|int $expirationTime
     * @return int|string
     */
    public function insertUrl($crc32,$md5,$url,$expirationTime=5*1000*60){
        if($url =='') return 0;
        return $this->insert([
            'crc32'=>$crc32,
            'md5'=>$md5,
            'type'=>'url',
            'url'=>$url,
            'expiration_time'=>time()+$expirationTime
        ]);
    }

}