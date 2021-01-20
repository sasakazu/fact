//
//  ViewController.swift
//  fact
//
//  Created by 笹倉一也 on 2021/01/14.
//

import UIKit
import Firebase

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
  
    var fuctArray:[fuctData] = []

    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.dataSource = self
        tableview.delegate = self
        
        
        let currentUser = Auth.auth().currentUser?.uid
        print("current user id is \(String(describing: currentUser))")
       
    
        
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 3
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        return cell
        
      }
}

