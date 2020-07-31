//
//  NewFriendViewController.swift
//  HobbyTracker
//
//  Created by Kalvin Zhao on 7/30/20.
//  Copyright © 2020 KalvinZhao. All rights reserved.
//

import UIKit

class NewFriendViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var homeTownTextField: UITextField!
    @IBOutlet weak var hobby1TextField: UITextField!
    @IBOutlet weak var hobby2TextField: UITextField!
    @IBOutlet weak var hobby3TextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func cancel(_ sender: Any) {
    }
    @IBAction func save(_ sender: Any) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
