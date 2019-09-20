<template>
    <div>
        <advertisement />
        <my-header />
       <div class="container">
            <!--固定搜索框-->
            <div class="search_fixed" :class="{on:isShowed}">
                <div class="left">
                    <img src="images/background/SXppnESYv4K11DBxDFc2.png"/>
                </div>
                <div class="right">
                    <input placeholder="请输入搜索内容"/>
                    <button>搜索</button>
                </div>
            </div>
            <!--楼层滚动-->
            <div class="floor_scroll" :class="{on:isShowed}">
                <div class="iconfont icon-HUAWEICopy"></div>
                <ul>
                    <li><span>精品推荐</span></li>
                    <li><span>手机</span></li>
                    <li><span>笔记本电脑</span></li>
                    <li><span>精品平板</span></li>
                    <li><span>精选配件</span></li>
                    <li class="last"><span>返回顶部</span></li>
                </ul>
            </div>
            <!--侧边菜单栏-->
            <div class="category">
                <div class="category_l">
                    <ul>
                        <li>
                            <a href="#"><span class="top">手机</span></a>
                            <div>
                                <a href="#"><span>荣耀系列</span></a>
                                <a href="#"><span>HUAWEI P系列</span></a>
                            </div>
                            <div class="category_r">
                                    <div>
                                        <a href="#"><img src="images/index/category/phone/01.png" alt=""><span>荣耀</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/index/category/phone/02.png" alt=""><span>HUAWEI P系列</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/index/category/phone/03.png" alt=""><span>HUAWEI Mate系列</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/background/三角箭头_右.png" alt=""><span>查看全部</span></a>
                                    </div>
                            </div>
                        </li>
                        <li>
                            <a href="#"><span class="top">笔记本 & 平板</span></a>
                            <div>
                                <a href="#"><span>平板电脑</span></a>
                                <a href="#"><span>笔记本电脑</span></a>
                            </div>
                            <div class="category_r">
                                    <div>
                                        <a href="#"><img src="images/index/category/computer/01.png" alt=""><span>平板电脑</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/index/category/computer/02.png" alt=""><span>笔记本电脑</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/index/category/computer/03.png" alt=""><span>笔记本配件</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/background/三角箭头_右.png" alt=""><span>查看全部</span></a>
                                    </div>
                            </div>
                        </li>
                        <li>
                            <a href="#"><span class="top">智能穿戴</span></a>
                            <div>
                                <a href="#"><span>手环</span></a>
                                <a href="#"><span>手表</span></a>
                            </div>
                            <div class="category_r">
                                    <div>
                                        <a href="#"><img src="images/index/category/wear/01.png" alt=""><span>手环</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/index/category/wear/02.png" alt=""><span>手表</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/index/category/wear/03.png" alt=""><span>VR</span></a>
                                    </div>
                                    <div>
                                            <a href="#"><img src="images/background/三角箭头_右.png" alt=""><span>查看全部</span></a>
                                    </div>
                            </div>
                        </li>
                        <li>
                            <a href="#"><span class="top">智能家居</span></a>
                            <div>
                                <a href="#"><span>路由器</span></a>
                                <a href="#"><span>电视盒子</span></a>
                            </div>
                            <div class="category_r">
                                    <div>
                                        <a href="#"><img src="images/index/category/home/01.png" alt=""><span>路由器</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/index/category/home/02.png" alt=""><span>电视盒子</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/index/category/home/03.png" alt=""><span>电视盒子</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/background/三角箭头_右.png" alt=""><span>查看全部</span></a>
                                    </div>
                            </div>
                        </li>
                        <li>
                            <a href="#"><span class="top">热销配件</span></a>
                            <div>
                                <a href="#"><span>耳机</span></a>
                                <a href="#"><span>保护壳</span></a>
                            </div>
                            <div class="category_r">
                                    <div>
                                        <a href="#"><img src="images/index/category/accessory/01.png" alt=""><span>耳机</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/index/category/accessory/02.jpg" alt=""><span>保护壳</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/index/category/accessory/03.png" alt=""><span>移动电源</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/background/三角箭头_右.png" alt=""><span>查看全部</span></a>
                                    </div>
                            </div>
                        </li>
                        <li>
                            <a href="#"><span class="top">增值服务 & 其他</span></a>
                            <div>
                                <a href="#"><span>AI 计算平台</span></a>
                                <a href="#"><span>增值卡</span></a>
                            </div>
                            <div class="category_r">
                                    <div>
                                        <a href="#"><img src="images/index/category/value_services/01.png" alt=""><span>AI 计算平台</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/index/category/value_services/02.png" alt=""><span>增值卡</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/index/category/value_services/03.png" alt=""><span>服务器</span></a>
                                    </div>
                                    <div>
                                        <a href="#"><img src="images/background/三角箭头_右.png" alt=""><span>查看全部</span></a>
                                    </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!--大轮播图-->
            <div id="demo1" class="carousel mt-1" data-ride="carousel">
                <!-- 轮播图-->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="w-100" src="images/carousel01/01.jpg" alt=""/>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="images/carousel01/02.jpg" alt=""/>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="images/carousel01/03.jpg" alt=""/>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="images/carousel01/04.jpg" alt=""/>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="images/carousel01/05.jpg" alt=""/>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="images/carousel01/06.jpg" alt=""/>
                    </div>
                </div>
                <!-- 左右箭头-->
                <a  data-slide="prev" href="#demo1" class="carousel-control-prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a data-slide="next" href="#demo1" class="carousel-control-next">
                    <span class="carousel-control-next-icon"></span>
                </a>
                <!-- 轮播指示器-->
                <ul class="carousel-indicators">
                    <li data-slide-to="0" data-target="#demo1" class="active"></li>
                    <li data-slide-to="1" data-target="#demo1"></li>
                    <li data-slide-to="2" data-target="#demo1"></li>
                    <li data-slide-to="3" data-target="#demo1"></li>
                    <li data-slide-to="4" data-target="#demo1"></li>
                    <li data-slide-to="5" data-target="#demo1"></li>
                </ul>
            </div>
            <!-- 导航栏-->
            <div class="menu_index">
                <ul class="list-unstyled">
                    <li>
                        <div class="left float-left">
                            <img class="float-left mt-4" :src="uAvatar">
                            <div class="float-left mt-2">
                                <p class="m-0 mb-1" v-if="!islogin">您好！请 <router-link to="/login">登录</router-link> | <a href="#">注册</a></p>
                                <p class="islogin" v-if="islogin"><span>欢迎您 !</span><span>{{uName}}</span></p>
                                <p><a href="#">新人福利</a>
                                    <a href="#">会员频道</a></p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <ul class="center float-left">
                            <li class="font_size mx-2">
                                <a href="#"><div class="pic_01"></div>企业购特惠</a>
                            </li>
                            <li class="font_size mx-2">
                                <a href="#"><div class="pic_02"></div>以旧换新</a>
                            </li>
                            <li class="font_size mx-2">
                                <a href="#"><div class="pic_03"></div>会员领劵</a>
                            </li>
                            <li class="font_size mx-2">
                                <a href="#"><div class="pic_04"></div>nova 5 Pro</a>
                            </li>
                            <li class="font_size mx-2">
                                <a href="#"><div class="pic_05"></div>荣耀数码</a>
                            </li>
                            <li class="font_size mx-2">
                                <a href="#"><div class="pic_06"></div>华为数码</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <ul class="right">
                            <div class="announcement">
                                <announcement />
                            </div>
                            <ul>
                                <li class="font_size  float-left">
                                    <a href="#"><div class="pic_07 float-left"></div>
                                    <p class="float-left m-0">优购码</p></a>
                                </li>
                                <li class="font_size  float-left">
                                    <a href="#"><div class="pic_08 float-left"></div>
                                    <p class="float-left m-0">实名认证</p></a>
                                </li>
                                <li class="font_size  float-left">
                                    <a href="#"><div class="pic_09 float-left"></div>
                                   <p class="float-left m-0">补购保障</p></a>
                                </li>
                            </ul>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- F4-->
            <div class="F4">
                <ul class="d-flex list-unstyled">
                    <li>
                        <a href="#"><img src="images/index/F4/01.jpg" alt=""/></a>
                        <div class="float_box">探索美的边界，造就强大的力量<br>颠覆光，重构影</div>
                    </li>
                    <li>
                        <a href="#"><img src="images/index/F4/02.jpg" alt=""/></a>
                        <div class="float_box">定格奇幻之美，无惧黑暗。<br>广纳天地，见微知微</div>
                    </li>
                    <li>
                        <a href="#"><img src="images/index/F4/03.jpg" alt=""/></a>
                        <div class="float_box">拍你所见，暗光逆光都清晰<br>荣耀品质，经得起考验</div>
                    </li>
                    <li>
                        <a href="#"><img src="images/index/F4/04.png" alt=""/></a>
                        <div class="float_box">一眼心动，一触流连<br>让美尽善尽美</div>
                    </li>
                </ul>
            </div>  
            <!-- 精品推荐-->
            <!--<div id="recommend" class="recommend">
                <h2 class="pt-3">精品推荐</h2>
                <ul>
                    <li>
                        <a href="#">
                            <img src="images/index/phones/a09.png" alt=""/>
                            <p>HUAWEI P30 Pro</p>
                            <p>准点赠好礼</p>
                            <p>￥5488</p>
                        </a>
                    </li>
                    <li>
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
                    </li>
                </ul>
            </div>-->

            <recommend />

            <!--小轮播图-->
            <div id="demo2" class="carousel" data-ride="carousel">
                <!-- 轮播图 -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="w-100" src="images/carousel02/01.jpg" alt=""/>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="images/carousel02/02.jpg" alt=""/>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="images/carousel02/03.jpg" alt=""/>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="images/carousel02/04.jpg" alt=""/>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="images/carousel02/05.jpg" alt=""/>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="images/carousel02/06.jpg" alt=""/>
                    </div>
                </div>
                <!-- 轮播指示器-->
                <ul class="carousel-indicators">
                    <li data-slide-to="0" data-target="#demo2" class="active"></li>
                    <li data-slide-to="1" data-target="#demo2"></li>
                    <li data-slide-to="2" data-target="#demo2"></li>
                    <li data-slide-to="3" data-target="#demo2"></li>
                    <li data-slide-to="4" data-target="#demo2"></li>
                    <li data-slide-to="5" data-target="#demo2"></li>
                </ul>
            </div>
            <!--手机-->
            <div id="phone" class="floor-1">
                <div class="top">
                    <h2>手机</h2>
                    <ul>
                        <li><a href="#">HUAWEI Mate系列</a></li>
                        <li><a href="#">荣耀</a></li>
                        <li><a href="#">HUAWEI P系列</a></li>
                        <li><a href="#">荣耀畅玩系列</a></li>
                        <li><a href="#">HUAWEI nova系列</a></li>
                        <li><a href="#">华为畅享系列</a></li>
                        <li><a href="#">HUAWEI 麦芒系列</a></li>
                        <li><a href="#">移动4G+专区</a></li>
                    </ul>
                    <div><a href="#">查看更多 ></a></div>
                </div>
                <div class="bottom">
                    <ul>
                        <li v-for="(item,i) of product.phone" :key="i">
                            <router-link :to="item.href">
                                <img :src="item.pic" alt=""/>
                                <p v-text="item.title"></p>
                                <p v-text="item.details">准点赠好礼</p>
                                <p>￥{{item.price}}</p>
                            </router-link>
                            <div v-text="item.tag" class="label">爆款</div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 笔记本-->
            <div id="computer" class="floor-2">
                <div class="top">
                    <h2>笔记本电脑</h2>
                    <ul>
                        <li><a href="#">平板电脑</a></li>
                        <li><a href="#">笔记本电脑</a></li>
                        <li><a href="#">笔记本配件</a></li>
                    </ul>
                    <div><a href="#">查看更多 ></a></div>
                </div>
                <div class="bottom">
                    <ul>
                         <li v-for="(item,i) of product.computer" :key="i">
                            <router-link :to="item.href">
                                <img :src="item.pic" alt=""/>
                                <p v-text="item.title"></p>
                                <p v-text="item.details">准点赠好礼</p>
                                <p>￥{{item.price}}</p>
                            </router-link>
                            <div v-text="item.tag" class="label">爆款</div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 平板-->
            <div id="talet" class="floor-3">
                <div class="top">
                    <h2>精品平板</h2>
                    <ul>
                        <li><a href="#">平板电脑</a></li>
                        <li><a href="#">笔记本电脑</a></li>
                        <li><a href="#">笔记本配件</a></li>
                    </ul>
                    <div><a href="#">查看更多 ></a></div>
                </div>
                <div class="bottom">
                    <ul>
                         <li v-for="(item,i) of product.tablet" :key="i">
                            <router-link :to="item.href">
                                <img :src="item.pic" alt=""/>
                                <p v-text="item.title"></p>
                                <p v-text="item.details">准点赠好礼</p>
                                <p>￥{{item.price}}</p>
                            </router-link>
                            <div v-text="item.tag" class="label">爆款</div>
                        </li>
                       
                    </ul>
                </div>
            </div>
            <!-- 精品配件-->
            <div id="accessory" class="floor-3">
                <div class="top">
                    <h2>精品配件</h2>
                    <ul>
                        <li><a href="#">平板电脑</a></li>
                        <li><a href="#">笔记本电脑</a></li>
                        <li><a href="#">笔记本配件</a></li>
                    </ul>
                    <div><a href="#">查看更多 ></a></div>
                </div>
                <div class="bottom">
                    <ul>
                         <li v-for="(item,i) of product.accessory" :key="i">
                            <router-link :to="item.href">
                                <img :src="item.pic" alt=""/>
                                <p v-text="item.title"></p>
                                <p v-text="item.details">准点赠好礼</p>
                                <p>￥{{item.price}}</p>
                            </router-link>
                            <div v-text="item.tag" class="label">爆款</div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 侧边栏 
            <span class="r_side">
                <a href="#"><img src="images/background/购物车.png"></a>  
                <a href="#"><img src="images/background/在线客服.png"></a>
                <a href="#"><img src="images/background/意见反馈.png"></a> 
                <a href="#"><img class="R_top" src="images/background/返回顶部.png"></a>      
            </span>-->
        </div>
        <div class="ad_left">
            <carousel />
        </div>
        <navRight />
        <my-footer />
    </div>
