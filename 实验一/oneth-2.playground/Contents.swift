import UIKit

/*
 作业2:（枚举、类、派生、协议）
 */

enum Gender:Int{
    case male,female
    static func <(ll:Gender,kk:Gender) ->Bool{
        return ll.rawValue<kk.rawValue
    }
}
class Person{
    var firstname:String
    var lastname:String
    var age:Int
    var fullname:String { return firstname+lastname}
    var gender:Gender
    init (firstname:String,lastname:String,age:Int,gender:Gender){
        self.firstname=firstname
        self.lastname=lastname
        self.age=age
        self.gender=gender
    }
    //便利构造函数
    convenience init(firstname:String){
        self.init(firstname:firstname, lastname:"",age:20, gender: Gender.female)
    }
    static func ==(p1:Person,p2:Person)->Bool{
        return p1.fullname==p2.fullname
    }
    static func !=(p1:Person,p2:Person)->Bool{
        return !(p1.fullname==p2.fullname)
    }
    //输出
    var output:String{
        return "fullname:\(fullname),age:\(age),gender:\(gender)"
    }
}
class Teacher: Person{
    var title:String
    init (firstname:String,lastname:String,age:Int,gender:Gender,title:String){
        self.title=title
        super.init(firstname:firstname,lastname:lastname,age:age,gender:gender)
        
    }
    convenience init(firstname:String){
        self.init(firstname:firstname, lastname:"",age:29, gender: Gender.female,title:"Chinese")
    }
    override var output:String{
        return "fullname:\(fullname),age:\(age),gender:\(gender),title:\(title)"
    }
}
class Student: Person{
    var stuNo:String
    init (stuNo:String,firstname:String,lastname:String,age:Int,gender:Gender){
        self.stuNo=stuNo
        super.init(firstname:firstname,lastname:lastname,age:age,gender:gender)
    }
    convenience init(firstname:String){
        self.init(stuNo:"",firstname:firstname, lastname:"",age:20, gender: Gender.female)
    }
    override var output:String{
        return "stuNo:\(stuNo),fullname:\(fullname),age:\(age),gender:\(gender)"
    }
}
//初始化一个数组用于存储对象
var array=[Person]()
//赋值
var person1=Person(firstname:"白",lastname:"幺",age:19,gender:Gender.male)
var person2=Person(firstname:"夏天")
var teacher1=Teacher(firstname:"赵",lastname:"松",age:30,gender:Gender.male,title:"math")
var teacher2=Teacher(firstname:"孙一")
var student1=Student(stuNo:"2016110101",firstname:"刘",lastname:"树",age:19,gender:Gender.male)
var student2=Student(stuNo:"2016110102",firstname:"周",lastname:"又",age:29,gender:Gender.female)
//将对象存入数组array中
array.append(person1)
array.append(person2)
array.append(teacher1)
array.append(teacher2)
array.append(student1)
array.append(student2)
//输出对象
print(person1.output)
print(person2.output)
print(teacher1.output)
print(teacher2.output)
print(student1.output)
print(student2.output)

//定义一个字典
var dict=["Person":0,"Teacher":0,"Student":0]
//统计值
for j in array{
    if j is Teacher{
        dict["Teacher"]!+=1
    }
    else if j is Student{
        dict["Student"]!+=1
    }
    else {
        dict["Person"]!+=1
    }
}
//输出
print("                           ")
print("在数组中各种类的值为：")
for (key, value) in dict {
    print("\(key) has \(value)")
}
//按年龄排序
print("                           ")
print("按age从小到大排序为:")
array.sort{$0.age<$1.age}
for j in array{
    print(j.output)
}
//按fullname排序
print("                           ")
print("按fullname排序为:")
array.sort{$0.fullname<$1.fullname}
for j in array{
    print(j.output)
}
//按gender+age排序
print("                           ")
print("按gender+age排序为:")
array.sort{($0.gender<$1.gender) && ($0.age<$1.age)}
for j in array{
    print(j.output)
}

