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
                                        <h2 class="text-white font-weight-bold my-2 mr-5">Clash for Android 使用教程</h2>
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
                                                            <p><code>Clash</code>是一款用 Go语言 开发的支持 Linux/MacOS/Windows/Android 等多平台的代理工具，支持 ss/v2ray（不支持 ssr），支持规则分流（类似于 Surge 的配置）。</p>
                                                            <p>由于客户端长期更新中可能出现界面或功能与教程不符，我们建议您把本教程仅作为参考，具体需要根据自己使用过程中熟悉了解。</p>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic.imgdb.cn/item/6225df895baa1a80ab5eda9a.jpg" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic.imgdb.cn/item/6225df895baa1a80ab5eda9a.jpg"/></a>
                                                    </div>
                                                </div>

                                                <div class="separator separator-dashed separator-border-4"></div>

                                                <div class="row p-5">
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <p class="font-size-h1 pb-5"><strong>1. 下载客户端</strong></p>
                                                        <a href="{$metron['client_android']['clash']['down']}" class="btn btn-pill btn-clash mb-4">&nbsp;&nbsp;<i class="metron-clash text-white"></i>下载 Clash 客户端</a>&nbsp;&nbsp;&nbsp;
                                                        <p class="mb-2">下载客户端并进行安装</p>
                                                        <p class="mb-2">启动客户端并进行下面操作</p>
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic.imgdb.cn/item/6225e02e5baa1a80ab5fbf95.jpg" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic.imgdb.cn/item/6225e02e5baa1a80ab5fbf95.jpg"/></a>
                                                    </div>
                                                </div>

                                                <div class="separator separator-dashed separator-border-4"></div>

                                                <div class="row p-5">
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <p class="font-size-h1 pb-5"><strong>2. 设置订阅地址</strong></p>
                                                        {if in_array('clash',$metron['index_sub'])}
                                                        <div class="btn-group mb-3 mr-3">
                                                            <button type="button" class="btn btn-pill btn-clash dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">&nbsp;&nbsp;<i class="metron-clash text-white"></i>Clash 订阅配置&nbsp;&nbsp;</button>
                                                            <div class="dropdown-menu">
                                                                <button type="button" class="dropdown-item copy-text" data-clipboard-text="{$subInfo["clash"]}">复制 Clash 订阅</button>
                                                                <div class="dropdown-divider">
                                                                </div>
                                                                <button type="button" class="dropdown-item" href="##" onclick="importSublink('clash')">一键导入 Clash</button>
                                                            </div>
                                                        </div>
                                                        {/if}
                                                        <p class="mb-2">点击上方按钮一键导入节点配置到Clash</p>
                                                        <p class="mb-2">文件名填入 <code>{$config["appName"]}</code></p>
                                                        <p class="mb-2">然后点击右上角的 <code>√</code> 完成导入</p>
                                                        <p class="mb-2">再次打开软件，进入 <code>配置文件</code> 选中刚刚导入的节点配置</p>
                                                        <div class="alert alert-custom alert-outline-primary fade show mb-5" role="alert">
                                                            <div class="alert-icon">
                                                                <i class="flaticon-warning"></i>
                                                            </div>
                                                            <div class="alert-text">
                                                                <p class="mb-2">无法一键导入? 试试手动设置订阅</p>
                                                                <p class="mb-2">先复制 Clash 订阅地址</p>
                                                                <p class="mb-2">打开APP 进入 <code>配置</code> - 选择 <code>新配置</code> - <code>URL</code> </p>
                                                                <p class="mb-2">粘贴订阅地址到 URL 一栏, 名称填写 {$config["appName"]}, 点击右上角保存</p>
                                                                <p class="mb-2">回到 <code>配置文件</code> 选中刚刚导入的节点配置</p>
                                                            </div>
                                                            <div class="alert-close">
                                                                <button type="button" class="close" data-dismiss="alert" aria-label="关">
                                                                    <span aria-hidden="true">
                                                                        <i class="ki ki-close"></i>
                                                                    </span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic.imgdb.cn/item/6225e02e5baa1a80ab5fbf95.jpg" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic.imgdb.cn/item/6225e02e5baa1a80ab5fbf95.jpg"/></a>
                                                    </div>
                                                </div>

                                                <div class="separator separator-dashed separator-border-4"></div>

                                                <div class="row p-5">
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <p class="font-size-h1 pb-5"><strong>3. 开启代理</strong></p>
                                                        <p class="mb-2">点击 <code>已停止</code> 按钮将状态切换至<code>运行中</code></p>
                                                        <p class="mb-2">点击 <code>控制面板</code> 按钮进入节点配置界面</p>
                                                        <p class="mb-2">根据规则设置节点即可</p>
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic.imgdb.cn/item/6225e04b5baa1a80ab5feaf2.jpg" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic.imgdb.cn/item/6225e04b5baa1a80ab5feaf2.jpg"/></a>
                                                    </div>
                                                </div>
                                                
                                                <div class="separator separator-dashed separator-border-4"></div>
                                                
                                                <div class="row p-5">
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <p class="font-size-h1 pb-5"><strong>4. 选择节点</strong></p>
                                                        <p class="mb-2">按照下方规则，选择合适配置即可</pp>
                                                        <br/>
                                                        <p class="mb-2">如图有许多个菜单栏，每个菜单栏都可以下拉。每个菜单栏都包含有自己的规则，如果访问的网站匹配到了某个菜单栏的规则，则clash会使用该菜单栏下所选的节点，各个菜单栏含义如下:</p>
                                                        <p class="mb-2">🚀直接连接  不使用代理服务器，而是使用你自己的网络</p>
                                                        <p class="mb-2">各个节点选项  如果访问的网站匹配到了当前菜单栏记录的网站，则使用选中的节点</p>
                                                        <p class="mb-2">🔰国外流量  记录了一些国外的网站，但是并不是所有的国外网站，建议在此菜单栏下选择一个节点</p>
                                                        <p class="mb-2">⚓️其他流量  假如访问的网站没有一个菜单栏是匹配的，则会汇聚到这个菜单栏</p>
                                                        <p class="mb-2">各个app名字 访问网站假如是所对应的app，这使用该菜单栏下规则</p>
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic.imgdb.cn/item/6225e0dc5baa1a80ab607add.jpg" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic.imgdb.cn/item/6225e0dc5baa1a80ab607add.jpg"/></a>
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
