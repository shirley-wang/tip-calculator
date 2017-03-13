//
//  SettingsViewController.swift
//  tipsy
//
//  Created by xuanli wang on 3/12/17.
//  Copyright © 2017 xuanli wang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    let defaults = UserDefaults.standard
    @IBOutlet weak var firstTip: UITextField!

    @IBOutlet weak var secondTip: UITextField!
    
    @IBOutlet weak var thirdTip: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        firstTip.placeholder = String(defaults.integer(forKey: "firstTip"))
        secondTip.placeholder = String(defaults.integer(forKey: "secondTip"))
        thirdTip.placeholder = String(defaults.integer(forKey: "thirdTip"))
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

    
    @IBAction func setFirstDefault(_ sender: Any) {
        let number = Int(firstTip.text!) ?? 0
        defaults.set(number, forKey: "firstTip")
        defaults.synchronize()
    }
    
    @IBAction func setSecondDefault(_ sender: Any) {
        let number = Int(secondTip.text!) ?? 0
        defaults.set(number, forKey: "secondTip")
        defaults.synchronize()
    }
  
    @IBAction func setThirdDefault(_ sender: Any) {
        let number = Int(thirdTip.text!) ?? 0
        defaults.set(number, forKey: "thirdTip")
        defaults.synchronize()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
