<template>
    <div>
        <div class="magnify">
            <div class="top">
                <img :src="pics[i].bg">
                <div class="mask" v-show="maskShow" :style="maskStyle"></div>
                <div class="super-mask" @mouseover="toggle" @mouseout="toggle" @mousemove="maskMove"></div>
                <div class="div-bg" v-show="maskShow">
                    <img :src="pics[i].bg" :style="imgStyle">
                </div>
            </div>
            <div class="bottom">
                <div class="sm_pic">
                    <div class="btn btn-left iconfont icon-dayuhao"  @click="move(-1)" :class="{disabled:leftDisabled,on:!leftDisabled}"></div>
                    <ul :style="ulStyle">
                        <li v-for="(item,i) of pics" :key="i" @mouseover="changei(i)">
                            <img :src="item.sm">
                        </li>
                    </ul>
                    <div class="btn btn-right iconfont icon-xiaoyuhao"  @click="move(1)" :class="{disabled:rightDisabled,on:!rightDisabled}"></div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            maskWidth:176,
            maskHeight:176,
            superWidth:450,
            superHeight:400,
            bgImgWidth:800,
            bgImgHeight:800,
            maskShow:false,
            maskStyle:{
                left:0,
                top:0
            },
            imgStyle:{
                left:0,
                top:0
            },
            liWidth:78,
            ulStyle:{  //控制ul的样式
                "margin-left":0,  //绑定margin-left
            },
            times:0,//记录左移的次数
            i:0,    //记录当前正在显示第几张图片
            pics:[
               {
                   bg:"images/detail/01_bg.png",
                   sm:"images/detail/01_sm.png"
               },
               {
                   bg:"images/detail/02_bg.png",
                   sm:"images/detail/02_sm.png"
               },
               {
                   bg:"images/detail/03_bg.png",
                   sm:"images/detail/03_sm.png"
               },
               {
                   bg:"images/detail/04_bg.png",
                   sm:"images/detail/04_sm.png"
               },
               {
                   bg:"images/detail/05_bg.png",
                   sm:"images/detail/05_sm.png"
               },
               {
                   bg:"images/detail/06_bg.png",
                   sm:"images/detail/06_sm.png"
               }
           ]
        }
    },
    computed:{
        leftDisabled(){  //左边按钮的禁用状态
            return this.times==0;
        },
        btnleft(){  //左边按钮的禁用状态
            return this.times==0;
        },
        rightDisabled(){  //右边按钮的禁用状态
            return this.pics.length<=5||this.times==this.pics.length-5;
        },
        btnright(){  //右边按钮的禁用状态
            return this.pics.length<=5||this.times==this.pics.length-5;
        },
    },
    watch:{
        times(){   //当times自动变化时，自动修改ul的左边距
            this.ulStyle["margin-left"]=-this.times*this.liWidth+"px";   //带特殊符号要用中括号加引号，不能用点
        },
        pics(){
            this.ulStyle.width=this.pics.length*this.liWidth+'px';
        },
    },
    methods:{
        maskMove(e){
            //计算遮罩的移动距离
            var left=e.offsetX-this.maskWidth/2;
            var top=e.offsetY-this.maskWidth/2;
            //计算遮罩的最大移动距离
            var maxX=this.superWidth-this.maskWidth;
            var maxY=this.superHeight-this.maskHeight;
            //计算移动的边界
            if(left<0){left=0}
            else if(left>maxX){left=maxX}
            if(top<0){top=0}
            else if(top>maxY){top=maxY}
            //计算比例 遮罩的实际移动距离(left,top)与遮罩的最大移动距离的比值(maxX,maxY)===大图片的实际移动距离(bgleft,bgtop)和大图片的最大移动距离(大图片的宽度减去父级容器的宽度,大图片的高度减去父级容器的高度)
            var px=left/maxX;
            var py=top/maxY;
            top+="px";
            left+="px";
            //给遮罩加样式
            this.maskStyle={left,top}
            //计算大图片的移动距离
            var bgleft=(this.bgImgWidth-this.superWidth)*px;
            var bgtop=(this.bgImgHeight-this.superHeight)*py;
            this.imgStyle.left=-bgleft+"px";
            this.imgStyle.top=-bgtop+"px";
        },
        toggle(){
            this.maskShow=!this.maskShow;
        },
        move(i){
        //当点的时左边按钮，且左边按钮未被禁用或者点的时右边按钮，且右边按钮未被禁用
            if((i==-1&&this.leftDisabled==false)||(i==1&&this.rightDisabled==false)){
                this.times+=i;
                if(this.times<0){
                this.times==0
                }else if(this.times>this.pics.length-5){
                this.times=this.pics.length-5
                }
            }
        },
        //当鼠标进入每个li时，修改data中i变量的值，为当前li的下标。
        changei(i){
        this.i=i;
        //data中i改变，导致中图片的src和大图片的background-image自动同时变化。
        }
    }
}
</script>
<style scoped>
    *{
        margin:0;
        padding:0;
    }
    .magnify{
        width:100%;
    }
    .top{
        width:100%;
        height:400px;
        position: relative;
    }
    .top img{
        width:100%;
        height:400px;
    }
    .top .mask{
        position: absolute;
        top:0px;
        left:0px;
        z-index:2;
        opacity:.5;
        width: 176px;
        height: 176px;
        background-color: #666;
        opacity:.7;
    }
    .top .super-mask{
        width:100%;
        height:100%;
        border:1px solid #ddd;
        position: absolute;
        top:0px;
        left:0px;
        z-index:3;
        cursor:move;
    }
    .top .div-bg{
        width:450px;
        height:400px;
        position: absolute;
        top:0px; left:100%;
        border:1px solid #ddd;
        overflow:hidden;
        margin-left:20px;
        background: #fff;
    }
    .top .div-bg img{
        width:800px;
        height:800px;
        position:absolute;
        left:0px;
        left:0px;
    }

    .bottom{
        width:100%;
        height:90px;
        display: flex;
        justify-content: center;
        align-items: center;
        margin:15px 0px;
        position: relative;
    }
    .bottom div.sm_pic{
        width:390px;
        height:100%;
        overflow:hidden;
        border-top: 1px solid #aaa;
        border-bottom: 1px solid #aaa;
    }

    .bottom div.btn{
        width:30px;
        height:100%;
        font-size: 30px;
        text-align: center;
        line-height:90px;
        position: absolute;
        z-index:2;
        cursor:not-allowed
    }
    .bottom div.on{
        background: #aaa;
        cursor: pointer;
    }
    .bottom div.btn-left{
        top:0;
        left:0px;
    }
    .bottom div.btn-right{
        top:0;
        right:0px;
    }
    .bottom ul{
        width:1630px;
        height:100%;
        list-style: none;
        overflow: hidden;
    }
    .bottom ul li{
        padding:5px 0px;
        box-sizing: border-box;
        cursor: pointer;
        float:left;
    }
    .bottom ul li:hover{
        background:rgba(255,0,0,.2);
    }
    .bottom ul li img{
        width:78px;
        height:78px;
    }
</style>