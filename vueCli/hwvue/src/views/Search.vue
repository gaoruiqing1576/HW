<template>
    <div>
        <advertisement />
        <my-header />
        <div class="container">
            <!-- 表单 -->
            <div class="search_nav">
                <div>全部结果</div>
                <strong>></strong>
                <div class="menu">
                    手机
                    <!-- 下拉菜单 -->
                    <ul class="menu_list_01">
                        <li><a href="#">手机</a></li>
                        <li><a href="#">笔记本</a></li>
                        <li><a href="#">平板电脑</a></li>
                        <li><a href="#">智能穿戴</a></li>
                        <li><a href="#">智能家居</a></li>
                        <li><a href="#">热销配件</a></li>
                    </ul>
                </div>
                <strong>></strong>
                <div class="menu">
                    手机
                    <!-- 下拉菜单 -->
                    <ul class="menu_list_02">
                        <li><a href="#"> HUAWEI Mate系列</a></li>
                        <li><a href="#"> 荣耀</a></li>
                        <li><a href="#"> HUAWEI P系列</a></li>
                        <li><a href="#"> 荣耀畅玩系列</a></li>
                        <li><a href="#"> HUAWEI nova系列</a></li>
                        <li><a href="#"> 华为畅享系列</a></li>
                        <li><a href="#"> HUAWEI 麦芒系列</a></li>
                    </ul>
                </div>
            </div>
            <!-- 条件搜索 -->
            <!--<div class="search_page">
                <div class="resolution">
                    <div class="left">分辨率 :</div>
                    <div class="right">
                        <ul class="list">
                            <li><a href="#">全高清FHD+</a></li>
                            <li><a href="#">标清SD</a></li>
                            <li><a href="#">高清HD+</a></li>
                            <li><a href="#">高清HD+</a></li>
                            <li><a href="#">高清HD+</a></li>
                            <li><a href="#">高清HD+</a></li>
                            <li><a href="#">QHD+及以上</a></li>
                            <li><a href="#">其他分辨率</a></li>
                        </ul>
                        <div>
                            <div class="chb">多选</div>
                            <div class="more">更多∨</div>
                        </div>
                    </div>
                    <div class="multify">
                        <div class="left">分辨率 :</div>
                        <div class="right">
                            <ul>
                                <li>
                                    <input type="checkbox" id="one">
                                    <label for="one">全高清FHD+</label> 
                                </li>
                                <li>
                                    <input type="checkbox" id="two">
                                    <label for="two">标清SD</label> 
                                </li>
                                <li>
                                    <input type="checkbox" id="three">
                                    <label for="three">高清HD+</label> 
                                </li>
                                <li>
                                    <input type="checkbox" id="four">
                                    <label for="four">其他分辨率</label> 
                                </li>
                                <li>
                                    <input type="checkbox" id="five">
                                    <label for="five">QHD+及以上</label> 
                                </li>
                            </ul>
                            <ul>
                                <button class="confirm">确认</button>
                                <button class="cansel">取消</button>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="operate_system">
                    <div class="left">操作系统 :</div>
                    <div class="right">
                        <ul class="list">
                            <li><a href="#">Android(安卓)</a></li>
                            <li><a href="#">iOS(Apple)</a></li>
                            <li><a href="#">功能机</a></li>
                            <li><a href="#">其他OS</a></li>
                            <li><a href="#">YunOS</a></li>
                            <li><a href="#">YunOS</a></li>
                            <li><a href="#">YunOS</a></li>
                            <li><a href="#">Windows(微软)</a></li>
                            <li><a href="#">其他操作系统</a></li>
                        </ul>
                        <div>
                            <div class="chb">多选</div>
                            <div class="more">更多∨</div>
                        </div>
                    </div>
                    <div class="multify">
                        <div class="left">分辨率 :</div>
                        <div class="right">
                            <ul>
                                <li>
                                    <label><input type="checkbox">Android(安卓)</label> 
                                </li>
                                <li>
                                    <label><input type="checkbox">iOS(Apple)</label> 
                                </li>
                                <li>
                                    <label>功能机<input type="checkbox"></label> 
                                </li>
                                <li>
                                    <label><input type="checkbox">其他OS</label> 
                                </li>
                                <li>
                                    <label><input type="checkbox">YunOS</label> 
                                </li>
                                <li>
                                    <label><input type="checkbox">YunOS</label> 
                                </li>
                                <li>
                                    <label><input type="checkbox">Windows(微软)</label> 
                                </li>
                                <li>
                                    <label><input type="checkbox">其他操作系统</label> 
                                </li>
                            </ul>
                            <ul>
                                <button class="confirm">确认</button>
                                <button class="cansel">取消</button>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="option">
                    <div class="left">高级选项：</div> 
                    <div class="menu">
                        存储卡
                        
                        <ul class="menu_list1">
                            <li><a href="#">支持MicroSD(TF)</a></li>
                            <li><a href="#">其它存储卡</a></li>
                            <li><a href="#">不支持存储卡</a></li>
                            <li><a href="#">NM存储卡</a></li>
                            <div class="chb">多选</div>
                        </ul>
                        <div class="d1">
                            <ul class="menu_list2">
                                <li>
                                    <input type="checkbox" id="one">
                                    <label for="one">支持MicroSD(TF)</label> 
                                </li>
                                <li>
                                    <input type="checkbox" id="two">
                                    <label for="two">其它存储卡</label> 
                                </li>
                                <li>
                                    <input type="checkbox" id="three">
                                    <label for="three">不支持存储卡</label> 
                                </li>
                                <li>
                                    <input type="checkbox" id="four">
                                    <label for="four">NM存储卡</label> 
                                </li>
                            </ul>
                            <ul>
                                <button class="confirm">确认</button>
                                <button class="cansel">取消</button>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>-->

            <div class="search">
                <!-- 普通按钮 -->
                <div class="phone_model" :class="{on:more}">
                    <div class="left">手机型号:</div>
                    <div class="right">
                        <ul class="list">
                            <li :class="{on:item.value==model}" v-for="(item,index) of phone_model" :key="index" v-text="item.value"  @click="doModel(item)"></li>
                        </ul>
                        <div class="">
                            <div class="more" @click="more_btn" :class="{on:more}">更多</div>
                            <div class="chb" @click="more_select">多选</div>
                        </div>
                    </div>
                    <div  v-if="multify" class="multify">
                        <div class="left_more">区域 :</div>
                        <div class="right_more">
                            <ul>
                                <li v-for="(item,i) of phone_model" :key="i">
                                    <label><input type="checkbox" :value="item.value">{{item.value}}</label> 
                                </li>
                            </ul>
                            <ul>
                                <button class="confirm">确认</button>
                                <button class="cansel" @click="cansel">取消</button>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="phone_processor">
                    <div class="left">处理器:</div>
                    <div class="right">
                        <ul class="list">
                            <li :class="{on:item.value==processor}" v-for="(item,index) of phone_processor" :key="index" v-text="item.value" @click="doProcessor(item)"></li>
                        </ul>
                    </div>
                </div>
                <div class="phone_screen">
                    <div class="left">屏幕尺寸:</div>
                    <div class="right">
                        <ul class="list">
                            <li :class="{on:item.value==screen}" v-for="(item,index) of phone_screen" :key="index" v-text="item.value"  @click="doScreen(item)"></li>
                        </ul>
                        <div class="input">
                            <input type="text" v-model="min_screen">
                            -
                            <input type="text" v-model="max_screen">
                            英寸
                            <input type="button" @click="btn_screen"  value="确定">
                        </div>
                    </div>
                </div>
                <div class="phone_price">
                    <div class="left">价格:</div>
                    <div class="right">
                        <ul class="list">
                            <li :class="{on:item.value==price}" v-for="(item,index) of phone_price" :key="index" v-text="item.value"  @click="doPrice(item)"></li>
                        </ul>
                        <div class="input">
                            <input type="text" v-model="min_price">
                            -
                            <input type="text" v-model="max_price">
                            元
                            <input type="button" @click="btn_price" value="确定">
                        </div>
                    </div>
                </div>
                <!-- 高级选项 -->
                <div class="option">
                    <div class="left">高级选项：</div> 
                    <select v-model="battery">
                        <option>电池容量</option>
                        <option>3000mAh</option>
                        <option>3400mAh</option>
                        <option>3800mAh</option>
                        <option>4200mAh</option>
                        <option>4600mAh</option>
                    </select>
                        <!-- 下拉菜单-->
                    <select v-model="memory">
                        <option>机身内存</option>
                        <option>32GB</option>
                        <option>64GB</option>
                        <option>128GB</option>
                        <option>256GB</option>
                    </select>

                    <select v-model="pixel">
                        <option>后置像素</option>
                        <option>2400万像素</option>
                        <option>2800万像素</option>
                        <option>3200万像素</option>
                        <option>3600万像素</option>
                        <option>4000万像素</option>
                    </select>
                </div>
            </div>

            <!-- 商品详情 -->
            <div class="detail">
                <!-- 左侧商品推荐 -->
                <div class="detail_left">
                    <div> <h3> 商品精选</h3> <span>广告</span> </div>
                    <ul>
                        <li v-for="(item,i) of recommend" :key="i">
                            <router-link :to="item.href">
                            <img :src="item.pic">
                            <p>￥{{item.price}}.00</p>
                            <p v-text="item.title">华为 HUAWEI nova 5i 后置AI四摄 极点全面屏 前置2400万高清摄像头 8GB+128GB 苏音蓝 全网通双卡双待</p>
                            <p>已有<span class="count">88800+</span>人评价  <span class="heart">收藏</span></p>
                            </router-link>
                        </li>
                    </ul>
                    <div class="btn_more" @click="load_more">加载更多<span class="iconfont icon-dayuhao-copy"></span></div>
                </div>
                <!-- 右侧商品详情-->
                <div class="detail_right">
                    <!-- 上部分商品详情 -->
                    <div class="detail_list">
                        <div class="top">
                            <div class="left">
                                <a href="#">
                                    <span>综合</span>
                                    <span class="iconfont icon-down-jiantou"></span>
                                </a>
                                <a href="#">
                                    <span>价格</span>
                                    <span class="iconfont icon-down-jiantou"></span>
                                </a>
                            </div>
                        </div>
                        <ul>
                            <li v-for="(item,i) of product" :key="i">
                                <router-link :to="item.href">
                                    <img :src="item.md" alt=""/>
                                    <p>￥{{item.price}}.00</p>
                                    <p v-text="item.title">华为 HUAWEI nova 5i 后置AI四摄 极点全面屏 前置2400万高清摄像头 8GB+128GB 苏音蓝 全网通双卡双待</p>
                                    <p><span>4.2万+</span>评论
                                        <img src="../../public/images/background/客服.gif">
                                    </p>
                                </router-link>
                                <div>
                                    <p>★</p>
                                    <span>收藏</span>
                                </div>
                            </li> 
                        </ul>
                    </div>
                    <!-- 下部分分页按钮 -->
                    <div class="page"  v-show="!like">
                       <!--<div>
                            <button>上一页</button>
                            <a href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#">4</a>
                            <a href="#">...</a>
                            <button>下一页</button>
                            <input type="text" value="1">
                            <input type="button" value="跳转">
                        </div>-->
                         <ul>
                            <li :class="{disabled:pno==0}"><a href="javascript:;" @click="goto(-1)">上一页</a></li>
                            <li v-for="(n,i) of pageCount" :key="i" :class="{active:i==pno}"><a href="javascript:;" @click="page(i)">{{n}}</a></li>
                            <li :class="{disabled:pno==pageCount-1}"><a href="javascript:;" @click="goto(+1)">下一页</a></li>
                        </ul>
                    </div>
                    <!--没有查询到手机,显示-->
                    <div class="like" :class="{on:like}">
                        <div class="nofond">没有找到相关的房源</div>
                        <h1>猜你喜欢</h1>
                        <ul>
                            <li>
                                <a href="#">
                                <img src="images/phone-pic/middle/02_md.png" alt=""/>
                                <p>￥3399</p>
                                <p>华为 HUAWEI nova 5i 后置AI四摄 极点全面屏 前置2400万高清摄像头 8GB+128GB 苏音蓝 全网通双卡双待</p>
                                <p><span>4.2万+</span>评论
                                    <img src="../../public/images/background/客服.gif">
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                <img src="images/phone-pic/middle/03_md.png" alt=""/>
                                <p>￥3399</p>
                                <p>华为 HUAWEI nova 5i 后置AI四摄 极点全面屏 前置2400万高清摄像头 8GB+128GB 苏音蓝 全网通双卡双待</p>
                                <p><span>4.2万+</span>评论
                                    <img src="../../public/images/background/客服.gif">
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                <img src="images/phone-pic/middle/04_md.png" alt=""/>
                                <p>￥3399</p>
                                <p>华为 HUAWEI nova 5i 后置AI四摄 极点全面屏 前置2400万高清摄像头 8GB+128GB 苏音蓝 全网通双卡双待</p>
                                <p><span>4.2万+</span>评论
                                    <img src="../../public/images/background/客服.gif">
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                <img src="images/phone-pic/middle/05_md.png" alt=""/>
                                <p>￥3399</p>
                                <p>华为 HUAWEI nova 5i 后置AI四摄 极点全面屏 前置2400万高清摄像头 8GB+128GB 苏音蓝 全网通双卡双待</p>
                                <p><span>4.2万+</span>评论
                                    <img src="../../public/images/background/客服.gif">
                                </p>
                                </a>
                            </li>
                        </ul>
                     </div>   
                </div>
            </div>
        </div>
        <div class="recommend_research">
            <recommend />
        </div>
        <my-footer />
    </div>
