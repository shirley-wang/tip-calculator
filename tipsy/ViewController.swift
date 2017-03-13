//
//  ViewController.swift
//  tipsy
//
//  Created by xuanli wang on 3/12/17.
//  Copyright © 2017 xuanli wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    let defaults = UserDefaults.standard
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(defaults.integer(forKey: "firstTip"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let first = defaults.integer(forKey: "firstTip")
        let second = defaults.integer(forKey: "secondTip")
        let third = defaults.integer(forKey: "thirdTip")
        tipControl.setTitle(String(first) + "%", forSegmentAt: 0)
        tipControl.setTitle(String(second) + "%", forSegmentAt: 1)
        tipControl.setTitle(String(third) + "%", forSegmentAt: 2)
        print("view will appear")
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        let first = Double(defaults.integer(forKey: "firstTip"))
        let second = Double(defaults.integer(forKey: "secondTip"))
        let third = Double(defaults.integer(forKey: "thirdTip"))
        let tipPercentage = [first/100, second/100, third/100]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
}

