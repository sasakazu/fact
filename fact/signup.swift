//
//  signup.swift
//  fact
//
//  Created by 笹倉一也 on 2021/01/16.
//

import UIKit
import Firebase

class signup: UIViewController {
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var passTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    @IBAction func signup(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: email.text!, password: passTF.text!) { authResult, error in
          
        }
        print("sign up success!!")
        
    }
    

}
