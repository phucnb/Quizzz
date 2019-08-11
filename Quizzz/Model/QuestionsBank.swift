//
//  QuestionsBank.swift
//  Quizzz
//
//  Created by Ba Phuc Nguyen on 2019-08-11.
//  Copyright © 2019 Phuc Nguyen. All rights reserved.
//

import Foundation

class QuestionsBank {

    var questionsArray = [Question]()

    init() {
        // skipping one step and just creating the quiz item inside the append function
        questionsArray.append(Question(question: "A slug\'s blood is green.", answer: true))

        questionsArray.append(Question(question: "Approximately one quarter of human bones are in the feet.", answer: true))

        questionsArray.append(Question(question: "The total surface area of two human lungs is approximately 70 square metres.", answer: true))

        questionsArray.append(Question(question: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: true))

        questionsArray.append(Question(question: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: false))

        questionsArray.append(Question(question: "It is illegal to pee in the Ocean in Portugal.", answer: true))

        questionsArray.append(Question(question: "You can lead a cow down stairs but not up stairs.", answer: false))

        questionsArray.append(Question(question: "Google was originally called \"Backrub\".", answer: true))

        questionsArray.append(Question(question: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", answer: true))

        questionsArray.append(Question(question: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: false))

        questionsArray.append(Question(question: "No piece of square dry paper can be folded in half more than 7 times.", answer: false))

        questionsArray.append(Question(question: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", answer: true))
    }

}
