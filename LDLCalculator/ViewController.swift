//
//  ViewController.swift
//  LDLCalculator
//
//  Created by Hongsun Yoon, M.D. on 11/1/14.
//  Copyright (c) 2014 Hongsun Yoon, M.D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var totalCholesterolTextField: UITextField!
    @IBOutlet weak var hdlCholesterolTextField: UITextField!
    @IBOutlet weak var triglyceridesTextField: UITextField!
    @IBOutlet weak var resultLabelText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: UIButton) {
        let totalCholesterolDouble = Double((totalCholesterolTextField.text as NSString).doubleValue)
        let hdlCholesterolDouble = Double((hdlCholesterolTextField.text as NSString).doubleValue)
        let triglyceridesDouble = Double((triglyceridesTextField.text as NSString).doubleValue)
        let calculatedLDL = totalCholesterolDouble - hdlCholesterolDouble - (triglyceridesDouble / 5)
        resultLabelText.hidden = false
        resultLabelText.text = "\(calculatedLDL)" + " mg/dL"
    }

}

