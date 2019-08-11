//
//  ViewController.swift
//  Quizzz
///Volumes/Data/OneDrive - Algonquin College/iOS App Development/Apps/Quizzz/Quizzz/AppDelegate.swift
//  Created by Ba Phuc Nguyen on 2019-08-10.
//  Copyright © 2019 Phuc Nguyen. All rights reserved.
//

import UIKit
import UICircularProgressRing

class ViewController: UIViewController {

    var questionNumber = 0
    let questions = QuestionsBank()
    var numberOfQuestions: Int = 0

    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var questionText: UILabel!

    @IBOutlet weak var progressRing: UICircularProgressRing!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.viewContainer.layer.cornerRadius = 10
        numberOfQuestions = questions.questionsArray.count + 1
        questionText.text = questions.questionsArray[0].question

        //init circle progress ring
        self.progressRing.maxValue = CGFloat(numberOfQuestions)
        self.progressRing.shouldShowValueText = true
        self.progressRing.value = 0
        self.progressRing.valueFormatter = UICircularProgressRingFormatter(valueIndicator: " / \(numberOfQuestions)", rightToLeft: false, showFloatingPoint: false, decimalPlaces: 1)

    }


    @IBAction func selectedAnswer(_ sender: UIButton) {
        print(sender.tag)
            self.progressRing.startProgress(to: CGFloat(questionNumber+1), duration: 0.5)

        questionNumber = questionNumber + 1
        updateQuestion()

    }

    func updateQuestion() {
        questionText.text = questions.questionsArray[questionNumber].question
    }

}

