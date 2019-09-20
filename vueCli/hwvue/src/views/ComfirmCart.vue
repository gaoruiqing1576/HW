<template>
    <div>
        <my-header />
        <div class="container">
            <div class="header">
                <div class="layout_cart">
                    <div class="left">
                        <span>确认订单</span>
                    </div>
                    <div class="right">
                        <div class="confirm"></div>
                    </div>
                </div>
            </div>
            <div class="cart_address">
                <h5>收货地址</h5>
                <div @click="add_address">
                    <a><span>+</span><span>新增收货地址</span></a>
                </div>
            </div>
            <div class="add_address" v-show="address_dis">
                <span>- 添加地址 - <a @click="cancel_address">x</a></span>
                <div class="add_detail">
                    <ul>
                        <li>
                            <span><i>*</i>收货人:</span>
                            <input />
                        </li>
                        <li>
                            <span><i>*</i>手机号码:</span>
                            <input placeholder="请输入11位手机号码" />
                        </li>
                        <li>
                            <span><i>*</i>收货地址:</span>
                            <input/>
                        </li>
                        <li>
                            <span></span>
                            <textarea></textarea>
                        </li>
                    </ul>
                </div>
                <div class="btn_b">
                    <div @click="cancel_address">取消</div>
                    <div>保存并使用</div>
                </div>
            </div>
        </div>  
        <my-footer />
    </div>
</template>
<script>
export default {
    data(){
        return{
            address_dis:false
        }
    },
    methods:{
        add_address(){
            this.address_dis=true
        },
        cancel_address(){
            this.address_dis=false
        }
    }
}
</script>
<style>
     @import url("../assets/css/confirmCart.css")
</style>