</template>
<script>
import recommend from "../components/Recommend"
import advertisement from "../components/Advertisement"
export default {
    data(){
        return{
           
            like:false,
            //当前第几页
            pageCount:0,
            //一共几页
            pno:0,
            min_screen:"",
            min_price:"",
            max_screen:"",
            max_price:"",
            multify:false,
            more:false,
            model:"全部",
            processor:"全部",
            screen:"全部",
            price:"全部",
            battery:"电池容量",
            memory:"机身内存",
            pixel:"后置像素",
            phone_model:[
                {
                    type:"model",
                    value:"全部"
                },
                {
                    type:"model",
                    value:"华为Mate系列"
                },
                {
                    type:"model",
                    value:"华为荣耀系列"
                },
                {
                    type:"model",
                    value:"华为P系列"
                },
                {
                    type:"model",
                    value:"荣耀畅玩系列"
                },
                {
                    type:"model",
                    value:"华为Nova系列"
                },
                {
                    type:"model",
                    value:"华为畅享系列"
                },
                {
                    type:"model",
                    value:"华为麦芒系列"
                },
            ],
            phone_processor:[
                {
                    type:"processor",
                    value:"全部"
                },
                {
                    type:"processor",
                    value:"麒麟970"
                },
                {
                    type:"processor",
                    value:"麒麟980"
                },
                {
                    type:"processor",
                    value:"麒麟710"
                },
                {
                    type:"processor",
                    value:"高通骁龙632"
                },
                {
                    type:"processor",
                    value:"高通骁龙660"
                },
            ],
            phone_screen:[
                {
                    type:"screen",
                    value:"全部"
                },
                {
                    type:"screen",
                    value:"5.0英寸-5.5英寸"
                },
                {
                    type:"screen",
                    value:"5.5英寸-6.0英寸"
                },
                {
                    type:"screen",
                    value:"6.0英寸-6.2英寸"
                },
                {
                    type:"screen",
                    value:"6.2英寸-6.4英寸"
                },
                {
                    type:"screen",
                    value:"6.4英寸-6.6英寸"
                },
            ],
            phone_price:[
                {
                    type:"price",
                    value:"全部"
                },
                {
                    type:"price",
                    value:"0元-1000元"
                },
                {
                    type:"price",
                    value:"1000元-2000元"
                },
                {
                    type:"price",
                    value:"2000元-3000元"
                },
                {
                    type:"price",
                    value:"3000元-4000元"
                },
                {
                    type:"price",
                    value:"4000元及以上"
                },
            ],
            kw:{},
            product:[],
            recommend:[],
            red_pno:0
        }
    },
    computed:{
      
    },
    watch:{
        product(val){
            if(val.length==0){
                this.like=true;
            }else{
                this.like=false;
            }
        },
       battery(val){
           this.battery=val;
            this.judge("battery",val,"电池容量")
       },
       memory(val){
           this.memory=val;
            this.judge("memory",val,"机身内存")
       },
        pixel(val){
           this.pixel=val;
            this.judge("pixel",val,"后置像素")
       },
    },
    created() {
        this.load()
        this.load_red()
    },
    methods:{
        
        goto(i){
            if((i==-1&&this.pno!=0)||(i==+1&&this.pno!=this.pageCount-1)){
                this.kw.pno=parseInt(i)+parseInt(this.pno);
                 this.goChuanCan()
                this.load();
            }
        },
        //分页
        page(i){
            this.kw.pno=i;
             this.goChuanCan()
            this.load();
        },
        load(){
            var url=this.host+"/search";
            var kw=this.kw
            this.axios.get(url,{params:kw}).then(result=>{
                this.product=result.data.data
                this.pageCount=result.data.pageCount;
                this.pno=result.data.pno;
            })
        },
        load_red(){
            var url=this.host+"/search/recommend";
            this.axios.get(url,{params:{pno:this.red_pno}}).then(result=>{
                console.log(result.data.data)
                this.recommend=this.recommend.concat(result.data.data);
                console.log(this.recommend)
            })
        },
        //加载更多按钮实现
        load_more(){
            this.red_pno++
            this.load_red()
        },
        more_btn:function(){
            this.more=!this.more
        },
        more_select:function(){
            this.multify=true
        },
        cansel:function(){
            this.multify=false
        },
        doModel(item){
            this.model=item.value;
            this.judge(item.type,item.value,"全部");
        },
        doProcessor(item){
            this.processor=item.value;
            this.judge(item.type,item.value,"全部")
          
        },
        doScreen(item){
            this.screen=item.value
            this.judge(item.type,item.value,"全部")
            
        },
        btn_screen(){
            this.kw.screen=`${this.min_screen}英寸-${this.max_screen}英寸`;
            this.goChuanCan()
            this.load()
        },
        doPrice(item){
            this.price=item.value
            this.judge(item.type,item.value,"全部")
        },
        btn_price(){
            this.kw.price=`${this.min_price}元-${this.max_price}元`;
            this.goChuanCan()
            this.load()
        },
        /*选项事件封装 */
        judge(type,value,title){
            if(value!=title){
                this.kw[type]=value;
                this.kw.pno=0
            }else{
                delete(this.kw[type]);
            }
            this.goChuanCan()
            this.load()
        },
        goChuanCan(){
            this.$router.push({
                query:this.kw
            })
        }
        
    },
    components:{recommend,advertisement},
}
</script>
<style>
    @import url("../assets/css/search.css")
</style>