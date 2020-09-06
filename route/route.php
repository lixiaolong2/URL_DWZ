<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

Route::get('think', function () {
    return 'hello,ThinkPHP5!';
});

Route::get('hello/:name', 'index/hello');
Route::get('','home/index/index');
//Route::get('h2ello/:name', 'index/hello');
///^zqs([\w=]*)$/
//Route::get('z:crc32','\app\home\controller\Index@showUrl');
//Route::rule();
Route::get('z:crc32','home/Index/showUrl');
Route::any('g','home/Index/short');
Route::any('j','home/Index/jumpUrl');
return [

];
