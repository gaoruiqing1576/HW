import Vue from 'vue'
import App from './App.vue'
import router from './router'
import axios from 'axios'
import MyHeaderIndex from './components/MyHeaderIndex'
import MyHeader from './components/MyHeader'
import MyFooter from './components/MyFooter'

//将字体图标引入到当前项目中
import "./font/iconfont.css"


Vue.component("my-header",MyHeader);
Vue.component("my-header_index",MyHeaderIndex);
Vue.component("my-footer",MyFooter);

Vue.config.productionTip = false
Vue.prototype.axios=axios;
Vue.prototype.host="http://127.0.0.1:5050";


//9.引入vuex第三方模块
import Vuex from "vuex"
//10.注册vuex
Vue.use(Vuex);
//11.创建vuex存储实例对象
var store=new Vuex.Store({
  state:{cartCount:0},   //共享数据
  mutations:{
    increment(state){ //购物车数量加1
      state.cartCount++;
    },
    descment(state){ //购物车数量减1
      state.cartCount--;
    },
    clear(state){    //清空购物车
      state.cartCount=0;
    }  
  }, //添加修改数据函数
  getters:{   //添加获取数据函数
    getCartCount(state){
      return state.cartCount;
    }
  },   
  actions:{}  //添加异步操作数据函数
})

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
