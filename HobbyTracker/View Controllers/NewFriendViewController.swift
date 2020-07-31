//
//  NewFriendViewController.swift
//  HobbyTracker
//
//  Created by Kalvin Zhao on 7/30/20.
//  Copyright © 2020 KalvinZhao. All rights reserved.
//

import UIKit

protocol NewFriendDelegate {
    // At least one function to alert the delegate that something has happened, or requesting some information from the delegate
    
    // This friend passed into the function will be the frined that was just created
    func friendWasCreated(friend: Friend)
}

class NewFriendViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var homeTownTextField: UITextField!
    @IBOutlet weak var hobby1TextField: UITextField!
    @IBOutlet weak var hobby2TextField: UITextField!
    @IBOutlet weak var hobby3TextField: UITextField!
    
    var delegate: NewFriendDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func save(_ sender: Any) {
//        guard let name = nameTextField.text else { return }
//        guard let hometown = homeTownTextField.text else { return }
        
        // OR
        
        guard let name = nameTextField.text,
            let hometown = homeTownTextField.text else { return }
        
        var hobbies: [String] = []
        
        //Unwrapping the text field's text, and also making sure hte text is not an empty string
        if let hobby1 = hobby1TextField.text,
            hobby1 != "" {
            
            hobbies.append(hobby1)
//            if hobby1 != "" {
//
//            }
//
//            if !hobby1.isEmpty {
//
            }
        
        if let hobby2 = hobby1TextField.text,
            hobby2 != "" {
            
            hobbies.append(hobby2)
        }
        
        if let hobby3 = hobby1TextField.text,
            hobby3 != "" {
            
            hobbies.append(hobby3)
        }
        
        let friend = Friend(name: name, hometown: hometown, hobbies: hobbies)
        
        delegate?.friendWasCreated(friend: friend)  //delegate go call this function
        dismiss(animated: true, completion: nil)
    }
    
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

