//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var leftOperand = 5
var rightOperand = 6


//Addition
print(leftOperand + rightOperand)

//Subtraction
print(leftOperand - rightOperand)

//Multiplication
print(leftOperand * rightOperand)

//Division
print(leftOperand / rightOperand)

var joiner = ""
var elements = ["1", "2", "3"]
var joinedStrings = elements.joined(separator: "")
print("\(joinedStrings)",terminator:"")

print("Hello World")

//Cosine

func cosine(value: Double){
    print(cos(value * M_PI / 180.0))
}

cosine(value: 10)

//square root
func squareRoot(value: Double){
    print(sqrt(value))
}

squareRoot(value: 9)

//Pi
print(M_PI)

print(sqrt(Double("49")!))



