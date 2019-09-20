<template>
    <div>
        <div class="nav">
                <div class="side_top">
                    <a href="javascript:;">
                        <span class="iconfont icon-kefu"></span>
                        <p>客服</p>
                        <div>在线客服</div>	
                    </a>
                    <a href="javascript:;">
                        <span class="iconfont icon-fankui"></span>
                        <p>反馈</p>
                        <div>意见反馈</div>	
                    </a>
                    <a href="javascript:;">
                        <span class="iconfont icon-bangzhu"></span>
                        <p>帮助</p>
                        <div>使用帮助</div>	
                    </a>
                    <a href="javascript:;">
                        <span class="iconfont icon-tuiguang"></span>
                        <p>推广</p>
                        <div>推广咨询</div>	
                    </a>
                </div>
                <div class="side_bottom">
                    <a href="#">
                        <span class="iconfont icon-dayuhao1"></span>
                        <div>返回顶部</div>	
                    </a>
                </div>
		</div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
    /* 导航栏 */
.nav{
    width:40px;
    height:100%;
    border-left:1px solid #eee;
    position: fixed;
    top:0px;
    right:0px;
    background: #fff;
}
.nav .side_top{
    width:100%;
    text-align: center;
    position: absolute;
    top:30%;
}
.nav .side_bottom{
    width:100%;
    position: absolute;
    top:92%;
}
.nav .side_top a,.nav .side_bottom a{
    display: inline-block;
    width:100%;
    position: relative;
    padding:5px 0px;
    box-sizing: border-box;
    text-align: center;
    margin:0px;
    z-index:3;
}

.nav .side_top a p{
    font-size: 14px;
    color:#666;
    margin:0px;
}
.nav .side_top a div{
    width:0px;
    height:40px;
    line-height:40px;
    background: #666;
    position: absolute;
    top:10px;
    right:37px;
    font-size: 16px;
    color:#fff;
    transition: all .3s linear;
    z-index:-999;
}
.nav .side_bottom a div{
    width:90px;
    height:37px;
    line-height:28px;
    background: #666;
    position: absolute;
    top:0px;
    right:37px;
    font-size: 15px;
    padding:5px 10px;
    color:#fff;
    transition: all .3s linear;
    display:none;
}
.nav .side_top a:hover div,.nav .side_bottom a:hover div{
    display: block;
    width:90px;
} 
.nav .side_top a:hover,.nav .side_bottom a:hover{
    background:#ccc;
}
</style>