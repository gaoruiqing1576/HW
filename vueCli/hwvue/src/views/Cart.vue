<template>
    <div>
        <my-header />
        <div class="container">
            <div class="header">
                <div class="layout_cart">
                    <div class="left">
                        <span>我的购物车</span>
                    </div>
                    <div class="right">
                        <div></div>
                    </div>
                </div>
            </div>
            <div class="body">
                <div class="layout_cart">
                    <div class="layout_header">
                        <div class="selectAll">
                            <label class="font_lg" ><input type="checkbox" @change="selectAll">全选</label>
                        </div>    
                        <ul>
                            <li class="product font_md">商品</li>
                            <li class="font_md">单价</li>
                            <li class="font_md">数量</li>
                            <li class="font_md">小计</li>
                            <li class="font_md">操作</li>
                        </ul>
                    </div>
                    <div class="layout_body">
                         <div class="pro_01" v-for="(item,i) of list" :key="i">
                            <div class="cb">
                                <input type="checkbox" v-model="item.cb" />
                            </div>    
                            <div class="detail_cart">
                                <img src="images/phone-pic/small/01_sm.jpg">
                                <ul>
                                    <li class="product font_lg" v-text="item.title">荣耀畅玩8 5.71英寸珍珠全面屏 大字体大音量长续航 莱茵护眼 2GB+32GB 全网通 幻夜黑</li>
                                    <li class="font_lg">
                                        <span>￥{{item.price}}</span>
                                        <s class="font_md">￥{{item.price+1500}}</s>
                                    </li>
                                    <li class="font_lg">
                                        <button @click="sub(item)">-</button>
                                        <input type="text" :value="item.count">   
                                        <button @click="add(item)">+</button>
                                    </li>
                                    <li class="xj">￥{{item.price*item.count}}.00</li>
                                    <li><a class="font_md" href="javascript:;"  @click="del" :data-cid="item.cid">删除</a></li>
                                </ul>
                            </div>
                        </div>
                        <!--<div class="pro_01">
                            <div class="cb">
                                <input type="checkbox" data-toggle="select-pro">
                            </div>    
                            <div class="detail_cart">
                                <img src="images/phone-pic/small/01_sm.jpg">
                                <ul>
                                    <li class="product font_lg">荣耀畅玩8 5.71英寸珍珠全面屏 大字体大音量长续航 莱茵护眼 2GB+32GB 全网通 幻夜黑</li>
                                    <li class="font_lg">
                                        <span>￥599.00</span>
                                        <s class="font_md">￥299.00</s>
                                    </li>
                                    <li class="font_lg">
                                        <button>-</button>
                                        <input type="text" value="1">   
                                        <button>+</button>
                                    </li>
                                    <li class="xj">￥599.00</li>
                                    <li><a class="font_md" href="#">删除</a></li>
                                </ul>
                            </div>
                            <div class="services">
                                <p class="font_lg">服务</p>
                                <div class="menu">
                                        <div class="menu_top">
                                        <span class="font_lg">延长服务宝</span>
                                        <span class="font_md">可选购延长服务宝</span>
                                        <img src="images/background/大于号_下.png" alt="">
                                        </div>
                                        <div class="menu_top">
                                        <span class="font_lg">碎屏服务宝</span>
                                        <span class="font_md">可选购碎屏服务宝</span>
                                        </div>
                                        <div class="menu_detail">
                                            <div>
                                                <span class="font_lg">● 延长服务宝</span>
                                                <input type="radio" name="yc">
                                                <label for="yc" class="font_lg">延长服务宝半年￥198</label>
                                                <input type="radio" name="yc">
                                                <label for="yc" class="font_lg">延长服务宝1年￥368</label>
                                            </div>
                                            <div>
                                                <span class="font_lg">● 碎屏服务宝</span>
                                                <input type="radio" name="sp">
                                                <label for="sp" class="font_lg">碎屏服务宝半年￥299</label>
                                            </div>
                                            <div>
                                                <span class="font_lg">● 无忧服务</span>
                                                <input type="radio" name="wy">
                                                <label for="wy" class="font_lg">华为无忧服务￥969</label>
                                            </div>
                                        </div>
                                </div>
                            </div>
                            <div class="accessory">
                                    <p class="font_lg">配</p>
                                    <div class="menu">
                                        <ul>
                                            <li class="product font_lg">
                                                <img src="images/phone-pic/small/01_sm.jpg">
                                                <span> HUAWEI P30 Pro 皮革保护壳 （优雅灰色） 优雅灰色</span></li>
                                            <li class="font_lg"></li>
                                            <li class="font_lg">x 1
                                            </li>
                                        </ul>
                                        <ul>
                                            <li class="product font_lg">
                                                <img src="images/phone-pic/small/01_sm.jpg">
                                                <span> HUAWEI P30 Pro 皮革保护壳 （优雅灰色） 优雅灰色</span></li>
                                            <li class="font_lg"></li>
                                            <li class="font_lg">x 1
                                            </li>
                                        </ul>
                                    </div>
                            </div>
                        </div>-->
                       
                    </div>
                    <div class="layout_footer">
                        <div class="selectAll">
                            <label class="font_lg" ><input type="checkbox" @change="selectAll">全选</label>
                        </div>
                        <a href="javascript:;" class="font_lg"  @click="delM">删除选中商品</a>
                        <div class="right">
                            <div>
                                <button @click="jiesuan"> 立即结算</button>
                            </div>
                            <div class="right_r">
                                <p class="font_lg">总计：</p>
                                <span id="total_price">¥{{select_price}}.00</span>
                                <img src="images/background/问号.png">
                                <div class="font_lg">已选择<em>{{select_count}}</em> 件商品</div>
                            </div>
                        </div>
                    </div>
                    <h2>已删除商品</h2>
                    <div class="delete">
                        <ul>
                            <li>商品</li>
                            <li>数量</li>
                            <li>金额</li>
                            <li>操作</li>
                        </ul>
                        <ul>
                            <li>荣耀畅玩8 5.71英寸珍珠全面屏 大字体大音量长续航 莱茵护眼 2GB+32GB 全网通 幻夜黑</li>
                            <li>x5</li>
                            <li>¥2995.00</li>
                            <li><a href="#">重新购买</a></li>
                        </ul>
                        <ul>
                            <li>HUAWEI nova 5i 2400万AI四摄 自拍极点全面屏 6GB+128GB 全网通版（苏音蓝）</li>
                            <li>x1</li>
                            <li>¥1999.00</li>
                            <li><a href="#">重新购买</a></li>
                        </ul>
                        <ul>
                            <li>HUAWEI nova 5i PC保护壳（和平鸽蓝）</li>
                            <li>x1</li>
                            <li>¥2995.00</li>
                            <li><a href="#">重新购买</a></li>
                        </ul>
                        <div>
                            <a href="#">更多已删除商品</a>
                            <img src="images/background/大于号_下.png" alt=""> 
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer_cart">
                <recommend />
            </div>
        </div>
        <my-footer />
    </div>
