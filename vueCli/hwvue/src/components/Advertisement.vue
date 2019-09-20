<template>
    <div>
        <div class="advertisement" v-if="ad_display"> 
            <img src="images/background/advertisement.jpg">
            <span @click="close_ad">X</span>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
             ad_display:true,
        }
    },
    methods: {
        close_ad(){
            this.ad_display=false
        }
    },
}
</script>
<style scoped>
    .advertisement{
    width:100%;
    position: relative;
    z-index:2
    }
    .advertisement img{
        width:100%;
    }
    .advertisement span{
        position: absolute;
        top:10px;
        right:15%;
        color:#ddd;
        cursor: pointer;
        box-sizing:border-box;
        text-align:center;
    }
</style>