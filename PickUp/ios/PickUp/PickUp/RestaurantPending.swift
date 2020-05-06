////
////  RestaurantPending.swift
////  Foodly
////
////  Created by Stanley Zeng on 2/16/19.
////  Copyright © 2019 Stanley Zeng. All rights reserved.
////
//
//import UIKit
//
//
//
//class RestaurantPending: UIViewController, UITableViewDelegate, UITableViewDataSource {
//
//
//
//    @IBOutlet weak var tableView: UITableView!
//
//    let myarray = ["item1", "item2", "item3"]
//
//    override func viewDidLoad() {
//        tableView.dataSource = self
//        tableView.delegate = self
//        super.viewDidLoad()
//
////        let tabbar = tabBarController as! Tab2
//
//
//        let refreshBtn = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(self.refresh(_:)))
//        self.navigationItem.rightBarButtonItem = refreshBtn
//        //self.navigationItem.rightBarButtonItem = UIBarButtonItem.Style
//        // Do any additional setup after loading the view.
//
//
//    }
//
//    @IBAction func refresheroo(_ sender: Any) {
//        self.tableView.reloadData()
//    }
//    @IBAction func refresh(_ sender: Any) {
//        self.tableView.reloadData()
//    }
//
//    func add(date: String, pound: String) {
//        dates.append(date)
//        pounds.append(pound)
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//
//
//    }
//
//
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return myarray.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "restCell", for: indexPath)
//        cell.textLabel?.text = myarray[indexPath.item]
//        return cell
//
////        let cell = tableView.dequeueReusableCell(withIdentifier: "restCell", for: indexPath)
////        cell.textLabel?.text = dates[0] + " , pounds: " + pounds[0]
////        //cell.tableCellLabel.text = dates[indexPath.row]
////        //cell.tableCellLabel2.text = pounds[indexPath.row]
////
////        return cell
//    }
//
    
//
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete{
//            dates.remove(at: indexPath.row)
//            pounds.remove(at: indexPath.row)
//
//            tableView.deleteRows(at: [indexPath], with: .bottom)
//        }
//    }
//
//}
