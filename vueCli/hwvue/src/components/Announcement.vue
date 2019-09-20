<template>
  <div class="marquee">
        <div class="marquee_title">
            <span>公告</span>
        </div>
        <div class="marquee_box">
            <ul class="marquee_list" :class="{marquee_top:animate}">
                    <li v-for="(item,index) in marqueeList">{{item.name}}</li>
            </ul>
        </div>
  </div>
</template> 
<script>
export default {
  data() {
    return {
      animate: false,
      marqueeList: [
        {
          name: "荣耀出游季活动公告"
        },
        {
          name: "荣耀中秋“现”礼季活动公告"
        },
        {
          name: "品多智能锁H1众测活动中奖名单"
        },
        {
          name: "欧普星钻智控LED吸顶灯480众测中奖名单"
        },
        {
          name: "荣耀手环5篮球版新品活动公告"
        }
      ]
    };
  },
  created: function() {
    // 页面显示
    setInterval(this.showMarquee, 2000);
  },
  methods: {
    showMarquee: function() {
      this.animate = true;
      setTimeout(() => {
        this.marqueeList.push(this.marqueeList[0]);

        this.marqueeList.shift();

        this.animate = false;
      }, 500);
    }
  }
};
</script>
 
<style scoped>
.marquee {
  width: 100%;

  height: 100%;

  align-items: center;

  color: #3a3a3a;

  background-color: white;

  display: flex;

  box-sizing: border-box;

  overflow: hidden;
}

.marquee_title {
  padding: 0 10px;
  width:35%;
  height: 21px;

  font-size: 14px;

  border-right: 1px solid #d8d8d8;

  align-items: center;
  text-align:center;
}

.marquee_box {
  display: block;

  position: relative;

  width: 80%;

  height: 30px;

  overflow: hidden;
}

.marquee_list {
  width:100%;
  display: block;

  position: absolute;

  top: 0;

  left: 0;
  display:flex;
  flex-direction: column;
  justify-content: space-around
}

.marquee_top {
  transition: all 0.5s;

  margin-top: -30px;
}

.marquee_list li {
  width:100%;
  height: 30px;

  line-height: 30px;

  font-size: 14px;

  padding-left: 10px;
  overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
  cursor: pointer;
}

.marquee_list li span {
  padding: 0 2px;
}
</style>
