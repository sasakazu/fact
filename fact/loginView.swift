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

        let currentUser = Auth.auth().currentUser?.uid
        print("current user id is \(String(describing: currentUser))")
        
    }
    
    @IBAction func login(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: emailTF.text!, password: passTF.text!) { [weak self] authResult, error in
          guard let strongSelf = self else { return }
          // ...
        }
    }
    
    
    @IBAction func logout(_ sender: Any) {
        
        do{
            try Auth.auth().signOut()
            
        }catch let error as NSError{
            print(error)
        }
        
        print("logout ok!!")
    }
    
   
}
