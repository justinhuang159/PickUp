//
//  FriendsViewController.swift
//  PickUp
//
//  Created by Stanley Zeng on 5/4/20.
//  Copyright © 2020 Stanley Zeng. All rights reserved.
//

import UIKit

class FriendsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var NavigationItem: UINavigationItem!
    
    let myarray = ["Henry Chen", "Justin Huang", "William Ko"]
    
    override func viewDidLoad() {
        //table.dataSource = self
        //table.delegate = self
        super.viewDidLoad()
        let tabbar = tabBarController as! Tab2
        // Do any additional setup after loading the view.
        self.NavigationItem.title = "Friends Online"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendcell", for: indexPath) as! UITableViewCell
        cell.textLabel?.text = myarray[indexPath.item]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let segueIdentifier: String
        switch indexPath.item {
        case 0: //For "one"
             segueIdentifier = "toDetails"
        case 1: //For "two"
             segueIdentifier = "toJustin"
        default: //For "three"
             segueIdentifier = "toJustin"
        }
        self.performSegue(withIdentifier: segueIdentifier, sender: self)
    }
    
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete{
                dates.remove(at: indexPath.row)
                pounds.remove(at: indexPath.row)
    
                tableView.deleteRows(at: [indexPath], with: .bottom)
            }
        }

    /*
     MARK: - Navigation

     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         Get the new view controller using segue.destination.
         Pass the selected object to the new view controller.
    }
    */

}
