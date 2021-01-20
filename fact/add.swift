//
//  add.swift
//  fact
//
//  Created by 笹倉一也 on 2021/01/16.
//

import UIKit
import Firebase

class add: UIViewController {
    
    
    @IBOutlet weak var fact: UITextField!
    @IBOutlet weak var abstraction: UITextField!
    @IBOutlet weak var tenyou: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func add(_ sender: Any) {
        
        
        var ref: DocumentReference? = nil
    
        let db = Firestore.firestore()
        
        let currentUser = Auth.auth().currentUser?.uid
        
        ref = db.collection(currentUser!).addDocument(data: [
            "fuct": fact.text!,
            "chusyouka": abstraction.text!,
            "tenyou": tenyou.text!
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
     }
        
        
    
}





