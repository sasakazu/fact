//
//  loginView.swift
//  fact
//
//  Created by 笹倉一也 on 2021/01/14.
//

import UIKit
import Firebase

class loginView: UIViewController {

    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func login(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: emailTF.text!, password: passTF.text!) { authResult, error in
          
        }
        
    }
    
   
}
