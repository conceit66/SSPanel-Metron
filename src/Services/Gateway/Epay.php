<?php
/**
 * Copyright (c) 2019.
 * Author:Alone88
 * Github:https://github.com/anhao
 */

namespace App\Services\Gateway;

use App\Services\Gateway\Epay\Epay_notify;
use App\Services\Gateway\Epay\Epay_submit;
use App\Services\Auth;
use App\Services\Config;
use App\Models\Paylist;


class Epay extends AbstractPayment
{

    protected $epay = array();

    public function __construct()
    {
        $this->epay['apiurl'] = 'https://sunshin.ml/payment/gettopost';//
        $this->epay['partner'] = '1218';//易支付商户pid 1174
        $this->epay['key'] = '3aUrDbztUrnerKXZxERyAoh8jEejZUUt';//'7crE36UzCPrR5C7656rz3ARXrQeGaUCP';//易支付商户Key
        $this->epay['sign_type'] = strtoupper('MD5'); //签名方式
        $this->epay['input_charset'] = strtolower('utf-8');//字符编码
        $this->epay['transport'] = $_ENV['pycloudspay']['transport'];//协议 http 或者https
    }

    public function MetronPay($type, $price, $buyshop, $paylist_id=0)
    {
        if ($paylist_id == 0 && $price <= 0) {
            return ['errcode' => -1, 'errmsg' => "非法的金额."];
        }
        $user = Auth::getUser();
        if ($paylist_id == 0) {
            $pl = new Paylist();
            $pl->userid = $user->id;
            $pl->total = $price;
            if ($buyshop['id'] != 0) $pl->shop = json_encode($buyshop);
            $pl->datetime = time();
            $pl->tradeno = self::generateGuid();
            $pl->save();
        } else {
            $pl = Paylist::find($paylist_id);
            if ($pl->status === 1){
                return ['errcode' => -1, 'errmsg' => "该订单已交易完成"];
            }
        }

        //请求参数
        $data = array(
            "pid" => trim($this->epay['partner']),
            "type" => $type,
            "out_trade_no" => $pl->tradeno,
            "notify_url" => $_ENV['baseUrl'] . "/payment/notify/pycloudspay/".$user->id,
            "return_url" => $_ENV['baseUrl'] . "/user/payment/return",
            "name" => $user->user_name . "充值" . $pl->total . "元",
            "money" => $pl->total,
            "sitename" => "joshua"
        );
        $alipaySubmit = new Epay_submit($this->epay);
        $html_text = $alipaySubmit->buildRequestForm($data);
        $result = array('code'=>$html_text,'errcode'=>0,'tradeno' => $pl->tradeno );
        return $result;
    }

    public function purchase($request, $response, $args)
    {
        $type = $request->getParam('type');
        $price = $request->getParam('price');
        if ($price <= 0) {
            return json_encode(['errcode' => -1, 'errmsg' => "非法的金额."]);
        }
        $user = Auth::getUser();
        $pl = new Paylist();

        $pl->userid = $user->id;
        $pl->total = $price;
        //订单号
        $pl->tradeno = self::generateGuid();
        $pl->save();

        //请求参数
        $data = array(
            "pid" => trim($this->epay['partner']),
            "type" => $type,
            "out_trade_no" => $pl->tradeno,
            "notify_url" => Config::get('baseUrl') . "/epay/notify",
            "return_url" => Config::get('baseUrl') . "/epay/return",
            "name" => Config::get('appName') . "充值" . $price . "元",
            "money" => $price,
            "sitename" => Config::get('appName')
        );
        $alipaySubmit = new Epay_submit($this->epay);
        $html_text = $alipaySubmit->buildRequestForm($data);
        echo $html_text;
    }

    
    // 异步回调验证
	public function verifyNotify($trade_status){
	if(empty($trade_status)) return false;

        //todo这里要验证一下的
	
	if ($trade_status == 'TRADE_SUCCESS') {
	    echo "success";
		return true;
	}
    else {
	//验证失败
	    echo "fail";
	    return false;
    }
	}

    public function notify($request, $response, $args)
    {
        $get_params = $request->getQueryParams();
        $verify_result = $this->verifyNotify($get_params['trade_status']);
        
        if ($verify_result) {
            $out_trade_no = $get_params['out_trade_no'];
		    $this->postPayment($out_trade_no, 'SunshinPay');
		    return;
        }else{
            return;
        }
        
        
    }

    public function getStatus($request, $response, $args)
    {
        // TODO: Implement getStatus() method.
    }

    public function getPurchaseHTML()
    {
        return '
                        <div class="card-inner">
                        <p class="card-heading">请输入充值金额</p>
                        <form class="epay" name="epay" action="/user/payment/purchase" method="post">
                            <input class="form-control maxwidth-edit" id="price" name="price" placeholder="输入充值金额后，点击你要付款的应用图标即可" autofocus="autofocus" type="number" min="0.01" max="1000" step="0.01" required="required">
                            <br>
                            <button class="btn btn-flat waves-attach" id="btnSubmit" type="submit" name="type" value="alipay" ><img src="/images/alipay.jpg" width="50px" height="50px" /></button>
                            <button class="btn btn-flat waves-attach" id="btnSubmit" type="submit" name="type" value="qqpay" ><img src="/images/qqpay.jpg" width="50px" height="50px" /></button>
                            <button class="btn btn-flat waves-attach" id="btnSubmit" type="submit" name="type" value="wxpay" ><img src="/images/weixin.jpg" width="50px" height="50px" /></button>
                        </form>
                        </div>
';
    }

    public function getReturnHTML($request, $response, $args)
    {
        $money = $_GET['money'];
        echo "您已经成功支付 $money 元,正在跳转..";
        echo <<<HTML
<script>
    setTimeout(function() {
      location.href="/user/code";
    },500)
</script>
HTML;
        return;
    }

    public function postPayment($pid, $method)
    {
        return parent::postPayment($pid, $method);
    }

    public static function generateGuid()
    {
        return parent::generateGuid();
    }
}
