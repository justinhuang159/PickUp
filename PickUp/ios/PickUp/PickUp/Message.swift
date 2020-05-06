//
//  Message.swift
//  PickUp
//
//  Created by Stanley Zeng on 5/6/20.
//  Copyright © 2020 Stanley Zeng. All rights reserved.
//

import UIKit

class Message: UIViewController {

    @IBOutlet weak var messageText: UILabel!
    
    @IBOutlet weak var message: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendButton(_ sender: Any) {
        var m = message.text!
        messageText.text = m
        messageText.layer.backgroundColor = UIColor.blue.cgColor
        messageText.layer.cornerRadius = 7
        messageText.layer.masksToBounds = true
        messageText.sizeToFit()
        message.text = ""
        
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
