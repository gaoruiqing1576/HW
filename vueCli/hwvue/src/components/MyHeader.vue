<template>
    <div>
        <div class="container p-0">
			<div class="layout">
				<div class="layout_left float-left">
					<ul class="d-flex">
						<li><router-link to="/">首页</router-link></li>
						<li>|</li>	
						<li><a href="#">华为官网</a></li>
						<li>|</li>	
						<li><a href="#">荣耀官网</a></li>
						<li>|</li>	
						<li><a href="#">花粉俱乐部</a></li>
						<li>|</li>	
						<li><a href="#">V码(优购码) </a></li>
						<li>|</li>	
						<li><a href="#">企业购</a></li>
						<li>|</li>	
						<li><a href="#">Select Region</a></li>
						<li>|</li>	
						<li class="drop_down_one">
							<a href="#">更多精彩<img src="images/background/大于号_下.png"></a>
							<div class="out">
								<div><a href="#">EMUI</a></div>
								<div><a href="#">应用市场</a></div>
								<div><a href="#">华为云终端</a></div>
								<div><a href="#">开发者联盟</a></div>
							</div>
						</li>
					</ul>
				</div>
				<div class="layout_right">
					<ul class="d-flex" v-if="isLogin">
						<li><a href="javascript:;" @click="login">请登录</a></li>
						<li>|</li>	
						<li><a href="#">注册</a></li>
						<li>|</li>
					</ul>
					<ul v-if="!isLogin">
						<li>
							<div>欢迎您!{{uName}}</div>
						</li>
						<li>|</li>	
					</ul>
					<ul>	
						<li><a href="#">我的订单</a></li>
						<li>|</li>	
						<li class="drop_down_one">
							<a href="#">客户服务<img src="images/background/大于号_下.png"></a>
							<div class="out">
									<div><a href="#">服务中心</a></div>
									<div><a href="#">联系客服</a></div>
							</div>
						</li>
						<li>|</li>	
						<li class="drop_down_two">
							<a href="#">网站导航<img src="images/background/大于号_下.png"></a>
							<div class="icon">
								<div>
									<p><img src="images/background/商城.png" alt=""></p>
									<h2><a href="#">商城首页</a></h2>
								</div>
								<div>
									<h2>频道</h2>
									<span><a href="#">华为专区</a></span>
									<span><a href="#">荣耀专区</a></span>
									<span><a href="#">企业购</a></span>
								</div>
								<div>
									<h2>产品</h2>
									<span><a href="#">手机</a></span>
									<span><a href="#">笔记本&平板</a></span>
									<span><a href="#">热销配件</a></span>
								</div>
								<div>
									<h2>增值服务</h2>
									<span><a href="#">以旧换新</a></span>
									<span><a href="#">礼品包装</a></span>
									<span><a href="#">补购保障</a></span>	
								</div>
								<div>
									<h2>会员</h2>
									<span><a href="#">会员频道</a></span>
								</div>
							</div>	
						</li>
						<li>|</li>	
						<li  class="drop_down_three">
							<a href="#">手机版<img src="images/background/大于号_下.png"></a>
							<div class="icon">
								<div>
									<img src="images/background/华为商城APP.png">
									<p><a href="#">华为商城APP</a></p>
								</div>
								<div>
									<img src="images/background/华为商城公众号.jpg">
									<p><a href="#">华为商城公众号</a></p>
								</div>
								<div>
									<img src="images/background/微信小程序.jpg">
									<p><a href="#">微信小程序</a></p>
								</div>
							</div>
						</li>
						<li>|</li>	
						<li  class="drop_down_four">
							<a href="javascript:;" @click="judgeLogin"><img src="images/background/购物车.png">购物车(<em>{{$store.getters.getCartCount}}</em>)</a>
							<!-- <div>
								<img src="images/background/空购物车.png">
								<p>您的购物车是空的，赶紧选购吧~</p>
							</div>	 -->
						</li>
					</ul>
				</div>
			</div>			
			<div class="header_detail">
				<div class="layout">
					<div class="left">
						<a href="#" class="logo">
							<img src="images/background/SXppnESYv4K11DBxDFc2.png" alt="">
						</a>
						<div class="naver">
							<ul>
								<li  class="computer_drop">
									<a href="#" class="brand">手机</a>
									<!--手机-->
									<div class="phone">
										<div class="top">
											<ul>
												<li><a href="#">全部手机</a></li>
												<li><a href="#">></a></li>
												<li><a href="#">荣耀</a></li>
												<li><a href="#">HUAWEI P系列</a></li>
												<li><a href="#">HUAWEI Mate系列</a></li>
											</ul>
										</div>
										<div class="bottom">
											<ul>
												<li>
													<a href="#">
														<img src="images/index/phones/a01.png" alt=""/>
														<p>HUAWEI Mate 10</p>
														<p>￥3399</p>
													</a>
												</li>
												<li>
													<a href="#">
														<img src="images/index/phones/a02.png" alt=""/>
														<p>HUAWEI Mate 20 Pro</p>
														<p>￥5499</p>
													</a>
												</li>
												<li>
													<a href="#">
														<img src="images/index/phones/a03.png" alt=""/>
														<p>荣耀10</p>
														<p>￥1999</p>
													</a>
												</li>
												<li>
													<a href="#">
														<img src="images/index/phones/a04.png" alt=""/>
														<p>荣耀20</p>
														<p>￥2699</p>
													</a>
												</li>
												<li>
													<a href="#">
														<img src="images/index/phones/a05.png" alt=""/>
														<p>荣耀20i</p>
														<p>￥1599</p>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</li>
								<li class="computer_drop">
									<a href="#" class="brand">笔记本 & 平板</a>
									<!-- 笔记本-->
									<div class="computer">
										<div class="top">
											<ul>
												<li><a href="#">全部笔记本 & 平板</a></li>
												<li><a href="#">></a></li>
												<li><a href="#">平板电脑</a></li>
												<li><a href="#">笔记本电脑</a></li>
												<li><a href="#">笔记本配件</a></li>
											</ul>
										</div>
										<div class="bottom">
											<ul>
												<li>
													<a href="#">
													<img src="images/index/computers/b02.png" alt=""/>
													<p>HUAWEI MateBook X Pro 2019</p>
													<p>￥8999</p>
													</a>
												</li>
												<li>
													<a href="">
													<img src="images/index/computers/b03.png" alt=""/>
													<p>HUAWEI MateBook E 2019款</p>
													<p>￥3999</p>
													</a>
												</li>
												<li>
													<a href="">
													<img src="images/index/computers/b04.png" alt=""/>
													<p>HUAWEI MateBook 14</p>
													<p>￥6999</p>
													</a>
												</li>
												<li>
													<a href="">
													<img src="images/index/computers/b05.png" alt=""/>
													<p>HUAWEI MateBook 13</p>
													<p>￥5699</p>
													</a>
												</li>
												<li>
													<a href="">
													<img src="images/index/computers/b06.png" alt=""/>
													<p>荣耀MagicBook 2019 锐龙版</p>
													<p>￥3999</p>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</li>
								<li class="computer_drop">
									<a href="#" class="brand">智能穿戴</a>
									<!--智能穿戴-->
									<div class="wear">
										<div class="top">
											<ul>
												<li><a href="#">全部智能穿戴</a></li>
												<li><a href="#">></a></li>
												<li><a href="#">手表</a></li>
												<li><a href="#">手环</a></li>
												<li><a href="#">VR</a></li>
											</ul>
										</div>
										<div class="bottom">
											<ul>
												<li>
													<a href="#">
													<img src="images/index/wear/01.png" alt=""/>
													<p>荣耀手表</p>
													<p>￥899</p>
													</a>
												</li>
												<li>
													<a href="">
													<img src="images/index/wear/02.png" alt=""/>
													<p>华为手环 pro 3</p>
													<p>￥399</p>
													</a>
												</li>
												<li>
													<a href="">
													<img src="images/index/wear/03.png" alt=""/>
													<p>HUAWEI VR 2</p>
													<p>￥1999</p>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</li>
								<li class="computer_drop">
									<a href="#" class="brand">智能家居</a>
									<div class="home">
										<div class="top">
											<ul>
												<li><a href="#">全部智能家居</a></li>
												<li><a href="#">></a></li>
												<li><a href="#">路由器</a></li>
												<li><a href="#">电视盒子</a></li>
												<li><a href="#">照明</a></li>
											</ul>
										</div>
										<div class="bottom">
											<ul>
												<li>
													<a href="#">
													<img src="images/index/home/01.png" alt=""/>
													<p>荣耀路由 pro 2</p>
													<p>￥329</p>
													</a>
												</li>
												<li>
													<a href="">
													<img src="images/index/home/02.png" alt=""/>
													<p>华为路由 Q2 pro</p>
													<p>￥799</p>
													</a>
												</li>
												<li>
													<a href="">
													<img src="images/index/home/03.png" alt=""/>
													<p>华为 AI 音响</p>
													<p>￥399</p>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</li>
								<li class="computer_drop">
									<a href="#" class="brand">热销配件</a>
									<div class="accessory">
										<div class="top">
											<ul>
												<li><a href="#">全部热销配件</a></li>
												<li><a href="#">></a></li>
												<li><a href="#">保护壳</a></li>
												<li><a href="#">移动电源</a></li>
												<li><a href="#">耳机</a></li>
											</ul>
										</div>
										<div class="bottom">
											<ul>
												<li>
													<a href="#">
													<img src="images/index/accessary/01.png" alt=""/>
													<p>华为超级快充移动电源</p>
													<p>￥369</p>
													</a>
												</li>
												<li>
													<a href="">
													<img src="images/index/accessary/02.png" alt=""/>
													<p>荣耀运动蓝牙耳机</p>
													<p>￥179</p>
													</a>
												</li>
												<li>
													<a href="">
													<img src="images/index/accessary/03.png" alt=""/>
													<p>荣耀无线耳机</p>
													<p>￥699</p>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</li>
								<li class="computer_drop">
									<a href="#" class="brand">增值服务 & 其他</a>
									<div class="value_services">
										<div class="top">
											<ul>
												<li><a href="#">全部增值服务</a></li>
												<li><a href="#">></a></li>
												<li><a href="#">AI计算平台</a></li>
												<li><a href="#">增值卡</a></li>
												<li><a href="#">服务器</a></li>
											</ul>
										</div>
										<div class="bottom">
											<ul>
												<li>
													<a href="#">
													<img src="images/index/value_services/01.png" alt=""/>
													<p>华为音乐会员卡</p>
													<p>￥12</p>
													</a>
												</li>
												<li>
													<a href="">
													<img src="images/index/value_services/02.png" alt=""/>
													<p>云服务花呗卡</p>
													<p>￥100</p>
													</a>
												</li>
												<li>
													<a href="">
													<img src="images/index/value_services/03.png" alt=""/>
													<p>华为视频</p>
													<p>￥189</p>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</li>
							</ul>	
						</div>
					</div>
					<div class="right search" >
						<button @click="search"></button>
						<input class="text" type="text" placeholder="请输入您要搜索的内容">
						<div>
							<a href="#">nova 5 pro</a>
							<a href="#">荣耀 20i</a>
						</div>
						<ul >
							<li>热门搜索</li>
							<li>nova 5i</li>
							<li>荣耀20</li>
							<li>HUWWEI P30</li>
							<li>HUWWEI P30 pro</li>
						</ul>
					</div>	
				</div>
			</div>
		</div>
    </div>
</template>
<script>
export default {
    data(){
		return{
			uName:"",
			isLogin:true,
			user_name:""
		}
	},
	created(){
		this.load()
		this.is_Login()
	},
	methods: {
		load(){
			var uid=sessionStorage.getItem("uid");
			if(uid){
				this.isLogin=false
			}
		},
		 is_Login(){
            var uid=sessionStorage.getItem("uid")
            var user_name=sessionStorage.getItem("user_name")
            if(uid){
                this.islogin=true,
                this.uName=user_name
            }
        },
		judgeLogin(){
			var uid=sessionStorage.getItem("uid");
			if(uid){
				this.$router.push("/cart")
			}else{
				alert("请您先登录")
				this.$router.push("/login")
			}
		},
		search(){
			this.$router.push("/search")
		},
		login(){
			this.$router.push("/login")
		}
	},
}
</script>
<style>
    @import url("../assets/css/header_detail.css");
</style>