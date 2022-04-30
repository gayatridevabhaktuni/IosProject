//
//  GKData.swift
//  quiz_App
//
//  Created by Student on 4/29/22.
//

import Foundation

    struct gk{
        var ques: String
        var options :[opt] = []
        var correct : String
        
    }
struct opt{
    var option1: String
    var option2: String
    var option3: String
    var option4: String
    
}
let q1 = gk(ques: "what", options:[opt(option1: "a", option2: "b", option3: "c", option4: "d" )], correct: "b")
let q2 = gk(ques: "why", options: [opt(option1: "a", option2: "b", option3: "c", option4: "d")], correct: "b")
let q3 = gk(ques: "how", options: [opt(option1: "a", option2: "b", option3: "c", option4: "d")], correct: "b")
let q4 = gk(ques: "where", options: [opt(option1: "a", option2: "b", option3: "c", option4: "d")], correct: "b")
let q5 = gk(ques: "when", options: [opt(option1: "a", option2: "c", option3: "d", option4: "b")], correct: "b")
    let gkq = [q1,q2,q3,q4,q5]

