//
//  welComeViewController.swift
//  fineAge
//
//  Created by Haseena Gul on 19/06/2019.
//  Copyright © 2019 haseena gul. All rights reserved.
//

import UIKit

class welComeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    
    @IBOutlet weak var startButtonIB: UIButton!
        {
        didSet{
startButtonIB.backgroundColor = .clear
    startButtonIB.layer.cornerRadius = 10
startButtonIB.layer.borderWidth = 3
startButtonIB.layer.borderColor = UIColor.black.cgColor
        }
    }
    
    

    @IBAction func startButtonPressed(_ sender: Any) {
    }
    

}
