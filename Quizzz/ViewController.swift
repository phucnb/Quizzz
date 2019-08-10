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

    @IBOutlet weak var viewContainer: UIView!

    @IBOutlet weak var progressRing: UICircularProgressRing!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.viewContainer.layer.cornerRadius = 10
        self.progressRing.maxValue = 20

    }


    @IBAction func selectedAnswer(_ sender: UIButton) {
        print(sender.tag)
        self.progressRing.startProgress(to: 20, duration: 3)
       

    }

}

