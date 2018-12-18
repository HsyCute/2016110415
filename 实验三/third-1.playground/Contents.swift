import UIKit

/*
 1.显示当前准确的中文时间，包括北京、东京、纽约、伦敦，格式为（2016年9月28日星期三 上午10:25）
 a)显示中文需要设置locale
 */
let currentDate = Date()
var formatter = DateFormatter()
formatter.dateFormat = "yyyy年M月dd日EEEE aa KK:mm"
formatter.locale = Locale(identifier: "China")

formatter.timeZone = TimeZone(abbreviation: "UTC+8:00")
let Beijing_time = formatter.string(from: currentDate)
print("北京的时间:\(Beijing_time)")

formatter.timeZone = TimeZone(abbreviation: "UTC+9:00")
let Tokyo_time = formatter.string(from: currentDate)
print("东京的时间:\(Tokyo_time)")

formatter.timeZone = TimeZone(abbreviation: "UTC-5:00")
let NewYork_time = formatter.string(from: currentDate)
print("纽约的时间:\(NewYork_time)")
formatter.timeZone = TimeZone(abbreviation: "UTC+0:00")
let London_time = formatter.string(from: currentDate)
print("伦敦的时间:\(London_time)")
