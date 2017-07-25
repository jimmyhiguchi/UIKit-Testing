//
//  ViewController.swift
//  Testing UIKit
//
//  Created by Jimmy Higuchi on 7/21/17.
//  Copyright © 2017 Jimmy Higuchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var startDate: UIDatePicker!
    
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var newDate: UITextField!
    
    
    @IBAction func updateStepper(_ sender: UIStepper) {
        stepperLabel.text = String((Int(sender.value)))
    }
    
    @IBAction func CalculateNewDate(_ sender: Any) {
        // stuck trying to add days to the date picker
        let date1 = startDate
        date1.date = startDate.date.addingTimeInterval(7 * 60 * 60 * 24)
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        
        newDate.text = dateFormatter.string(for: startDate)
    
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

