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
                                        <h2 class="text-white font-weight-bold my-2 mr-5">Clash for Windows 使用教程</h2>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center">

                                </div>
                            </div>
                        </div>

                        <div class="d-flex flex-column-fluid">
                            <div class="container">

                                <!-- 开始 :: 教程内容 -->
                                <div class="row" data-sticky-container>
                                    <div class="col-12">
                                        <div class="card card-custom gutter-b {$metron['style_shadow']}">
                                            <div class="card-header">
                                                <div class="card-title">
                                                </div>
                                            </div>
                                            <div class="card-body">

<!-- 开始 :: 内容段落 1 -->
                                                <div class="row p-5">

                                                    <!-- 开始 :: 段落文本区 -->
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <!-- 开始 :: 段落标题 -->
                                                        <p class="font-size-h1 pb-5"><strong>0. 简介</strong></p>
                                                        <!-- 结束 :: 段落标题 -->
                                                        <div class="example-preview">
                                                            <p><code>Clash</code>是一款用 Go语言 开发的支持 Linux/MacOS/Windows/Android 等多平台的代理工具，支持 v2ray/trojan），支持规则分流，可以完成广告过滤以及跳过不需要代理的网站，因此强烈建议使用。</p>
                                                            <p>由于客户端长期更新中可能出现界面或功能与教程不符，我们建议您把本教程仅作为参考，具体需要根据自己使用过程中熟悉了解。</p>
                                                            <code>Clash for Windows 仅支持Windows 64位系统，32位系统请选用其他客户端</code>
                                                        </div>
                                                    </div>
                                                    <!-- 结束 :: 段落文本区 -->

                                                    <!-- 开始 :: 图片 -->
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <!-- 图片点击打开的灯箱高清图 -->
                                                        <a class="image-popup-no-margins" href="{$metron['assets_url']}/media/tutorial/windows/clashr/clashr.png" data-lightbox="images">
                                                        <!-- 页面显示的图片缩略图 -->
                                                        <img class="rounded-lg" style="width:100%" src="{$metron['assets_url']}/media/tutorial/windows/clashr/clashr.png"/></a>
                                                    </div>
                                                    <!-- 结束 :: 图片 -->

                                                </div>
<!-- 结束 :: 内容段落 1 -->

                                                <!-- 开始 :: 分割线 -->
                                                <div class="separator separator-dashed separator-border-4"></div>
                                                <!-- 结束 :: 分割线 -->

<!-- 开始 :: 内容段落 2 -->
                                                <div class="row p-5">
                                                    <!-- 段落内容 -->
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <!-- 开始 :: 段落标题 -->
                                                        <p class="font-size-h1 pb-5"><strong>1. 下载客户端</strong></p>
                                                        <!-- 结束 :: 段落标题 -->
                                                        <!-- 开始 :: 客户端下载按钮 -->
                                                        <a href="{$metron['client_windows']['clash']['down']}" class="btn btn-pill btn-clash mb-4" target="_blank">&nbsp;&nbsp;<i class="metron-clash text-white"></i>下载 sClash 客户端</a>&nbsp;&nbsp;&nbsp;
                                                        <!-- 结束 :: 客户端下载按钮 -->
                                                        <div class="h6 pt-2">本站特制clash，加入了中文(教程的图片用的是英文版，不过没关系，选项位置都是对应的)<br />下载安装后从桌面打开<br />或在目录中打开 <code>Clash for Windows.exe</code></div>
                                                    </div>
                                                    <!-- 开始 :: 图片 -->
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic.imgdb.cn/item/6224ca7d5baa1a80ab80d8ac.png" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic.imgdb.cn/item/6224ca7d5baa1a80ab80d8ac.png"/></a>
                                                    </div>
                                                    <!-- 结束 :: 图片 -->
                                                </div>
<!-- 结束 :: 内容段落 2 -->

                                                <!-- 开始 :: 分割线 -->
                                                <div class="separator separator-dashed separator-border-4"></div>
                                                <!-- 结束 :: 分割线 -->

<!-- 开始 :: 内容段落 3 -->
                                                <div class="row p-5">
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <!-- 开始 :: 段落标题 -->
                                                        <p class="font-size-h1 pb-5"><strong>2. 设置订阅地址</strong></p>
                                                        <!-- 结束 :: 段落标题 -->
                                                        <!-- 开始 :: 订阅按钮 -->
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
                                                        {if in_array('clashr',$metron['index_sub'])}
                                                        <div class="btn-group mb-3 mr-3">
                                                            <button type="button" class="btn btn-pill btn-clash dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">&nbsp;&nbsp;<i class="metron-clash"></i>ClashR 订阅配置&nbsp;&nbsp;</button>
                                                            <div class="dropdown-menu">
                                                                <button type="button" class="dropdown-item copy-text" data-clipboard-text="{$subInfo["clashr"]}">复制 ClashR 订阅</button>
                                                                <div class="dropdown-divider">
                                                                </div>
                                                                <button type="button" class="dropdown-item" href="##" onclick="importSublink('clashr')">一键导入 ClashR</button>
                                                            </div>
                                                        </div>
                                                        {/if}
                                                        <!-- 结束 :: 订阅按钮 -->
                                                        <div class="h6 pt-2">点击上方按钮一键导入节点配置到Clash/ClashR</div>
                                                        <div class="h6 pt-2">导入成功后， <code>Profiles</code> 界面会多出一个配置选项卡</div>
                                                        <div class="h6 pt-2">点击选中刚刚导入的配置选项卡</div>
                                                        <div class="h6 pt-2">如果弹出配置错误提示，请重启客户端并重新选中刚刚导入的配置</div>
                                                        <div class="h6 pt-2"></div>
                                                        <div class="alert alert-custom alert-outline-primary fade show mb-5" role="alert">
                                                            <div class="alert-icon">
                                                                <i class="flaticon-warning"></i>
                                                            </div>
                                                            <div class="alert-text">
                                                                <p class="mb-2">无法一键导入? 试试手动设置订阅</p>
                                                                <p class="mb-2">1. 复制 Clash 订阅链接，点击 Clash for Windows 窗口左侧的 <code>Profiles</code>。</p>
                                                                <p class="mb-2">2. 在 <code>Profiles</code> 页面顶部，粘贴 Clash 配置订阅链接，随后点击 <code>Download</code> 下载配置文件。</p>
                                                                <p class="mb-2">3. 下载成功后，Clash for Windows 将自动切换配置文件。</p>
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
                                                        <a class="image-popup-no-margins" href="https://pic.imgdb.cn/item/6224cb6e5baa1a80ab816d25.png" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic.imgdb.cn/item/6224cb6e5baa1a80ab816d25.png"/></a>
                                                    </div>
                                                </div>
