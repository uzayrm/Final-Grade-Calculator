//
//  ViewController.swift
//  Final Grade Calculator
//
//  Created by Student on 10/20/20.
//  Copyright © 2020 uzayr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var currentGradeTextField: UITextField!
    @IBOutlet weak var finalWeightTextField: UITextField!
    @IBOutlet weak var gradeYouWantTextField: UITextField!
    @IBOutlet weak var requiredGradeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onCalculateButtonTapped(_ sender: UIButton) {
        if let currentGrade = Double(currentGradeTextField.text!) {
            if let finalGrade = Double(finalWeightTextField.text!) {
                if let gradeYouWant = Double(gradeYouWantTextField.text!){
                    if finalGrade < 100 && finalGrade > 0{
                        let finalPercentage = finalGrade / 100.0
                        let requiredGrade = max(0.0,(gradeYouWant - (currentGrade * (1.0 - finalPercentage)))) / finalPercentage
                        requiredGradeTextField.text = String(format: "% 1f", requiredGrade)
                        if requiredGrade > 100 {
                            view.backgroundColor = .red
                        }
                        else {
                            view.backgroundColor = .green
                        }
                        view.endEditing(true)
                    }
                }
                
            }
        }
}
}
