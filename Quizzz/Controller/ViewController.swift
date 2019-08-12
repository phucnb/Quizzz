//
//  ViewController.swift
//  Quizzz
///Volumes/Data/OneDrive - Algonquin College/iOS App Development/Apps/Quizzz/Quizzz/AppDelegate.swift
//  Created by Ba Phuc Nguyen on 2019-08-10.
//  Copyright © 2019 Phuc Nguyen. All rights reserved.
//

import UIKit
import UICircularProgressRing
import Pastel

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
        let pastelView = PastelView(frame: view.bounds)
        questionText.adjustsFontSizeToFitWidth = true
        questionText.minimumScaleFactor = 0.5
        // Custom Direction
        pastelView.startPastelPoint = .bottomLeft
        pastelView.endPastelPoint = .topRight

        // Custom Duration
        pastelView.animationDuration = 5.0

        // Custom Color
        pastelView.setColors([UIColor(red: 252/255, green: 227/255, blue: 138/255, alpha: 1.0),
                              UIColor(red: 243/255, green: 129/255, blue: 129/255, alpha: 1.0),
                              UIColor(red: 123/255, green: 31/255, blue: 162/255, alpha: 1.0),
                              UIColor(red: 32/255, green: 76/255, blue: 255/255, alpha: 1.0),
                              UIColor(red: 32/255, green: 158/255, blue: 255/255, alpha: 1.0),
                              UIColor(red: 90/255, green: 120/255, blue: 127/255, alpha: 1.0),
                              UIColor(red: 58/255, green: 255/255, blue: 217/255, alpha: 1.0)])

        pastelView.startAnimation()
        view.insertSubview(pastelView, at: 0)

        self.viewContainer.layer.cornerRadius = 10
        self.viewContainer.backgroundColor = UIColor.white.withAlphaComponent(0.60)
        self.viewContainer.isOpaque = false
        shuffleQuestions()
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

    func shuffleQuestions(){
        //this method to shuffle an array of questions
        questions.questionsArray.shuffle()
    }

}