</template>
<script>
import recommend from "../components/Recommend"
export default {
    data(){
        return{
            list:[],
            select_count:0,
            select_price:0
        }
    },
    created(){
        this.load()
    },
    methods:{
        jiesuan(){
            if(this.select_count!=0){
                this.$router.push("/cart/confirm")
            }else{
                alert("请选择商品")
            }
        },
        add(item){
            item.count++
        },
        sub(item){
            if(item.count>1){
                item.count--;
            }else{
                item.count=1
            }
        },
        selectAll(e){
            //1.获取全选按钮状态
            var cb=e.target.checked;
            //2.创建循环遍历购物车数组
            for(var item of this.list){
                item.cb=cb;
                console.log(cb)
                if(cb==true){
                    this.select_count++;
                    this.select_price+=item.price*item.count;
                }else{
                    this.select_count--;
                    this.select_price-=item.price*item.count;
                }
            }
        },
        delM(){
            //功能:删除多个购物车中指定商品
            //1.创建一个变量保存多个商品中id值
            var str="";
            //2.创建循环遍历数组,获取状态为true的id值
            for(var item of this.list){
                if(item.cb){
                    //为true当前商品被选中
                    str+=item.cid+","  //将id拼接
                }
            }
            //2.1判断用户是否选中了商品
            if(str.length==0){
            //2.2如果没有选中商品,显示确认消息
                alert("请选择要删除的商品");
                return;  //停止执行
            }
            //3.截取字符串中最后","
            str=str.substring(0,str.length-1);
            var url=this.host+"/cart/delM";
            var ids={ids:str}; //参数名ids,拼接的字符串
            //发送ajax请求
            this.axios.get(url,{params:ids}).then(res=>{
                 if(res.data.code>0){
                     alert("删除成功");
                     this.load();
                 }
            })
        },
        del(e){
            //删除购物车中指定的商品
            //获取购物车id
            var cid=e.target.dataset.cid;
            console.log(cid)
            var url = this.host+"/cart/del";
            var obj = {id:cid};
            this.axios.get(url,{params:obj}).then(res=>{
                if(res.data.code>0){
                    //重新加载数据相当刷新
                    alert("删除成功");
                    this.load();
                }
            })
        },
        load(){
            var uid=sessionStorage.getItem("uid")
            var url=this.host+"/cart";
            this.axios.get(url,{params:{uid:uid}}).then(res=>{
                var list=res.data.data;
                //创建一个循环遍历数组并且为每个元素添加cb属性表示商品前复选框状态
                this.$store.commit("clear");
                for(var item of list){
                   //4.11添加cb属性表示状态
                   item.cb=false;
                   //4.12修改购物车数量值 vuex
                this.$store.commit("increment");
               }
                this.list=list
            })
        }
    },
    components:{recommend},
}
</script>
<style scoped>
    @import url("../assets/css/cart.css")
</style>