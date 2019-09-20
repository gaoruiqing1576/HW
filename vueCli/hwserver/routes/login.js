const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
    var uname=req.query.uname;
    var upwd=req.query.upwd;
    var sql="SELECT uid,user_name,avatar from HW_user WHERE uname=? AND upwd=?";
    pool.query(sql,[uname,upwd],(err,result)=>{
       console.log(result)
       var uid=result[0].uid;
       var user_name=result[0].user_name;
       var avatar=result[0].avatar;
        //执行sql语句回调函数
        if(err)throw err;
        //判断
        if(result.length==0){
           res.send({code:-1,msg:"用户名或密码有误"});
        }else{
          //登录成功
          //1.将登录成功数据保存在session中
          //result=[{id:1}]
            req.session.uid=uid;
            var data={
               uid:uid,
               user_name:user_name,
               avatar:avatar
            }
          //2.将成功消息发送至脚手架
           res.send({code:1,data:data,msg:"登录成功"})    
        }
     })
})

module.exports=router;