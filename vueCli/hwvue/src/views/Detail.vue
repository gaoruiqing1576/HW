<template>
    <div>
        <my-header />
        <div class="container p-0">
            <div class="pro_top font_size"> <a href="#"> 首页 </a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp; <a href="#">手机</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<a href="#">荣耀</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;{{product.title}} {{product.subtitle}}</div> 
            <div class="pro_body">       
                <div class="pro_detail">
                <!--引入放大镜组件-->
                    <magnify />
                </div>
                <div class="pic_r">
                        <h1 v-text="product.title">荣耀10 GT游戏加速 AIS手持夜景 AI摄影手机 6GB+64GB 幻影紫 全网通 双卡双待 荣耀10GT</h1>
                        <span class="subtitle" v-text="product.subtitle">【到手价：1699元】爆款限时优惠 400元，下单再减100元，限时抢购！ 麒麟970AI芯片|GPU Turbo|手持超级夜景</span>
                        <div class="price">
                                <div class="top">
                                        <span class="font_size top_1">价&nbsp;&nbsp;&nbsp;&nbsp;格</span><span class="top_2">抢购价 ￥{{product.price}}.00</span><del class="top_3">￥{{parseInt(product.price)+1500}}</del>
                                </div>  
                                <div class="bottom">
                                        <span class="font_size top_1">促&nbsp;&nbsp;&nbsp;&nbsp;销</span><span class="top_2">限时优惠</span><span class="top_3">限时直降400元</span>
                                        <div>
                                                <span class="top_2">下单立减</span><span class="top_3">下单立减100元</span>
                                        </div>  
                                        <div>
                                                <span class="top_2">整点赠送</span><span class="top_3">限时直降400元</span>
                                        </div>
                                </div>
                                    
                        </div>
                        <span class="font_size">服务说明： √ 已满48元已免运费 √ 由华为商城负责发货，并提供售后服务</span>
                        <div class="color font_size">
                               选择颜色
                                <span>
                                    <a href="#"><img src="images/phone-pic/small/02_sm.jpg">{{product.color}}</a> 
                                </span>  
                                <!--<span>
                                    <a href="#"><img src="images/phone-pic/small/02_sm.jpg"幻夜紫 alt="">幻夜黑</a> 
                                </span>
                                <span>
                                    <a href="#"><img src="images/phone-pic/small/03_sm.jpg"幻夜紫 alt="">天空之境</a> 
                                </span>
                                <span>
                                    <a href="#"><img src="images/phone-pic/small/05_sm.jpg"幻夜紫 alt="">极光色</a> 
                                </span>-->
                        </div>
                        <div class="version font_size">
                                        选择版本
                                        <span v-for="(item,i) of specs" :key="i" @click="spec_selected(item)">
                                            <router-link :class="{on:selected==item.spec}" :to="`/detail/pid=${item.pid}`">{{item.spec}}</router-link> 
                                        </span>  
                        </div>
                        <div class="combo font_size">
                                        选择套餐
                                        <span>
                                            <a href="#">官方标配</a> 
                                        </span>  
                        </div>
                        <div class="join">
                                <!-- <div class="left">
                                        <input type="text" value="1">
                                        <p>
                                                <a href="#">+</a>
                                                <a href="#">-</a>
                                        </p>
                                </div> -->
                                <div class="center">
                                        <span @click="addCart" :data-pid="product.pid" :data-price="product.price" :data-title="product.title">加入购物车</span>
                                </div>
                                <div class="right">
                                        <a href="#">立即下单</a>
                                </div>
                        </div>
                </div>			
                <hr>
            </div>
            <div id="nav" class="nav">
                <a href="#detail">商品详情</a>
                <a href="#spec">规格参数</a>
                <a href="#package">包装售后</a>
                <a href="#">用户评价（123123）</a>
            </div>
            <div id="detail" class="details">
                <img src="../../public/images/phone-detail/honor/honor10/01.png" alt="">
                <img src="images/phone-detail/honor/honor10/02.jpg" alt="">
                <img src="images/phone-detail/honor/honor10/03.jpg" alt="">
                <img src="images/phone-detail/honor/honor10/04.jpg" alt="">
                <img src="images/phone-detail/honor/honor10/05.jpg" alt="">
                <img src="images/phone-detail/honor/honor10/06.jpg" alt="">
                <img src="images/phone-detail/honor/honor10/07.jpg" alt="">
                <img src="images/phone-detail/honor/honor10/08.jpg" alt="">
                <img src="images/phone-detail/honor/honor10/09.jpg" alt="">
                <img src="images/phone-detail/honor/honor10/10.jpg" alt="">
                <img src="images/phone-detail/honor/honor10/11.jpg" alt="">
            </div>
            <div id="spec" class="spec">
                <div class="mt-3">规格参数</div>
                <hr>
                <div class="spec_p">
                    <div class="spec_l">主要参数</div>
                    <div class="spec_r">
                        <span>传播名</span>
                        <span>荣耀10</span>
                    </div>
                    <div class="spec_r">
                        <span>后置摄像头</span>
                        <span>1600万（彩色）像素＋2400万（黑白）像素，f/1.8光圈，支持自动对焦（深度对焦/相位对焦/反差对焦）；备注：不同拍照模式的照片像素可能有差异，请以实际为准。</span>
                    </div>
                    <div class="spec_r">
                        <span>电池容量</span>
                        <span>3400mAh（典型值）</span>
                    </div>
                    <div class="spec_r">
                        <span>前置摄像头</span>
                        <span>2400万像素，f/2.0光圈，支持固定焦距；备注：不同拍照模式的照片像素可能有差异，请以实际为准。</span>
                    </div>
                    <div class="spec_r">
                        <span>屏幕尺寸</span>
                        <span>5.84英寸</span>
                    </div>
                    <div class="spec_r">
                        <span>分辨率</span>
                        <span>2280 x 1080 像素</span>
                    </div>          
                </div>
                <hr>
                <div class="spec_p">
                    <div class="spec_l">主体</div>
                    <div class="spec_r">
                        <span>传播名</span>
                        <span>荣耀10</span>
                    </div>
                    <div class="spec_r">
                        <span>上市时间</span>
                        <span>2018年4月</span>
                    </div>
                    <div class="spec_r">
                        <span>操作系统</span>
                        <span>Android 8.1</span>
                    </div>
                    <div class="spec_r">
                        <span>运行内存(RAM)</span>
                        <span>6GB</span>
                    </div>
                    <div class="spec_r">
                        <span>机身内存(ROM)</span>
                        <span>64GB</span>
                    </div>
                    <div class="spec_r">
                        <span>CPU核数</span>
                        <span>八核 + 微智核i7</span>
                    </div>       
                    <div class="spec_r">
                        <span>CPU型号</span>
                        <span>HUAWEI Kirin 970 （麒麟970）</span>
                    </div>       
                </div>
            </div>
            <div id="package" class="package">
                <div class="mt-3">包装</div>
                <hr>
                <div class="package_d">    
                    <span>手机 X 1</span>
                    <span>电池（内置） X 1</span>
                    <span>快速指南 X 1</span>
                    <span>5V4.5A SuperCharge充电器 X 1</span>
                    <span>三包凭证 X 1</span>
                    <span> 5V4.5A Type-C数据线 X 1</span>
                    <span> TPU保护壳 X 1</span>
                    <span>荣耀宣传卡片 X 1</span>
                    <span>卡座捅针 X 1</span> 
                    <span>TP保护膜（出厂已贴在手机上）</span>      
                </div>
            </div>
            <div class="last">
                    <div class="mt-3">售后服务</div>
                    <hr>
                    <div class="last_d">    
                        <span>本产品全国联保，享受三包服务，质保期为：一年质保</span>
                        <span>如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7天内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！</span>
                        <span>售后服务电话：400-830-8300</span>
                        <span>华为消费者BG官网： <a href="#">   https://consumer.huawei.com/cn/</a></span>
                    </div>
                    <ul class="mb-5 ">
                    <li>*因可能存在系统缓存，页面更新导致价格变动异常等不确定性情况出现，如您发现活动商品标价或促销信息有异常，请您立即联系我们，以便我们及时补正。</li>
                    <li>*以上页面中的产品图片及屏幕内容仅作示意，实物产品效果（包括但不限于外观、颜色、尺寸）和屏幕显示内容（包括但不限于背景、UI、配图）可能略有差异，请以实物为准。</li>
                    <li>*以上页面中的数据为理论值，均来自华为内部实验室，于特定测试环境下所得（请见各项具体说明），实际使用中可能因产品个体差异、软件版本、使用条件和环境因素不同略有不同，请以实际使用的情况为准。</li>
                    <li>*为提供尽可能准确的产品信息、规格参数、产品特性，华为或荣耀可能实时调整和修订以上页面中的文字表述、图片效果等内容，以求与实际产品性能、规格、指数、零部件等信息相匹配，由于产品批次和生产供应因素实时变化，如遇确有进行上述修改和调整必要的情形，恕不专门通知。</li>
                    </ul>
            </div>
            <hr>
        </div>
        <my-footer />
    </div>
