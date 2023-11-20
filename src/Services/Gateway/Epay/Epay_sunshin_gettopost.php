<?php
/**
 * Copyright (c) 2022.
 * Author:sunshin
 * 进行get转post
 */

namespace App\Services\Gateway\Epay;


class Epay_sunshin_gettopost{
    public function gettopost($request, $response, $args){
        $param = $request->getQueryParams();
        	//$html = '<form id="dopay" action="'.'https://new.9000.run/submit.php'.'" method="post">';
        	$html = '<form id="dopay" action="'.'https://fu.880666.net/submit.php'.'" method="post">';
		foreach ($param as $k=>$v) {
			$html.= '<input type="hidden" name="'.$k.'" value="'.$v.'"/>';
		}
		$html .= '<input type="submit" value="'.$button.'"></form><script>document.getElementById("dopay").submit();</script>';
		echo $html;

    }
    
    
}