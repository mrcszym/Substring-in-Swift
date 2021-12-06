// Program that will load two sequences of integers (first has to be longer than second) and check
// if the shorter one is a substring of the longer one. 
// If so, it will print number of appearances and indexes with they starts.

import Foundation
 
print("First numerical sequence:")
var string1: String? = readLine()
print("Second numerical sequance:")
var string2: String? = readLine()
 
var sequenceArr1 = Array(string1!)
var sequenceArr2 = Array(string2!)
 
var startingIndexArr: [Int] = []
var occurrenceCounter: Int = 0
 
if sequenceArr1.count < sequenceArr2.count {
    print("Second sequance must be shorter!")
    exit(0)
}
 
for i in 0..<sequenceArr1.count {
    if sequenceArr1[i] == sequenceArr2[0] {
 
        if (i + sequenceArr2.count) <= sequenceArr1.count {
        
            for j in 1..<sequenceArr2.count {
                
                if sequenceArr1[i + j] != sequenceArr2[j] {
                    break
                }
     
                if j == sequenceArr2.count - 1 {
                    occurrenceCounter += 1
                    startingIndexArr.append(i)
                    
                }        
            }
        }
       
    }
}
 
print("Number of appearances: \(occurrenceCounter)")
print("Starting indexes: \(startingIndexArr)")