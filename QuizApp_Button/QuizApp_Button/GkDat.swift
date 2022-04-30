//
//  GkDat.swift
//  QuizApp_Button
//
//  Created by Student on 4/30/22.
//

import Foundation

struct QuizManager {
    
    let quiz = [
        Question(question: "Which is the largest organ in the human body?", choices: ["Heart", "Skin", "Large Intestine","hj"], answer: "Skin"),
        Question(question: "Five dollars is worth how many nickels?", choices: ["25", "50", "100"], answer: "100"),
        Question(question: "What do the letters in the GMT time zone stand for?", choices: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time","gh"], answer: "Greenwich Mean Time"),
        Question(question: "What is the French word for 'hat'?", choices: ["Chapeau", "Écharpe", "Bonnet"], answer: "Chapeau"),
        Question(question: "In past times, what would a gentleman keep in his fob pocket?", choices: ["Notebook", "Handkerchief", "Watch", "ghj"], answer: "Watch"),
        Question(question: "How would one say goodbye in Spanish?", choices: ["Au Revoir", "Adiós", "Salir","gfh"], answer: "Adiós"),
        Question(question: "Which of these colours is NOT featured in the logo for Google?", choices: ["Green", "Orange", "Blue","zdfgh"], answer: "Orange"),
        Question(question: "What alcoholic drink is made from molasses?", choices: ["Rum", "Whisky", "Gin","ghf"], answer: "Rum"),
        Question(question: "What type of animal was Harambe?", choices: ["Panda", "Gorilla", "Crocodile","ert"], answer: "Gorilla"),
        Question(question: "Where is Tasmania located?", choices: ["Indonesia", "Australia", "Scotland","ert"], answer: "Australia")
    ]
    
    var questionNumber = 0;
    var score = 0;
    
    
    mutating func checkAnswer(_ userAnswer:String) -> Bool {
        print(userAnswer)
        print(quiz[questionNumber].answer)
        if userAnswer == quiz[questionNumber].answer{
            score+=1
            return true;
        }
        return false;
    }
    
    func checkQuestion() -> String {
        return quiz[questionNumber].question
    }
    func checkChoices() -> [String] {
        return quiz[questionNumber].choices
    }
    func checkProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count);
    }
    func checkScore() -> Int {
        return score
    }
    
    mutating func nextQuestion(){
        questionNumber += 1
        if(questionNumber==quiz.count){
            questionNumber=0
            score = 0;
        }
    }

}
struct Question {
    let question: String
    let choices: [String]
    let answer: String
    init(question: String, choices: [String], answer: String){
        self.question = question
        self.choices = choices
        self.answer = answer
        
    }
}
