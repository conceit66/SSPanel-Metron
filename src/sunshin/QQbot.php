<?php
namespace App\sunshin;
use App\Models\User;

class QQbot
{
    protected $authtoken = "99d54321-5438-461d-8dab-dec8a7bc9900";
    public function getInfo($request, $response, $args)
    {
        $authortity = $request->getHeader("Authorization");
        if($authortity == null)
        {
            $json["code"] = "403";
            $json["data"] = [];
            $json["msg"] = "缺少authority认证头";
            $response->withStatus(403);
            return $response->getBody()->write(json_encode($json));
        }
        $temp = $this->check_token($authortity,$request->getQueryParams()); //返回二元元组，如果成功，返回邮箱地址+200 ，失败返回失败原因+失败代码
        if($temp[1] != 200){
            $json["code"] = $temp[1];
            $json["data"] = [];
            $json["msg"] = $temp[0];
            $response->withStatus($temp[1]);
            return $response->getBody()->write(json_encode($json));
        }
        $user = User::where('email', '=', $temp[0])->first(); 
        
        if($user == null){
            $json["code"] = "404";
            $json["data"] = [];
            $json["msg"] = '未查询到用户';
            $response->withStatus(404);
            return $response->getBody()->write(json_encode($json));
        }
        
        $data["enableTraffic"] = $user->enableTraffic();    //流量总量，以下单位统统GB
        $data["usedTraffic"] = $user->usedTraffic();        //已用流量
        $data["unusedTraffic"] = $user->unusedTraffic();    //剩余流量
        $data["todayUsedTraffic"] = $user->TodayUsedTraffic();  //今天已经使用的流量
        
        $json["code"] = "200";
        $json["data"] = $data;
        $json["msg"] = "success";
        return $response->getBody()->write(json_encode($json));
    }
    
    private function check_token($authortity,$queryParams)
    {
        if($queryParams == null){
            return ['缺少查询参数', 400];
        }
        $timestamp = $queryParams["timestamp"];
        if($timestamp == null) {
            return ["查询参数缺少timestamp参数",400];
        }
        if(time()-$timestamp>10) {
            return ["重放攻击警告，timestamp与服务器时间相差过大",400];
        }
        $userId = $queryParams["userId"];
        if($userId == null){
            return ["查询参数缺少userId参数",400];
        }
        $signStr = 'timestamp='.$timestamp.'&userId='.$userId;
        if($authortity[0] != base64_encode(hash_hmac("sha1", $signStr, $this->authtoken, true))){
            return ["有刺客小心！认证失败",403];
        }
        return [$queryParams["userId"],200];
    }
    
}