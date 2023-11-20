<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Netch 使用教程 &mdash; {$config["appName"]}</title>
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
                                        <h2 class="text-white font-weight-bold my-2 mr-5">Netch 使用教程</h2>
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
                                                        <p class="font-size-h1 pb-5"><strong>0. 简介</strong></p>
                                                        <div class="example-preview">
                                                            <p>Netch 是一款运行在 Windows 系统上的开源游戏加速工具，简单易上手。也可以用于日常的网页浏览等。</p>
                                                            <p>其能在网络层拦截所有连接并转发给HTTP，SOCKS4，5，SHADOWSOCKS代理, 而无需对被代理的应用程序做任何修改或设置。</p>
                                                            <p>它能同时转发TCP, UDP数据包。它非常适合于游戏玩家使用。</p>
                                                            <p>享受你的游戏时光！请使用Netch！</p>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic.imgdb.cn/item/621372f22ab3f51d91662253.png" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:50%" src="https://pic.imgdb.cn/item/621372f22ab3f51d91662253.png"/></a>
                                                    </div>
                                                </div>

                                                <div class="separator separator-dashed separator-border-4"></div>

                                                <div class="row p-5">
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <p class="font-size-h1 pb-5"><strong>1. 下载客户端</strong></p>
                                                        <p class="mb-2">本站提供的Netch是进行定制删减模式了的，旨在提供更加轻便易懂的版本</p>
                                                        <p class="mb-2">如需原版请自行前往此处<a href="https://download.ovor.cc/download/netch">下载</a></p>
                                                        <a href="{$metron['client_windows']['netch']['down']}" class="btn btn-pill btn-sstap mb-4" target="_blank">&nbsp;&nbsp;<i class="metron-sstap text-white"></i>下载 Netch 客户端</a>
                                                        <p class="mb-2">解压下载得到的压缩包，全部解压哈，如果不会解压的话，请百度吧，很多通俗易懂的教程的</p>
                                                        <p class="mb-2">双击打开解压文件里的Netch.exe</p>
                                                        <p class="mb-2">因为Netch想要拦截网络上的所有流量，就必须建立一个虚拟网卡，以此让所有网络流量都经过虚拟网卡，这样才能实现“真 · 全局代理”。</p>
                                                        <p class="mb-2">所以 按下图所示，勾选 始终信任来自….的软件。</p>
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic.imgdb.cn/item/6224c4ec5baa1a80ab7d4f86.png" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic.imgdb.cn/item/6224c4ec5baa1a80ab7d4f86.png"/></a>
                                                    </div>
                                                </div>

                                                <div class="separator separator-dashed separator-border-4"></div>

                                                <div class="row p-5">
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <p class="font-size-h1 pb-5"><strong>2. 设置订阅地址</strong></p>
                                                        <div class="btn-group mb-3 mr-3">
                                                            <button type="button" class="btn btn-pill btn-v2ray copy-text" data-clipboard-text="{$subInfo["v2ray"]}">&nbsp;&nbsp;<i class="metron-ssr1 text-white"></i>复制 Netch 订阅&nbsp;&nbsp;</button>
                                                        </div>
                                                        <p class="mb-2">在上方菜单栏，依次选择<code>订阅</code>-><code>订阅管理</code></p>
                                                        <p class="mb-2">将订阅地址粘贴到 <code>链接</code> 一栏, 并点击 <code>添加</code></p>
                                                        <p class="mb-2">然后直接右上角点 <code>X</code> </p>
                                                        <p class="mb-2">再次点击上方菜单栏，依次选择<code>订阅</code> - <code>更新服务器</code></p>
                                                        <p class="mb-2">如果以后需要更新链接，按照上一步操作就行 </p>
                                                        
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic.imgdb.cn/item/6224c4a75baa1a80ab7d20d1.png" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic.imgdb.cn/item/6224c4a75baa1a80ab7d20d1.png"/></a>
                                                    </div>
                                                </div>

                                                <div class="separator separator-dashed separator-border-4"></div>

                                                <div class="row p-5">
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <p class="font-size-h1 pb-5"><strong>3. 选择节点并开启代理</strong></p>
                                                        <p class="mb-2">点击右侧闪电标志可以测试所有节点的可用性，单击下拉按钮，根据实际状况获，选择合适节点</code> </p>
                                                        <p class="mb-2">点击模式一栏. 直接选择 <code>By pass Lan and China</code></p>
                                                        <br>
                                                        <i class="mb-2">*特制版就特殊在这，删除了很多模式，就剩下两个个了，含义分别是</i>
                                                        <br>
                                                        <i class="mb-2">*<code>Bypass Lan</code>代理跳过本地网络，就是代理所有网站</i>
                                                        <br>
                                                        <i class="mb-2">*<code>Bypass Lan and China</code>代理跳过本地网络和中国网络，就是只代理国外网站</i>
                                                        <br>
                                                        <br>
                                                        <p class="mb-2">点击 <code>启动</code> 开启代理</p>
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic.imgdb.cn/item/6224c5925baa1a80ab7dc009.png" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic.imgdb.cn/item/6224c5925baa1a80ab7dc009.png"/></a>
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
        <script src="{$metron['assets_url']}/plugins/tutorial/lightbox/lightbox.min.js" type="text/javascript"></script>
    </body>
</html>