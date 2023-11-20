<?php
/**
 * Copyright (c) 2019.
 * Author:Alone88
 * Github:https://github.com/anhao
 */

namespace App\Services\Gateway\Epay;


use App\Services\Gateway\Epay;

class Epay_submit
{
    private $pid;
	private $key;
    protected $alipay_config;

    /**
     * Epay_submit constructor.
     * @param $alipay_config
     */
    public function __construct($alipay_config)
    {
        $this->alipay_config = $alipay_config;
        $this->alipay_gateway_new = $this->alipay_config['apiurl'].'?';
        $this->pid = '1218';
		$this->key = '3aUrDbztUrnerKXZxERyAoh8jEejZUUt';
    }

    /**
     * @param $alipay_config
     */
    public function AlipaySubmit($alipay_config)
    {
        $this->__construct($alipay_config);
    }



    private function buildRequestParam($param){
		$mysign = $this->getSign($param);
		$param['sign'] = $mysign;
		$param['sign_type'] = 'MD5';
		return $param;
	}
     
    private function getSign($param){
		ksort($param);
		reset($param);
		$signstr = '';
	
		foreach($param as $k => $v){
			if($k != "sign" && $k != "sign_type" && $v!=''){
				$signstr .= $k.'='.$v.'&';
			}
		}
		$signstr = substr($signstr,0,-1);
		$signstr .= $this->key;
		$sign = md5($signstr);
		return $sign;
	}
     
     
   public function buildRequestForm($para_temp)
    {
        //待请求参数数组
        $para = $this->buildRequestParam($para_temp);
        
		$url = $this->alipay_gateway_new;
		foreach ($para as $key=>$val){
			$url .= "&$key=$val";
        }
        return $url;

    }

}