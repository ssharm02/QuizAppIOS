//
//  QuestionBank.swift
//  Quizzler


import Foundation
class QuestionBank
{
    var list = [Question]()
    
    init() {
        //create let or var newQuestionObject = Question (text and boolean)
        
        // Creating a quiz item and appending it to the list
        let item = Question(text: "Is Voyager I the furthest man made object from Eather.", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "Is Mars the largest planet in our solar system.", correctAnswer: false))
        
        list.append(Question(text: "Binary system uses the power of 5.", correctAnswer: false))
        
        list.append(Question(text: "Game of Throes is the best show in the history of mankind.", correctAnswer: true))
        
        list.append(Question(text: "Playstation 4 is awesome.", correctAnswer: true))
        
        list.append(Question(text: "PHP sucks", correctAnswer: true))
        
        list.append(Question(text: "Radio waves are used to recieve telephon calls.", correctAnswer: true))
        
        list.append(Question(text: "Aliens and UFOS are real.", correctAnswer: false))
        
        list.append(Question(text: "Tidal activity is caused by the gravitational pull of the moon.", correctAnswer: true))
        
        list.append(Question(text: "Pacific ocean is the largest ocean on Earth", correctAnswer: false))
        
        list.append(Question(text: "Cats are mans best friend", correctAnswer: false))
        
        list.append(Question(text: "Trees are contributing to global warming according Donal Trum", correctAnswer: true))
        
        list.append(Question(text: "Mycology is the study of dogs", correctAnswer: false))
        
    }
}
