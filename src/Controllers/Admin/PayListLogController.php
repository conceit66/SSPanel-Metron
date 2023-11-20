<?php

namespace App\Controllers\Admin;

use App\Controllers\{MetronController, AdminController};
use App\Utils\{ DatatablesHelper };
use Ozdemir\Datatables\Datatables;
use App\Models\Paylist;
use App\Models\Payback;
use App\Models\User;
use App\Models\Code;

/*
Route
$this->get('/paylistlog',               App\Controllers\Admin\PayListLogController::class . ':payListLog');
        $this->post('/paylistlog/ajax',         App\Controllers\Admin\PayListLogController::class . ':ajax_paylistLog');
        $this->get('/paylistlog/{id}/change',   App\Controllers\Admin\PayListLogController::class . ':change');
*/



class PayListLogController extends AdminController
{
     public function payListLog($request, $response, $args)
    {
        $table_config['total_column'] = array(
            'op' => '操作','id' => 'ID', 
            'user_id' => '用户ID',"user_name" => '用户名',
            'total' => '金额', 'status' => '状态',
            'tradeno' => '内部单号', 'datetime' => '时间',
        );
        $table_config['default_show_column'] = array(
            'op','id', 'user_id',
            'user_name', 'total',
            'status', 'tradeno',
            'datetime'
        );
        $table_config['ajax_url'] = 'paylistlog/ajax';
        return $this->view()->assign('table_config', $table_config)->display('admin/paylistlog.tpl');
    }
    
    public function change($request, $response, $args)
    {
        $id = $args['id'];
        $p = Paylist::where('id', $id)->first();
        $p->status = 1;
        $p->save();
        $user = User::find($p->userid);
        $user->money = bcadd($user->money, $p->total, 2);
        $user->save();
        $codeq = new Code();
        $codeq->code = "补单";
        $codeq->isused = 1;
        $codeq->type = -1;
        $codeq->number = $p->total;
        $codeq->usedatetime = date('Y-m-d H:i:s');
        $codeq->userid = $user->id;
        $codeq->save();
        return $response->withRedirect('/admin/paylistlog', 302);
    }
    
    public function ajax_paylistLog($request, $response, $args)
    {
        $datatables = new Datatables(new DatatablesHelper());
        $datatables->query('Select log.id as op,log.id,log.userid as user_id,user.user_name,log.total,log.status,log.tradeno,log.datetime from paylist as log,user WHERE log.userid = user.id');

        $datatables->edit('datetime', static function ($data) {
            return date('Y-m-d H:i:s', $data['datetime']);
        });
        
        $datatables->edit('op', static function ($data) {
            return '<a class="btn btn-brand-accent" ' . ($data['status'] == 1 ? 'disabled' : 'href="/admin/paylistlog/' . $data['id'] . '/change"') . '>补单</a>';
        });
        
        
        
        $datatables->edit('status', static function ($data) {
            if($data['status'] == 1){
                return "已付款";
            }else{
                return "未付款";
            }
        });

        $body = $response->getBody();
        $body->write($datatables->generate());
    }

}