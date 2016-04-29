import Foundation
import JavaScriptCore

let context = JSContext()

let path = NSBundle.mainBundle().pathForResource("RouteBoxer", ofType: "js")
let contentData = NSFileManager.defaultManager().contentsAtPath(path!)
let content = NSString(data: contentData!, encoding: NSUTF8StringEncoding) as? String
context.evaluateScript(content)


let pathScript = NSBundle.mainBundle().pathForResource("script", ofType: "js" /*, inDirectory: "pagedown"*/)
let contentDataScript = NSFileManager.defaultManager().contentsAtPath(pathScript!)
let contentScript = NSString(data: contentDataScript!, encoding: NSUTF8StringEncoding) as? String


let resultScript = context.evaluateScript(contentScript)


