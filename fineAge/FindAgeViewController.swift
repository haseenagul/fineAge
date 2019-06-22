//
//  FindAgeViewController.swift
//  fineAge
//
//  Created by Haseena Gul on 19/06/2019.
//  Copyright © 2019 haseena gul. All rights reserved.
//

import UIKit

class FindAgeViewController: UIViewController, UITextFieldDelegate
{
    
    
    @IBOutlet weak var enterYearTextField: UITextField!
    
    
    @IBOutlet weak var yourAgeLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        enterYearTextField.delegate = self
    }
    
    
    //MARK: - TextField Delegate methods
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        clickFindAgeButton()
        self.view.endEditing(true)
        return true
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.view.endEditing(true)
    }
    
    //MARK: touch began for UI.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    
    
    
    
    @IBAction func findAgeButtonPressed(_ sender: Any) {
        clickFindAgeButton()
        self.view.endEditing(true)
  }
    
    
    
    
    

    @IBOutlet weak var findAgeButtonPressedIB: UIButton!
        {
        didSet{
findAgeButtonPressedIB.backgroundColor = .clear
            findAgeButtonPressedIB.layer.cornerRadius = 10
            findAgeButtonPressedIB.layer.borderWidth = 3
        findAgeButtonPressedIB.layer.borderColor = UIColor.black.cgColor
        }
    }
    
    
    
    //MARK: user click find age button.
    func clickFindAgeButton (){
        let  yearOfBirth = Int(enterYearTextField.text!)
        
        //get current date and time from user phone
         let  currentDate = Date()
        let   currentCalender = Calendar.current
         let  year = currentCalender.component(.year, from: currentDate)
         let personAge = year - yearOfBirth!
        yourAgeLabel.text = "Your age is \(personAge)"
    
    }
    
    }


