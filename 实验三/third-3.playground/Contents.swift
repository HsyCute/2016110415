import UIKit
//3.将1、2题的时间和字符串存入一个字典中，并存入沙盒中的Document某文件中；
var dic = [ "北京": Beijing_time, "东京": Tokyo_time, "纽约": NewYork_time, "伦敦": London_time, "new_str":new_str,"str1":str1] as! AnyObject//将字典转换为任意类型，方便后面写入文件
let fileManager = FileManager.default
var url = fileManager.urls(for: .documentDirectory, in:.userDomainMask).first!
url.appendPathComponent("test.txt")
try? dic.write(to: url, atomically: true)
