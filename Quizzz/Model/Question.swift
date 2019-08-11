//
//  Question.swift
//  Quizzz
//
//  Created by Ba Phuc Nguyen on 2019-08-11.
//  Copyright © 2019 Phuc Nguyen. All rights reserved.
//

import Foundation

class Question {

    let question: String
    let answer: Bool

    init(question: String, answer: Bool) {
        self.question = question
        self.answer = answer
    }
}
