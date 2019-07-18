(function(){
                
    /*加减按钮*/
    var body=document.getElementsByClassName("body")[0];
    console.log(body)
    var btns=body.getElementsByTagName("button");
    console.log(btns)
    for(var btn of btns){
        btn.onclick=function(){
            var btn=this;
            var input=btn.parentElement.children[1];
            var n=parseInt(input.value);
            if(btn.innerHTML=="+"){
                n++;
            }else if(n>1){
                n--;
            }
            input.value=n;	
            
            //计算小计
            //先获得ul:当前按钮btn的爷爷
            var ul=btn.parentElement.parentElement;
            console.log(ul.children[1].children[0])
            //获得ul下的第二个li中的内容单价，去除开头的人民币符号，再转为数字
            var price=parseFloat(
                ul.children[1].children[0].innerHTML.slice(1)
            );
            console.log(price);
            //计算小计：单价*数量n
            var subtotal=price*n;
            //将小计放入到当前行ul的下一个li中，并格式化为货币的格式
            ul.children[3].innerHTML=`￥${subtotal.toFixed(2)}`;
            
            //计算总计
            //先获取小计和总计的位置
            var body_li=body.getElementsByClassName("xj");
            console.log(body_li)
            var total_price=document.getElementById("total_price");
            //遍历小计，得到每个小计，在加到总计上
            var total=0;
            for(var li of body_li){
                total+=parseFloat(li.innerHTML.slice(1));
            }	
            //将total的值赋值给总计
            total_price.innerHTML=`￥${total.toFixed(2)}`
        }
    }
   
    /*全选*/
    var chbAlls=document.querySelectorAll("[data-toggle=selectAll]");
    var chbs=document.querySelectorAll("[data-toggle=select-pro]");
    console.log(chbAlls)
    chbAlls[0].onclick=function(){
        chbAlls[1].checked=chbAlls[0].checked
        var chbAll=this;
        for(var chb of chbs){
            chb.checked=chbAll.checked;
        }   
    }
    chbAlls[1].onclick=function(){
        chbAlls[0].checked=chbAlls[1].checked
        var chbAll=this;
        for(var chb of chbs){
            chb.checked=chbAll.checked;
        }   
    }

    //点下面的每一个选项，都有可能影响全选按钮
    for(var chb of chbs){
        chb.onclick=function(){
            var chb=this;
            for(var chbAll of chbAlls){
                if(chb.checked==false){
                    chbAll.checked=false;
                }else{//寻找其他的input是否选中
                    console.log(chb.checked)
                    var unchecked=document.querySelector("[data-toggle=select-pro]:not(:checked)");
                    console.log(unchecked);
                    if(unchecked===null){
                        chbAll.checked=true;//上边input才选中
                    }
                }
            }
        }
    }
   
 
   
    
})();    