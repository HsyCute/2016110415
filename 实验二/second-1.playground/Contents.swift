import UIKit

//(1)给定一个Dictionary数组，Dictionary包含key值name和key值age，用map函数返回name字符串数组
var dictionary=[["name":"钱千","age":"19"],["name":"陆白","age":"20"]]
var name=dictionary.map{($0["name"]!)}
print(name)

//(2)给定一个String数组，用filter函数选出能被转成Int的字符串
var array=["one","1","two","2","three","four","3"]
var new_arr=array.filter{Int($0) != nil}
print("字符串为：\(new_arr)")

//(3)用reduce函数把String数组中元素连接成一个字符串，以逗号分隔
var arrayone=["g","o","o","d"]
var new_arrone=array.reduce("",{$0+","+$1})
var new_arrtwo=new_arr.remove(at :new_arr.startIndex) //删除多余的逗号
print("连接后的字符串为：\(new_arr)")

//(5)新建一个函数数组，函数数组里面保存了不同函数类型的函数，要求从数组里找出参数为一个整数，返回值为一个整数的所有函数；
func fun1(a: Int) -> Int {    //函数类型为(Int) -> Int
    return a
}
func fun2() -> Int {         //函数类型为() -> Int
    return 1
}
func fun3(a: String) -> Int {   //函数类型为(String) -> Int
    return Int(a)!
}
func fun4(a: Int) {}  //函数类型为(Int) -> Void
let funArrary: [Any] = [fun1,fun2,fun3,fun4]
for (index, value) in funArrary.enumerated() {
    if value is (Int) -> Void {
        print("此函数在数组中的下标为:\(index)")
    }
}

//(6)扩展Int，增加sqrt方法，可以计算Int的Sqrt值并返回浮点数，进行验证；
extension Int {
    func sqrt() -> Double {
        return Darwin.sqrt(Double(self))
    }
}
print(25.sqrt())

//(7)实现一个支持泛型的函数，该函数接受任意个变量并返回最大和最小值，分别传入整数值、浮点数值、字符串进行验证。
func getmaxandmin<T:Comparable>(x:T...)->(T,T){
    var max=x[0]
    var min=x[0]
    for i in x{
        if max < i{
            max=i
        }
        else if min > i{
            min=i
        }
        else{}
    }
    return (max,min)
}
print("最大值和最小值为：\(getmaxandmin(x:1,2,3,6))")






