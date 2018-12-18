import UIKit

//按照从小到大的顺序
var primes=[Int]()    //定义一个数组用于存储筛选出来的数
for i in 2...10000{
    var op=true
    for j in 2..<i{
        if i%j==0{
            op=false
        }
    }
    if op {
        primes.append(i)
    }
}
//排序法1
func compare(x:Int,y:Int)->Bool{
    return x>y
}
primes.sort(by:compare)   //排序
print(primes)
//排序法2
primes.sort(by:{
    (x:Int,y:Int)->Bool in
    return x>y
})
print(primes)
//排序法3
primes.sort(by:{
    (x,y) in
    x>y
})
print(primes)
//排序法4
primes.sort(by:{ $0 > $1 })
print(primes)
//排序法5
primes.sort(by: >)
print(primes)

