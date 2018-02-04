//
//  Question.swift
//  Quizzler
//

//

import Foundation
import UIKit

class Question
{
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer : Bool){
        questionText = text
        answer = correctAnswer
    }
}
//
//class myOtherClass {
//    let question = Question(text: "Hello thar", correctAnswer: true)
//}

