import UIKit


let fileManager = FileManager.default
let docPath = fileManager.urls(for: .documentDirectory,in: .userDomainMask).first?.path
var file = docPath?.appending("/futing")
if fileManager.fileExists(atPath: file!){
    let image = file?.appending("/ft.jpg")
   if fileManager.fileExists(atPath: image!){
      print("exist!")
   }
   else{
    let url = URL(string: "http://pic1.win4000.com/wallpaper/2017-11-17/5a0e768fb8f0a.jpg")
    let data = try Data(contentsOf: url!)
    try data.write(to:URL(fileURLWithPath: image!),options: .atomicWrite)
   }
}
else{
    try fileManager.createDirectory(atPath: file!, withIntermediateDirectories: true, attributes: nil)
    print ("the file is not exist,please create!")
}
