<template>
    <div>
       <div id="recommend" class="recommend">
            <h2>精品推荐</h2>
            <div class="mask">
                <div class="btn btn-left iconfont icon-dayuhao"  @click="move(-1)" :class="{disabled:leftDisabled,on:!leftDisabled}"></div>
                <ul :style="ulStyle" :class="ulClass">
                    <li v-for="(pro,i) of product" :key="i">
                        <a href="#">
                            <img :src="pro.pic" alt=""/>
                            <p v-text="pro.title"></p>
                            <p v-text="pro.details"></p>
                            <p>￥{{pro.price}}</p>
                        </a>
                        <div class="label" v-text="pro.tag">直降</div>
                    </li>
                    <!--<li>
                        <a href="#">
                            <img src="images/index/phones/a02.png" alt=""/>
                            <p>HUAWEI Mate 20 Pro</p>
                            <p>准点赠好礼</p>
                            <p>￥5499</p>
                        </a>
                        <div class="label">直降</div>
                    </li>
                    <li>
                        <a href="">
                            <img src="images/index/computers/b02.png" alt=""/>
                            <p>HUAWEI MateBook X Pro 2019款</p>
                            <p>最高直降200+6期免息 </p>
                            <p>￥8999</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="images/index/computers/b05.png" alt=""/>
                            <p>HUAWEI MateBook 13</p>
                            <p>最高直降200+6期免息 </p>
                            <p>￥5699</p>
                        </a>
                        <div class="label">直降</div>
                    </li>
                    <li>
                        <a href="#">
                            <img src="images/index/phones/a04.png" alt=""/>
                            <p>荣耀20</p>
                            <p>准点赠好礼</p>
                            <p>￥2699</p>
                        </a>
                    </li>-->
                </ul>
                <div class="btn btn-right iconfont icon-xiaoyuhao"  @click="move(1)" :class="{disabled:rightDisabled,on:!rightDisabled}"></div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            liWidth:240,
            product:[
                {
                    pic:"images/index/phones/a02.png",
                    title:"HUAWEI P30 Pro",
                    details:"准点赠好礼",
                    tag:"直降",
                    price:"5484.00"
                },
                {
                    pic:"images/index/phones/a03.png",
                    title:"HUAWEI Mate 20 RS",
                    details:"准点赠好礼",
                    tag:"直降",
                    price:"5488.00"
                },
                {
                    pic:"images/index/phones/a04.png",
                    title:"HUAWEI P30 Pro",
                    details:"准点赠好礼",
                    tag:"直降",
                    price:"5488.00"
                },
                {
                    pic:"images/index/phones/a05.png",
                    title:"HUAWEI P30 Pro",
                    details:"准点赠好礼",
                    tag:"直降",
                    price:"5488.00"
                },
                {
                    pic:"images/index/phones/a06.png",
                    title:"HUAWEI P30 Pro",
                    details:"准点赠好礼",
                    tag:"直降",
                    price:"5488.00"
                },
                {
                    pic:"images/index/phones/a07.png",
                    title:"HUAWEI P30 Pro",
                    details:"准点赠好礼",
                    tag:"直降",
                    price:"5488.00"
                },
                {
                    pic:"images/index/phones/a08.png",
                    title:"HUAWEI P30 Pro",
                    details:"准点赠好礼",
                    tag:"直降",
                    price:"5488.00"
                },
                {
                    pic:"images/index/phones/a09.png",
                    title:"HUAWEI P30 Pro",
                    details:"准点赠好礼",
                    tag:"直降",
                    price:"5488.00"
                },
                {
                    pic:"images/index/phones/a10.png",
                    title:"HUAWEI P30 Pro",
                    details:"准点赠好礼",
                    tag:"直降",
                    price:"5488.00"
                },
                {
                    pic:"images/index/phones/a11.png",
                    title:"HUAWEI P30 Pro",
                    details:"准点赠好礼",
                    tag:"直降",
                    price:"5488.00"
                },
            ],
            times:0,
            ulClass:{ hasTrans:true },
            timer:null,
        }
    },
    methods:{
        move(i){
            console.log(this.times)
            if((i==-1&&this.leftDisabled==false)||(i==1&&this.rightDisabled==false)){
                this.times+=i;
                if(this.times<0){
                    this.times==0
                }else if(this.times>this.product.length-5){
                    this.times=this.product.length-5
                }
            }
        }
    },
    computed:{
        ulStyle(){
          var marginLeft=-this.liWidth*this.times+"px";
          var width=this.liWidth*(this.product.length+1)+"px";
          return { width, marginLeft }
        },
        leftDisabled(){  //左边按钮的禁用状态
            return this.times==0;
        },
        rightDisabled(){  //右边按钮的禁用状态
            return this.times==this.product.length-5;
        }
    }
}
</script>  
<style scoped>
    *{
        padding:0px;
        margin:0px;
        box-sizing: border-box;
    }
    .recommend{
        width:1200px;
        box-sizing: border-box;
    }
    .recommend::before{
        content: "";
        display: table;
    }
    .recommend h2{
        width:100%;
        font-size:26px;
        color:#333;
        margin:0;
        margin: 10px 0px;
    }
    
    .recommend div.mask{
        width:100%;
        position: relative;
        overflow: hidden;
        border-top:1px dashed #ddd;
        border-bottom:1px dashed #ddd;
    }
    .recommend div.mask div.btn{
        width:30px;
        height:50px;
        border:1px solid #f00;
        font-size: 20px;
        text-align: center;
        line-height:46px;
        position: absolute;
        z-index:2;
        cursor:not-allowed
    }
    .recommend div.mask div.on{
        background: #aaa;
        cursor: pointer;
    }
    .recommend div.btn-left{
        top:40%;
        left:10px;
    }
    .recommend div.btn-right{
        top:40%;
        right:0px;
    }
    .recommend div.mask ul{
        width:100%;
        display: flex;
        margin:0 auto;
        list-style: none;
    }
    .recommend ul.hasTrans{
        transition:all .2s linear;
    }
    .recommend ul li{
        width:230px;
        height:290px;
        text-align: center;
        margin-left: 10px;
        margin-bottom: 12px;
        position: relative;
    }
    .recommend ul li:hover{
        box-shadow: 0 0 5px #ddd;
    }
    .recommend ul li:hover div.label{
        height:30px;
        opacity: 1;
    }
    .recommend ul li img{
        width:150px;height:150px;
        margin-top:48px;
    }

    /*放大*/
    .recommend ul li img:hover{
        transform: scale(1.1);
        opacity:.8;
    }



    .recommend ul li p:nth-child(2){
        width:150px;
        overflow:hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
        font-size: 14px;
        color:#3A3A3A;
        margin:12px 10px 0px;
    }
    .recommend ul li p:nth-child(3){
        font-size: 12px;
        color:#777;
        margin:5px 20px 7px;
        padding:0 10px;
    }
    .recommend ul li p:nth-child(4){
        font-size: 14px;
        color:#D00218;
        margin: 0;
    }
</style>