</template>
<script>
import recommend from "../components/Recommend"
import advertisement from "../components/Advertisement"
import navRight from "../components/Nav_right"
import announcement from "../components/Announcement"
import carousel from "../components/Carousel"
export default {
    data(){
        return{
            islogin:false,
            uName:"",
            uAvatar:"images/users-avatar/default.png",
            isShowed:false,
            product:{
                phone:[],
                computer:[],
                tablet:[],
                accessory:[],
            },
           
        }
    },
    mounted () {
        //监听滚动
        window.addEventListener('scroll', this.handleScroll)
    },
    watch:{
      
    },
    created() {
        this.load()
        this.is_Login()
    },
    methods: {
        /*滚动高度*/
        handleScroll (e) {
            var scrollTop=document.documentElement.scrollTop
            scrollTop>526?this.isShowed=true:this.isShowed=false
        },
        is_Login(){
            var uid=sessionStorage.getItem("uid")
            var user_name=sessionStorage.getItem("user_name")
            var avatar=sessionStorage.getItem("avatar")
            if(uid){
                this.islogin=true,
                this.uName=user_name,
                this.uAvatar=avatar
            }
        },
        //加载后台数据
        load:function(){
            var url=this.host+"/index";
            this.axios.get(url).then(result=>{
                //解构出商品数据和轮播图片
                var {product}=result.data;
                product.forEach((elem,i)=>{
                    // console.log(elem.family_id)
                    if(elem.family_id==1){
                        this.product.phone.push(elem)
                    }else if(elem.family_id==2){
                        this.product.computer.push(elem)
                    }else if(elem.family_id==3){
                        this.product.tablet.push(elem)
                    }else{
                        this.product.accessory.push(elem)
                    }
                });
               
            })
        }
    },
    components:{recommend,advertisement,navRight,announcement,carousel},
}
</script>
<style>
    @import url("../assets/css/index.css")
</style>