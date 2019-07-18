(function(){
		/*局部放大镜*/
		var pro_body=document.querySelector(".pro_body");
		var min=document.querySelector(".min");
		var max=document.querySelector(".max");
		var fd=document.querySelector(".fd");
		var img=document.querySelector(".max img");
		min.onmouseover=function(){
			//鼠标覆盖，显示max和fd
			max.style.display="block";
			fd.style.display="block";
			//鼠标离开，隐藏
			min.onmouseout=function(){
				max.style.display="none";
				fd.style.display="none";
			}
			min.onmousemove=function(){
				//计算fd的左上边框距离div的左上边框的距离
				var x=event.clientX-min.offsetLeft-fd.offsetWidth/2-pro_body.offsetLeft;
				var y=event.clientY-min.offsetTop-fd.offsetHeight/2-pro_body.offsetTop;
				//计算fd移动的最大距离
				var maxX=min.offsetWidth-fd.offsetWidth;
				var maxY=min.offsetHeight-fd.offsetHeight;
				//边界判断
				if(x<=0){
					x=0;
				}else if(x>=maxX){
					x=maxX;
				};
				if(y<=0){
					y=0;
				}else if(y>=maxY){
					y=maxY;
				}
				//fd的位置
				fd.style.left=x+"px";
				
				fd.style.top=y+"px";

				//移动比例
				var yidongX=x/maxX;
				var yidongY=y/maxY;
				//图片的左上移动距离
				img.style.left=yidongX*(max.offsetWidth-img.offsetWidth)+"px";
				img.style.top=yidongY*(max.offsetHeight-img.offsetHeight)+"px";
			}
		}

		//点击小图片，大图片也跟着换
		$("img.my-small").click(function(){
			console.log(111)
			$("img.my-big").attr("src",$(this).attr("data-target"))
		})
})();
