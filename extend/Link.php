<?php


class Link
{
    static function code62($x) {
        $show = '';
        while($x > 0) {
            $s = $x % 62;
            if ($s > 35) {
                $s = chr($s+61);
            } elseif ($s > 9 && $s <=35) {
                $s = chr($s + 55);
            }
            $show .= $s;
            $x = floor($x/62);
        }
        return $show;
    }

    static function shorturl($url) {
        // crc32() 函数计算字符串的 32 位 CRC（循环冗余校验） http://www.w3school.com.cn/php/func_string_crc32.asp
        $url = crc32($url);
        $result = sprintf("%u", $url);
        return self::code62($result);
    }
}