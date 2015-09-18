//
//  main.swift
//  Euclid_Algorithm
//
//  Created by Rich Blanchard on 9/18/15.
//  Copyright © 2015 Rich. All rights reserved.
//

import Foundation
func newString(stringToReverse:String)->String {
    var reversedString = String()
    for var index = stringToReverse.characters.count - 1; index >= 0; index-- {
        let backwardsChar = [Character](stringToReverse.characters)
        reversedString.appendContentsOf("\(backwardsChar[index])")
      
    }
    return reversedString
}

func getBinary(base: Int,number: Int )->Void {
   
   var quotient = base
    var nominator = number
    var newNumberString = ""
    while nominator > 0 {
       
        var remainder = Int(nominator % quotient)
        var correctNominator = (nominator - remainder) / quotient
        newNumberString.appendContentsOf("\(remainder)")
        
        nominator = correctNominator
    }
    let String = newString(newNumberString)
    print(String)
    
}
func remainderHelper(remainder: Double, base: Double) {
    let power = base
    var newRemainder = String()
    var numberToBeWritten = remainder
    for  var i = power; i >= 0; i-- {
        let divisor = pow(power, i)
        numberToBeWritten /= divisor
        let newNumber = floor(numberToBeWritten)
        newRemainder.appendContentsOf("\(newNumber)")
        
    }
    print("\(newRemainder)")
    
}
getBinary(2, number: 10)
