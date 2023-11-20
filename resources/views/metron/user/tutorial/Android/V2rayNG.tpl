<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Clash 使用教程 &mdash; {$config["appName"]}</title>
        <link href="{$metron['assets_url']}/css/client/metron-icon.css" rel="stylesheet" type="text/css" />
        <link href="{$metron['assets_url']}/plugins/tutorial/lightbox/lightbox.min.css" rel="stylesheet" >
        {include file='include/global/head.tpl'}
        <div class="d-flex flex-column flex-root">
            <div class="d-flex flex-row flex-column-fluid page">
                <div class="d-flex flex-column flex-row-fluid wrapper" id="kt_wrapper">
                    {include file='include/global/menu.tpl'}
                    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
                        <div class="subheader min-h-lg-175px pt-5 pb-7 subheader-transparent" id="kt_subheader">
                            <div class="container d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
                                <div class="d-flex align-items-center flex-wrap mr-2">
                                    <div class="d-flex flex-column">
                                        <h2 class="text-white font-weight-bold my-2 mr-5">V2rayNG 使用教程</h2>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center">
                                </div>
                            </div>
                        </div>

                        <div class="d-flex flex-column-fluid">
                            <div class="container">

                                <div class="row">
                                    <div class="col-12">
                                        <div class="card card-custom gutter-b {$metron['style_shadow']}">
                                            <div class="card-header">
                                                <div class="card-title">
                                                </div>
                                            </div>
                                            <div class="card-body">

                                                <div class="row p-5">
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <p class="font-size-h1 pb-5"><strong>0.安装软件</strong></p>
                                                        <div class="btn-group mb-3 mr-3">
                                                            <a type="button" class="btn btn-pill btn-v2ray" href="{$metron['client_android']['v2rayng']['down']}">&nbsp;&nbsp;<i class="metron-v2rayng text-white"></i>下载V2rayNG</a>
                                                        </div>
                                                        <div class="example-preview">
                                                            <p>点击上方按钮下载,将得到的apk文件进行安装。</p>
                                                            <p>打开<code>V2rayNG</code>,点击右上角菜单栏</p>
                                                            <p>选择<code>订阅设置</code></p>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic.imgdb.cn/item/6225e9e65baa1a80ab6b2f0f.jpg" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic.imgdb.cn/item/6225e9e65baa1a80ab6b2f0f.jpg"/></a>
                                                    </div>
                                                </div>

                                                <div class="separator separator-dashed separator-border-4"></div>

                                                <div class="row p-5">
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <p class="font-size-h1 pb-5"><strong>1. 添加新的订阅</strong></p>
                                                        <p class="mb-2">如右图所示，点击右上角<code>+</code></p>
                                       
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic.imgdb.cn/item/6225ea7c5baa1a80ab6be174.jpg" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic.imgdb.cn/item/6225ea7c5baa1a80ab6be174.jpg"/></a>
                                                    </div>
                                                </div>

                                                <div class="separator separator-dashed separator-border-4"></div>

                                                <div class="row p-5">
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <p class="font-size-h1 pb-5"><strong>2. 设置订阅地址</strong></p>
                                                        <div class="btn-group mb-3 mr-3">
                                                            <button type="button" class="btn btn-pill btn-v2ray copy-text" data-clipboard-text="{$subInfo["v2ray"]}"><i class="metron-v2rayng text-white"></i>&nbsp;&nbsp;复制 V2Ray 订阅&nbsp;&nbsp;</button>
                                                        </div>
                                                        <p class="mb-2">点击上方按钮复制订阅链接ClashR</p>
                                                        <p class="mb-2">备注填入 <code>sunshin</code>(建议)</p>
                                                        <p class="mb-2"><code>✔</code>选启用</p>
                                                        <p class="mb-2">粘贴订阅链接到 <code>地址</code></p>
                                                        <p class="mb-2">点击右上角<code>√</code> 完成导入</p>
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic.imgdb.cn/item/6225ec0c5baa1a80ab6d9b40.jpg" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic.imgdb.cn/item/6225ec0c5baa1a80ab6d9b40.jpg"/></a>
                                                    </div>
                                                </div>

                                                <div class="separator separator-dashed separator-border-4"></div>

                                                <div class="row p-5">
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <p class="font-size-h1 pb-5"><strong>3. 更新订阅链接</strong></p>
                                                        <p class="mb-2">返回软件打开的主页面</code></p>
                                                        <p class="mb-2">点击右上角 <code>从右往左数第1个</code> 按钮</p>
                                                        <p class="mb-2">点击<code>更新订阅</code>按钮，完成更新</p>
                                                        
                                                        <i class="mb-2">*以后若需要更新订阅，方法同此步骤</i>
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic.imgdb.cn/item/6225eccd5baa1a80ab6e5943.jpg" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic.imgdb.cn/item/6225eccd5baa1a80ab6e5943.jpg"/></a>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
							</div>
						</div>
					</div>
                    {include file='include/global/footer.tpl'}
				</div>
			</div>
		</div>

        {include file='include/global/scripts.tpl'}
        {include file='include/global/import_sublink.tpl'}
        <script src="{$metron['assets_url']}/plugins/tutorial/lightbox/lightbox.min.js" type="text/javascript"></script>
    </body>
</html>