</template>
<script>
import magnify from "../components/Magnify"
export default {
    data(){
        return{
           product:[],
           specs:[],
           pid:0,
           selected:""
        }
    },
    computed: {
    },
    created() {
        this.load()
       
    },
    methods:{
        addCart(e){
            var pid=e.target.dataset.pid;
            var price=e.target.dataset.price;
            var title=e.target.dataset.title;
            var uid=sessionStorage.getItem("uid")
            //发送请求
            var url=this.host+"/cart/addcart";
            var obj={pid:pid,price:price,title:title,uid:uid};
            this.axios.get(url,{params:obj}).then(res=>{
                console.log(res)
                if(res.data.code==-1){
                    alert("请先登录");
                    this.$router.push("/login")
                }else{
                    alert("添加成功");
                }
            })
        },
        spec_selected(item){
           this.load()
           this.selected=item.spec
        },
        load:function(){
           this.pid=this.$route.params.pid.split("=")[1]
           if(this.pid){
               var url=this.host+"/detail";
               this.axios.get(url,{params:{pid:this.pid}}).then(result=>{
                   console.log(result.data)
                   var {product,specs}=result.data;
                   this.product=product;
                   this.specs=specs;
                    this.selected=this.product.spec
               })
           }
        }
    },
    components:{magnify},
}
</script>
<style>
    @import url("../assets/css/detail.css")
</style>