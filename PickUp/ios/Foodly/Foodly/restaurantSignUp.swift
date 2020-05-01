//
//  restaurantSignUp.swift
//  Foodly
//
//  Created by Stanley Zeng on 2/17/19.
//  Copyright © 2019 Stanley Zeng. All rights reserved.
//

import UIKit

var restaurantNames = [String]()
var restaurantAddresses = [String]()
var restaurantPhoneNumbers = [String]()

class restaurantSignUp: UIViewController {

    @IBOutlet weak var rNameField: UITextField!
    @IBOutlet weak var rAddressField: UITextField!
    @IBOutlet weak var rPhoneField: UITextField!
    
    var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.backgroundImage = UIImageView(image: UIImage(named: "foodbg"))
        self.backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(self.backgroundImage, at: 0)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.backgroundImage.frame = self.view.bounds
    }

    
    
    @IBAction func nextPressed(_ sender: Any) {
        restaurantNames.append(self.rNameField.text!)
        restaurantAddresses.append(self.rAddressField.text!)
        
        restaurantPhoneNumbers.append(self.rPhoneField.text!)
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
