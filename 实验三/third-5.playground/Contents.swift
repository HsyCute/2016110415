import UIKit

//5.从网上查找访问一个JSon接口文件，并采用JSONSerialization和字典对其进行简单解析；
enum MyError:Error{
    case Zero
    case NotURL
}
guard let weatherUrl = URL(string: "http://www.weather.com.cn/weather/101270101.shtml")
    else{
        throw MyError.NotURL
}
let jsondate = try! Data(contentsOf: weatherUrl)
let json = try! JSONSerialization.jsonObject(with: jsondate, options: .allowFragments)
print(json)
//把json文件转化为字典
guard let dictionary = json as?[String:Any] else{
    throw MyError.NotURL
}
guard let weather = dictionary["weatherinfo"] as? [String:String] else{
    throw MyError.NotURL
}
print(weather)
let temp1 = weather["temp1"]
print(temp1!)
