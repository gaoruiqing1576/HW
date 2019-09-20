<template>
    <div>
        <div id="carousel" @mouseenter="stop" @mouseleave="start" v-if="carousel_dis">
            <div id="btn-left" @click="move(1)"></div>
            <ul id="ul-imgs" :style="ulStyle" :class="ulClass">
              <li v-for="(img,i) of imgs" :key="i">
                  <div class="subtitle" @click="close">X</div>
                  <router-link :to="img.to">
                    <img :src="img.src" />
                    <div class="title" v-text="img.title"></div>
                  </router-link>
              </li>
              <!--注意！最后li个数要比实际图片张数多1，最后一个li里的img是重复第一张li的图片-->
              <li>
                  <router-link :to="imgs[0].to">
                      <img :src="imgs[0].src" />
                      <div class="title" v-text="imgs[0].title"></div>
                  </router-link>
              </li>
            </ul>
            <div id="btn-right" @click="move(-1)"></div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
      return {
        carousel_dis:true,
        liWidth:200,
        ulClass:{ hasTrans:true },
        i:0,
        imgs:[
          {
            src:"https://c.58cdn.com.cn/crop/pc/union/images/luna_zx/house/20150810/house220_2202px.jpg",
            title:"广告位招租！！！",
            to:"javascript:;"
          },
          {
            src:"https://c.58cdn.com.cn/crop/pc/union/images/luna_zx/jiazheng/20150810/housekeeping220_2205px.jpg",
            title:"广告位招租！！！",
            to:"javascript:;"
          },
          {
            src:"https://c.58cdn.com.cn/crop/pc/union/images/luna_zx/car/20150810/car220_2201.jpg",
            title:"广告位招租！！！",
            to:"javascript:;"
          },
          {
            src:"https://c.58cdn.com.cn/crop/pc/union/images/luna_zx/pet/20150810/pet220_2203px.jpg",
            title:"广告位招租！！！",
            to:"javascript:;"
          }
          
        ],
        canClick:true,
        timer:null
      }
    },
    methods:{
      close(){
        this.carousel_dis=false
      },
      stop(){
        clearInterval(this.timer);
      },
      start(){
        this.timer=setInterval(()=>{
          this.move(1);
        },3000)
      },
      move(i){
        if(this.canClick){
          this.canClick=false;
          if(i==-1&&this.i==0){
            this.ulClass.hasTrans=false;
            setTimeout(()=>{
              this.i=this.imgs.length;
              setTimeout(()=>{
                this.ulClass.hasTrans=true;
                this.i+=i;
                setTimeout(()=>{
                  this.canClick=true;
                },200)
              },50)
            },50)
          }else if(i==1&&this.i==this.imgs.length-1){
            this.i+=i;
            setTimeout(()=>{
              this.ulClass.hasTrans=false;
              setTimeout(()=>{
                this.i=0;
                setTimeout(()=>{
                  this.ulClass.hasTrans=true;
                  setTimeout(()=>{
                    this.canClick=true;
                  })
                },50)
              },50)
            },200)
          }else{
            this.i+=i;
            setTimeout(()=>{
              this.canClick=true;
            },300)
          }
        }
      }
    },
    computed:{
      ulStyle(){
          var marginLeft=-this.i*this.liWidth+"px";
          var width=this.liWidth*(this.imgs.length+1)+"px";
          return { width, marginLeft }
      }
    }
}
</script>
<style scoped>
          *{margin:0px;padding:0px;box-sizing: border-box;}
      #carousel{
        width:200px;
        height:200px;
        position:relative;
        overflow: hidden;
        margin:0 auto;
      }
      #btn-left{
        width:20px;
        height:30px;
        position: absolute;
        top:40%;
        left:0px;
        background-image: url(../../public/images/background/l_r_3.png);
        background-repeat: no-repeat;
        background-position:0px -50px;
        cursor: pointer;
        display: none;
      }
      #btn-right{
        width:20px;
        height:30px;
        position: absolute;
        top:40%;
        right:0px;
        background-image: url(../../public/images/background/l_r_3.png);
        background-repeat: no-repeat;
        background-position:0px 0px;
        cursor: pointer;
        display: none;
      }
      #carousel:hover #btn-left{
        display: block;
      }
      #carousel:hover #btn-right{
        display: block;
      }
      #btn-left:hover{
        display: block;
        background-image: url(../../public/images/background/l_r_3.png);
        background-position:0px -100px;
      }
      #btn-right:hover{
        display: block;
        background-image: url(../../public/images/background/l_r_3.png);
        background-position:0px -150px;
      }
      #carousel ul#ul-imgs{
        width:200px;
        height:200px;
        list-style: none;
      }
      #carousel ul#ul-imgs.hasTrans{
        transition:all .2s linear;
      }
      #carousel ul#ul-imgs li{
        width:200px;
        float: left;
      }
      #carousel ul#ul-imgs li img{
        width:200px;
        height:200px;
      }
      #carousel ul#ul-imgs li div.title{
        width:200px;
        height:30px;
        background:#f46520;
        color:#fff;
        font-size: 18px;
        font-family:微软雅黑;
        line-height: 28px;
        text-align: center;
        position: absolute;
        bottom:0px;
        left:0px;
      }
      #carousel ul#ul-imgs li div.subtitle{
        width:25px;
        height:29px;
        background:#f46520;
        color:#fff;
        font-size: 25px;
        font-family:微软雅黑;
        line-height: 21px;
        text-align: center;
        border-radius: 0 0 0 100px;
        position: absolute;
        top:0px;
        right:-5px;
        z-index:990;
        cursor: pointer;
      }
</style>