import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index.vue'
import Detail from './views/Detail.vue'
import Cart from './views/Cart.vue'
import ComfirmCart from './views/ComfirmCart.vue'
import Search from './views/Search.vue'
import Login from './views/Login.vue'

Vue.use(Router)

export default new Router({
  routes: [
    { path: '/',component: Index}, 
    { path: '/detail/:pid',component: Detail}, 
    { path: '/search',component: Search}, 
    { path: '/cart',component: Cart}, 
    { path: '/cart/confirm',component: ComfirmCart}, 
    { path: '/login',component: Login}, 
  ]
})
