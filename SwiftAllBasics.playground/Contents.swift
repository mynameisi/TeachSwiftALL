//把一下代码直接拷贝到playground里面实现
//一下有很多代码都给了答案了，取消掉注释就可以运行
//zs

import UIKit

//用一个print打印1
//print(1)
//用一个print打印 1 2
//print(1,2)
//用一个pirnt打印 1=2=3
//print(1,2,3, separator: "=")
//用两个print打印:
//1
//2
//print(1)
//print(2)
//用两个print(1)和print(2)实现打印12
//print(1, terminator: "")
//print(2, terminator: "")
//创建出来所有的基本数据类型
//整数
//var i:Int=2
//单精度小数
//var j:Float=3.14
//双精度小数
//var k:Double=2.14
//字母
//var c:Character="a"
//布尔
//var b:Bool=true

//创建一个一维数组a1
// 1 2 3
//var arr:[Int]=[1,2,3]
// 打印出这个数组的内容
//print(arr)
// 用for循环这个数组的内容
//for i in 0..<3 {
//    print(arr[i])
//}
//for i in arr{
//    print(i)
//}
//给这个一维数组加一个4
//arr.append(4)


//创建一个二维数组a2:
// 1 2 3
// 4 5 6
// 7 8 9
//var a2=[[1,2,3],[4,5,6],[7,8,9]]
//打印出这个数组的内容
//print(a2)
//循环打印出这个数组的内容
//for i in 0..<a2.count{
//    for j in 0..<a2[i].count{
//        print(a2[i][j], terminator: " ")
//    }
//    print("")
//}
//把a2放到一个一维数组a1中
//var a1=[Int]()
//for x in a2{
//    for y in x{
//        a1.append(y)
//    }
//}
//循环a1并打印出a2的内容
//for i in 0..<3{
//    for j in 0..<3{
//        print(a1[i*3+j], terminator: " ")
//    }
//    print("")
//}


//x=2
//f(x)=2x+3
//g(x)=4x-5
//m(x)=f(x)+g(x)
//把以上内容用函数表达出来
//func f(x:Int)->Int{
//    return 2*x+3
//}
//func g(x:Int)->Int{
//    return 4*x-5
//}
//func m(x:Int)->Int{
//    return f(x)+g(x)
//}
//print(m(2))



//用一个整数表示白色
//var i=0xFFFFFFFF;
//从左->右
//FF -> 红 255
//FF -> 绿 255
//FF -> 蓝 255
//FF -> 透明 255

//用一个整数表示黑色
//var i=0x000000F
//从左->右
//00 -> 红 0
//00 -> 绿 0
//00 -> 蓝 0
//FF -> 透明 255 <-注意透明度始终是255

//用一个整数表示红色
//用一个整数表示绿色
//用一个整数表示蓝色
//获得红色整数中的红色阶
//var i=0xFF0000FF //R255 G0 B0 A255 表示不透明的红色
//var R=i>>24

//获得绿色整数中的绿色阶

//0xFFFF00FF的蓝色阶部分变成255
//var i=0xFFFF00FF
//i=i|(255<<8)

//任何一个数的蓝色阶部分变成255
//var i=0xFFFF23FF
//i=(i&0xFFFF00FF)|(255<<8)

//写一个if判断一个整数表示的是白色还是黑色
//var i=0xFFFFFFFF
//if i == 0x00000000{
//    print("黑色")
//}else{
//    print("白色")
//}

//把一个黑色rgba变成红色rgba
//var black=0xFFFFFFFF
//black=(black&0x00FFFFFF)|(0xFF<<24)
//black=(black&0xFF00FFFF)|(0x00<<16)
//black=(black&0xFFFF00FF)|(0x00<<8)


//写一个方法 setRed(rgba:Int, red:Int) 把红色阶存入到rgba中
//var black=0x00000000
//func setRed(x:Int,y:Int)->Int{
//    return (x&0x00FFFFFF)|(y<<24)
//}
//var red:Int=setRed(black, y: 255)


//写一个方法getGreen 返回rgba的绿色阶
//func getGreen(rgba:Int)->Int{
//    return (rgba&0x00FF0000)>>16
//}




//有一个整型变量 i
//写一个switch实现
//i==1, 打印 晴天
//i==2, 打印 阴天
//i==3, 打印 下雨
//其他,  打印 雾霾
//var pm=80
//switch pm{
//case 0...50:
//    print("良好")
//case 50...80:
//    print("轻度污染")
//case 80...150:
//    print("重度污染")
//case 150...500:
//    print("严重污染")
//default:
//    print("不适合人类生存")
//}

