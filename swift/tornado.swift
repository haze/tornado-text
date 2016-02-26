//
//  main.swift
//  TornadoText
//
//  Created by Haze on 2/25/16.
//

import Foundation

// JACKED (and edited) FROM Joseph Mark

func prompt() -> String {
    let fs = NSFileHandle.fileHandleWithStandardInput()
    return NSString(data: fs.availableData, encoding: NSUTF8StringEncoding)!.stringByReplacingOccurrencesOfString("\n", withString: "")
}

func shift(str: String) -> String {
    var copy = str
    let fchar = str.startIndex
    copy.append(str[fchar])
    copy.removeAtIndex(fchar)
    return copy
}
func shiftAndWrite(str: String) -> String {
    print(str)
    return shift(str)
}

func main(){
    print("Enter some text: ")
    var text = prompt()
    
    if text.characters.last! != " " {
        text.appendContentsOf(" ")
    }
    
    print("Enter line amount: (-1 = infinity)")
    let num = prompt()
    
    if let inum = Int(num) {
        if inum == -1 {
            while(true) {
                text = shiftAndWrite(text)
            }
        } else {
            for(var i = 0; i < inum; i++){
                text = shiftAndWrite(text)
            }
        }
    } else {
        print("Invalid Number!")
        main()
    }
    
}


main()