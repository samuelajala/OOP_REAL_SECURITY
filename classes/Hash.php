<?php

class Hash{
  public static function make($string, $salt = ''){
    //salt will help us to improve the security of the password hash
    return hash('sha256', $string, $salt);

  }

  public static function salt($length){
    return mcrypt_create_iv($length);
  }

  public static function unique(){
    return self::make(uniqid());
  }
}
