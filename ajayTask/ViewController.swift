//
//  ViewController.swift
//  ajayTask
//
//  Created by Himansu Sekhar Panigrahi on 15/04/20.
//  Copyright © 2020 hpApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource{

    
    
    @IBOutlet weak var tableView: UITableView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.separatorColor = UIColor.black
        print("viewDidLoad")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       
        return cell
    }
    

    @IBAction func buttonAction(_ sender: Any) {
        let indexPath = IndexPath(row: 0, section: 0)
        tableView.reloadRows(at: [indexPath] , with: UITableView.RowAnimation.automatic)
    }
    
    
    
    override func viewDidLayoutSubviews() {
        
        print("viewDidLayoutSubviews")
        
        let indexPath = IndexPath(row: 0, section: 0)

        let cell = tableView.cellForRow(at: indexPath) as! TableViewCell
        
        if cell.viewHeightConstraint.constant == 75 {
            cell.viewHeightConstraint.constant = 10
        }
        else{
            cell.viewHeightConstraint.constant = 75
        }
        
    }
    
}

