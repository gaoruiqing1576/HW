$(function(){
    /**************搜索框事件****************/
    //点击按钮，输出要搜索的内容
    $("div.search").click(function(){
        var val=$(":text").val().trim();
        if(val!==""){
            console.log(`查询${val}相关的内容。。。`)
        }
    })
    //当在文本框按下回车（抬起时），模拟触发按钮事件
    $(":text").keyup(function(e){
        //判断按下的键是否是回车键，键盘上的每个键都有一个数字用keyCode查询，回车==>13
        if(e.keyCode==13){
          //执行button的单击事件
          $("button").trigger("click");
          //简写
          //$("button").click();   
          //可以看出  $(...).事件名()和$(...).事件名(function(){})  一个是模拟触发，一个是事件绑定
        }
      })
    //当用户在文本框输入文字时 输入事件为input（），不是21种，不能简写
    .on("input",function(){
        //执行button的单击事件
        $("button").click();  
    })


    //当获得input的焦点时，让相邻的div兄弟隐藏,热门搜索显示,当失去input的焦点时，让相邻的div兄弟显示，热门搜索隐藏。
    $(":text").focus(function(){
        var $input=$(this);
        $input.next().hide();
        $("div.search>ul").show();
    })
    $(":text").blur(function(){
        var $input=$(this);
        $input.next().show();
        $("div.search>ul").hide();
    })

})