import SwiftyJSON
import Foundation 

let statusKey = "status"

let jsonExample = "{\"\(statusKey)\": \"In Progress\"}"

if let jsonData = jsonExample.data(using: String.Encoding.utf8,
				    allowLossyConversion: false) {

    let parsedJSON = try? JSON(data: jsonData)
    if let status = parsedJSON?[statusKey].string {
        print("current status: \(status)")
    }
}
