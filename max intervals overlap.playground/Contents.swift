import UIKit



func printMaxOverlapInterval(inArray: [Int], outArray : [Int], count : Int)
{
    var guest_In : Int = 1
    var maxCount : Int = 1
    var inTime : Int = inArray[0]
    
    var i = 1
    var j = 0
    
    while (i < count && j < count)
    {
        
        if(inArray[i] < outArray[j])
        {
            guest_In += 1
            
            if(maxCount < guest_In)
            {
                maxCount = guest_In
                inTime = inArray[i]
            }
            i += 1
        }
       else
        {
            j += 1
            guest_In -= 1
        }

    }
    
    print("Max \(guest_In) guest available on time \(inTime)")
    
}


var inArray = [1, 2, 10, 5, 5]
var outArray = [4, 5, 12, 9, 12]

printMaxOverlapInterval(inArray: inArray, outArray: outArray, count: inArray.count)