//有一个整型变量 rgba, 里面存的是RGBA的值
//写一个switch实现
//rgba表示白色, 就返回白
//rgba表示红色, 就返回红
//rgba表示绿色, 就返回蓝色, 黑色, 就返回绿, 蓝, 黑
//其他，就返回: 无






//定义一个People类
//属性:name
//行为: eat(food), sleep(bed)


//创建一个人类People使得var zs=People("张三")
//class People{
//    var name:String
//    //注意下面如果没有"_", 一会儿就必须这么写:var zs=People(n:"张三")
//    //            用"_", 就可以这么写:     var zs=People("张三")
//    init(_ n:String){
//        name=n
//    }
//}

//创建一个一维数组a3, 并把数组的内容打印出来
// 张三 李四 王五
//var a3=[People("ZS"), People("LS"), People("WW")]
//创建一个二维数组a4, 并把数组的内容打印出来
// 张三 李四
// 王五 赵六
// 田七 郭八
//创建一个二维数组，让他表示如下颜色矩阵
//白 黑 白
//黑 白 黑
//白 黑 白
//var bs=0xFFFFFFFF;
//var hs=0x00000000;
//var a5=[
//    [bs, hs, bs],
//    [hs, bs, hs],
//    [bs, hs, bs]
//]

//创建一个二维数组，让他表示如下颜色矩阵
//红 黑 红
//黑 红 黑
//红 黑 红

//创建一个类Pixel
//属性: rgba:Int 初始值是0 表示该像素点的rgba整型值
//方法:
//init(Int) 初始化方法初始化rgba的值
//getRed->Int, getGreen->Int, getBlue->Int 从rgba中获得表示RGB的色阶的Int值
//setRed(Int), setGreen(Int), setBlue(Int) 把RGB的色阶保存到rgba里面去
//setRGB(Int, Int, Int) 把RGB的色阶一次性的保存到rgba里面去
//getColor()->String 返回 黑、白、红、绿、蓝、无 分别是rgba当前代表的颜色
class Pixel{
//    var rgba=0
//    init(_ n:Int){
//        rgba=n
//    }
//    func getRed()->Int{
//        return rgba>>24
//    }
//    func setRed(r:Int){
//        rgba=((rgba&0x00FFFFFF)|(r<<24))
//    }
//    func setRGB(r r:Int, g:Int, b:Int){//r r表示用户在调用这个方法的时候必须指出方法名
//        setRed(r);
//        setGreen(g);
//        setBlue(b);
//    }
//    func getColor()->String{
//        switch rgba{
//        case 0xFFFFFFFF:
//            return "黑"
//        default:
//            return "无"
//        }
//    }
}


//创建一个类SimpleImage
//属性:
//image:[Pixel] 一个像素点的一维数组，每一个点对应给定图片的每一个点
//length 表示该图片的宽度，即横向有多少像素点
//height 表示该图片的高度，即纵向有多少像素点
//方法:
//init([[Int]]) 接受一个表示图片的矩阵，把一排一排的点加入到image当中
//getPixel(x:Int, y:Int)->Pixel 给定(x, y)获得该点的像素
//printImage() 以矩阵的形式打印出所有的像素点
//class SimpleImage{
//    var image=[Pixel]()
//    var length=0
//    var height=0
//    init(_ img:[[Int]]){
//        
//    }
//    func getPixel(x x:Int,y:Int){
//        return image[];
//    }
//    func printImage(){
//        print("---------图形矩阵如下----------")
//        for x in 0..<height{
//            for y in 0..<length{
//                print(<#T##items: Any...##Any#>, separator: <#T##String#>, terminator: <#T##String#>)
//            }
//        }
//    }
//}




//有如下一个矩阵表示我们需要处理的图形
//白黑白
//黑白黑
//白黑白
//var w:Int=0xFFFFFFFF; //white
//var b:Int=0x000000FF; //black
//var x_png=[
//    [w,b,w],
//    [b,w,b],
//    [w,b,w],
//]

//写一段代码把图片中的(0,0)像素变成红色
//var img=SimpleImage(x_png)
//img.printImage()
//上面这句话运行完结果应该是
//白 黑 白
//黑 白 黑
//白 黑 白
//var p=img.getPixel(0, y: 0)
//p.setRGB(r: 255, g: 0, b: 0)
//img.printImage()
//上面这句话运行完结果应该是
//红 黑 白
//黑 白 黑
//白 黑 白

//写一段代码把图片中的第二行的像素变成红色
//白 黑 白
//红 红 红
//白 黑 白

//写一段代码把图片中的所有白色变成红色
//红 黑 红
//黑 红 黑
//红 黑 红
