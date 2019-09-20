const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
  var uid=req.query.uid;
  var sql="SELECT cid,product_id,title,price,count FROM HW_shopping_cart WHERE user_id=?";
  pool.query(sql,[uid],(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:"查询成功",data:result});
  })
});

router.get("/addcart",(req,res)=>{
    var pid=req.query.pid;
    var price=req.query.price;
    var title=req.query.title;
    var uid=req.query.uid;
    console.log(uid)
    if(!uid){
        //2.3返回错误消息
        res.send({code:-1,msg:"请先登录"});
          return;
      }
    var sql="SELECT cid FROM HW_shopping_cart WHERE user_id=? AND product_id=?";
    pool.query(sql,[uid,pid],(err,result)=>{
        if(err)throw err;
        var sql="";
        if(result.length==0){
          //4.没有购买过此商品添加
          console.log("没买过")
          sql=`INSERT INTO HW_shopping_cart VALUES(null,${uid},${pid},1,'${title}',${price})`;  //此处数值对应数据库数值
        }else{
            console.log("买过")
            sql=`UPDATE HW_shopping_cart SET count=count+1 WHERE user_id=${uid} AND product_id=${pid}`;
        }
        //5.购买过此商品更新
        pool.query(sql,(err,result)=>{
          if(err)throw err;
          res.send({code:1,msg:"添加成功"});
        })
    })
})

router.get("/del",(req,res)=>{
  //获取参数id
  var id=req.query.id;
  //sql删除指定数据
  var sql="DELETE FROM HW_shopping_cart WHERE cid= ?";
  //json
  pool.query(sql,[id],(err,result)=>{
    if(err)throw err;
    //如果sql语句是:insert/delete/update
    //执行成功条件:影响行数
    if(result.affectedRows>0){
      res.send({code:1,msg:"删除成功"});
    }else{
      res.send({code:-1,msg:"删除失败"});
    }
   })
  });

 router.get("/delM",(req,res)=>{
    //1.参数 ids=2,3
    var ids=req.query.ids;
    //2.sql语句
    var sql=`DELETE FROM HW_shopping_cart WHERE cid IN(${ids})`;
    //3.json
    pool.query(sql,(err,result)=>{
      if(err)throw err;
      if(result.affectedRows>0){
        res.send({code:1,msg:"删除成功"});
      }else{
        res.send({code:-1,msg:"删除失败"});
      }
    })
  })

module.exports=router;