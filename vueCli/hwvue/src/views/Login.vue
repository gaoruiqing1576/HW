<template>
  <div>
      <div class="header_login">
			<div class="top" @click="toIndex">
				<div class="left">
					<img src="images/background/HUAWEI.png">
				</div>
				<p>|</p>
				<div class="right">华为商城</div>
			</div>	
		</div>
		<div class="nav_login"><span>依据《网络安全法》，为保障您的帐号安全与正常使用，请尽快绑定您的手机号，感谢您的理解及支持！</span></div>
		<div class="b_g">
			<div class="middle">
				<div class="login">
					<div class="one">
						<span :class="{on:zhanghao}" @click="zhanghao_login">账号登录</span>	
						<span>|</span>	
						<span :class="{on:saoma}" @click="saoma_login">扫码登录</span>	
					</div>
					<div id="zhanghao" v-if="zhanghao">
						<div class="two">
							<input v-model="uname" type="text" placeholder="手机号/邮件地址/华为号">
							<span :class="unameclass">{{unameMsg}}</span>
                            <input v-model="upwd" type="text" placeholder="密码">
							<span :class="upwdclass">{{upwdMsg}}</span>
						</div>
						<div class="varify" data-toggle="varify" data-target="varify">
							<span @click="vartify_login">短信验证码登录</span>
						</div>
						<button @click="login">登录</button>
						<div class="three">
							<span>
								<input id="jzhwzh" type="checkbox" title="在公共电脑上不要选择此项">
								<label for="jzhwzh"> 记住华为账号</label>
							</span>
							<span><a class="more" href="#">更多</a></span>
						</div>
						<div class="four">
							<div><a href="#">注册账号</a> | <a href="#">忘记密码？</a></div>
						</div>
						<div class="five">
							<p>其他登录方式</p>
						</div>
						<div class="six">
							<a href="#"><img src="images/background/QQ.png"></a>
							<a href="#"><img src="images/background/微博1.png"></a>
							<a href="#"><img src="images/background/支付宝.png"></a>
							<a href="#"><img src="images/background/微信1.png"></a>
						</div>
					</div>
					<div id="saoma" v-if="saoma">
						<div>
							<img src="images/background/下载.png">
						</div>
						<p>使用<a href="">华为移动服务APP</a>扫一扫</p>
						<p>若您使用华为手机，请进入“设置”>“华为帐号”扫码登录。</p>
					</div>
					<div id="varify" v-if="vartify">
						<span><a href="javascript:;" @click="cancel_login">&lt;返回</a></span>
						<div>
							<input type="text" placeholder="请输入手机号">
							<input type="text" placeholder="短信验证码">
							<input type="submit" value="获取验证码">
						</div>
						<span>
							<input id="jzhwzh" type="checkbox" title="在公共电脑上不要选择此项">
							<label for="jzhwzh"> 记住华为账号</label>
						</span> 
						<button>登录</button>
					</div>
				</div>
			</div>
		</div>
		<div class="bottom_login">
			<p>
				<a href="#">华为帐号用户协议</a> | <a href="#">关于华为帐号与隐私的声明</a> | <a href="#">常见问题</a>
			</p>
			<p>
			Copyright © 2011-2019  华为软件技术有限公司  版权所有  保留一切权利  苏B2-20070200号 | 苏ICP备09062682号-9
			</p>
		</div>
  </div>
</template>

<script>
export default {
    data(){
        return{
            uname:"",
            unameclass:{
                suc:false,
                fail:false
            },
            unameMsg:"",
            upwd:"",
            upwdclass:{
                suc:false,
                fail:false
            },
            upwdMsg:"",
            vartify:false,
            saoma:false,
            zhanghao:true,
        }
    },
    watch:{
        uname(){
            var reg=/^\w{6,12}$/;
            var msg1="用户名格式正确";
            var msg2="用户名格式不正确(6-12位)";
            if(reg.test(this.uname)==true){
                this.unameMsg=msg1;
                this.unameclass={
                    suc:true,
                    fail:false
                }
            }else{//否则，验证不通过时
                this.unameMsg=msg2;
                this.unameclass={
                    suc:false,
                    fail:true
                }
            }
        },
        upwd(){
            var reg=/^\w{6,12}$/;
            var msg1="密码格式正确";
            var msg2="密码格式不正确(6-12位)";
            if(reg.test(this.upwd)==true){
                this.upwdMsg=msg1;
                this.upwdclass={
                    suc:true,
                    fail:false
                }
            }else{//否则，验证不通过时
                this.upwdMsg=msg2;
                this.upwdclass={
                    suc:false,
                    fail:true
                }
            }
        }
    },
    methods:{
        toIndex(){
            this.$router.push("/")
        },
        login(){
            if(this.unameMsg=="用户名格式正确"&&this.upwdMsg=="密码格式正确"){
                var url=this.host+"/login";
                this.axios.get(url,
                    {params:{
                        uname:this.uname,
                        upwd:this.upwd
                    }}
                ).then(result=>{
                    console.log(result)
                    if(result.data.code==-1){
                       alert("用户名或密码有误")
                    }else{
                    //7.2登录成功,跳转到商品首页
                    //vue 一个组件完成自动跳转到其它组件 
                        alert("登录成功");
                        sessionStorage.setItem("uid",result.data.data.uid)
                        sessionStorage.setItem("user_name",result.data.data.user_name)
                        sessionStorage.setItem("avatar",result.data.data.avatar)
                        this.$router.push("/")
                    }
                })
            }else{
                alert("请注意用户名或密码格式是否正确")
            }
        },
        vartify_login(){
            this.vartify=true;
        },
        cancel_login(){
            this.vartify=false;
        },
        saoma_login(){
            this.saoma=true;
            this.zhanghao=false
        },
        zhanghao_login(){
            this.saoma=false;
            this.zhanghao=true
        }
    }
}
</script>

<style>
    @import url("../assets/css/login.css")
</style>