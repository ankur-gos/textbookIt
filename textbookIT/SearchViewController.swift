//
//  SearchViewController.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/12/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    let universities = ["UC Santa Cruz", "Cabrillo Community College"]
    let departments = ["MATH", "CMPE", "CMPS", "ECON", "CHEM", "TIM"]

    @IBAction func search(sender: AnyObject) {
        
    }
    
    @IBOutlet var schoolField: UITextField!
    @IBOutlet var depField: UITextField!
    @IBOutlet var classField: UITextField!
    @IBOutlet var textbookField: UITextField!
    var departmentPicker: UIPickerView!
    var uniPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.tintColor = UIColor(red: 186/255, green: 12/255, blue: 29/255, alpha: 1)
        customNavBar()
        
        schoolField.delegate = self
        depField.delegate = self
        
        uniPicker = customPicker()
        uniPicker.delegate = self
        uniPicker.dataSource = self
        self.schoolField.inputView = uniPicker
        self.schoolField.becomeFirstResponder()
        
        departmentPicker = customPicker()
        departmentPicker.delegate = self
        departmentPicker.dataSource = self
        self.depField.inputView = departmentPicker
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func customNavBar(){
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 186/255, green: 12/255, blue: 29/255, alpha: 1)
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        self.navigationController?.navigationBar.translucent = false
    }
    
    func customPicker()-> UIPickerView{
        let pickerView = UIPickerView()
        pickerView.backgroundColor = UIColor.whiteColor()
        return pickerView
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == uniPicker{
            self.schoolField.text = NSString(format: "%@", self.universities[row]) as String
        }
        else{
            self.depField.text = NSString(format: "%@", self.departments[row]) as String
        }
    }
    
    

}