<!-- 结束 :: 内容段落 3 -->

                                                <!-- 开始 :: 分割线 -->
                                                <div class="separator separator-dashed separator-border-4"></div>
                                                <!-- 结束 :: 分割线 -->

<!-- 开始 :: 内容段落 4 -->
                                                <div class="row p-5">
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <!-- 开始 :: 段落标题 -->
                                                        <p class="font-size-h1 pb-5"><strong>3. 选择节点</strong></p>
                                                        <!-- 结束 :: 段落标题 -->
                                                        <div class="h6 pt-2">点击 <code>Profiles</code> 选项切换到代理节点界面</div>
                                                        <br/>
                                                        <div class="h6 pt-2">如图有许多个菜单栏，每个菜单栏都可以下拉。每个菜单栏都包含有自己的规则，如果访问的网站匹配到了某个菜单栏的规则，则clash会使用该菜单栏下所选的节点，各个菜单栏含义如下:</div>
                                                        <div class="h6 pt-2">🚀直接连接  不使用代理服务器，而是使用你自己的网络</div>
                                                        <div class="h6 pt-2">各个节点选项  如果访问的网站匹配到了当前菜单栏记录的网站，则使用选中的节点</div>
                                                        <div class="h6 pt-2">🔰国外流量  记录了一些国外的网站，但是并不是所有的国外网站，建议在此菜单栏下选择一个节点</div>
                                                        <div class="h6 pt-2">⚓️其他流量  假如访问的网站没有一个菜单栏是匹配的，则会汇聚到这个菜单栏</div>
                                                        <div class="h6 pt-2">各个app名字 访问网站假如是所对应的app，这使用该菜单栏下规则</div>
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic.imgdb.cn/item/6225cb3d5baa1a80ab4a6595.png" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic.imgdb.cn/item/6225cb3d5baa1a80ab4a6595.png"/></a>
                                                    </div>
                                                </div>
<!-- 结束 :: 内容段落 4 -->

                                                <!-- 开始 :: 分割线 -->
                                                <div class="separator separator-dashed separator-border-4"></div>
                                                <!-- 结束 :: 分割线 -->

<!-- 开始 :: 内容段落 5 -->
                                                <div class="row p-5">
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <!-- 开始 :: 段落标题 -->
                                                        <p class="font-size-h1 pb-5"><strong>4. 配置设备代理</strong></p>
                                                        <!-- 结束 :: 段落标题 -->
                                                        <b class="h6 pt-2">这一步骤只需要第一次安装时需要操作！</b>
                                                        <br/>
                                                        <div class="h6 pt-2">点击 <code>General</code> 选项切换到通用界面</div>
                                                        <div class="h6 pt-2">点击 <code>Service Mode</code> 右边的Manage，进入服务的安装界面</div>
                                                        <div class="h6 pt-2">点击 <code>install</code>按钮</div>
                                                        <div class="h6 pt-2">等待clash一会，其会自行重启</div>
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic1.imgdb.cn/item/63553aac16f2c2beb17f3daf.png" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic1.imgdb.cn/item/63553aac16f2c2beb17f3daf.png"/></a>
                                                    </div>
                                                </div>
<!-- 结束 :: 内容段落 5 -->
                                                <!-- 开始 :: 分割线 -->
                                                <div class="separator separator-dashed separator-border-4"></div>
                                                <!-- 结束 :: 分割线 -->

<!-- 开始 :: 内容段落 6 -->
                                                <div class="row p-5">
                                                    <div class="col-sm-12 col-md-12 col-lg-7 pb-5">
                                                        <!-- 开始 :: 段落标题 -->
                                                        <p class="font-size-h1 pb-5"><strong>5. 开启代理</strong></p>
                                                        <!-- 结束 :: 段落标题 -->
                                                        <div class="h6 pt-2">点击 <code>General</code> 选项切换到通用界面</div>
                                                        <div class="h6 pt-2">打开 <code>TUN Mode</code> 开关；其他保持默认即可。</div>
                                                        <div class="h6 pt-2">一切准备就绪~~~</div>
                                                    </div>
                                                    <div class="col-sm-12 col-md-12 col-lg-5">
                                                        <a class="image-popup-no-margins" href="https://pic1.imgdb.cn/item/63553c2516f2c2beb1821646.png" data-lightbox="images">
                                                        <img class="rounded-lg" style="width:100%" src="https://pic1.imgdb.cn/item/63553c2516f2c2beb1821646.png"/></a>
                                                    </div>
                                                </div>
<!-- 结束 :: 内容段落 6 -->



                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 结束 :: 教程内容 -->
                                
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