//
//  ViewController.swift
//  D2B Market
//
//  Created by azzaz on 3/26/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    
    
    
    let fruits = ["Banana" , "Orange" ,"Apple" ] // Define frui array
    
    
    let fastFood = ["Kec" , "Koshery" ,"Kabab"]  // Define  fastFood array
    
    
    let sectionType = ["Fast Food" ,"Fruit"]    // Define header of sectors
    
    //Number of section method
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionType.count
    }
    
    
    //number of rows in section
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return fastFood.count
        }
        else
        {
            return fruits.count
        }
    }
    
    // cell for rowAt
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        if indexPath.section == 0
        {
            cell.textLabel?.text = fastFood[indexPath.row]
            return cell
        }
        else
        {
            cell.textLabel?.text = fruits[indexPath.row]
            return cell
        }
    }
    
    
    
    
    ////Make titleHeader for each section
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0
        {
            return sectionType[0]
        }
        else
        {
            return sectionType[1]
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let _ = tableView.cellForRow(at: indexPath)
        
        if indexPath.section == 0
        {
            print(fastFood[indexPath.row])
        }
        else
        {
            print(fruits[indexPath.row])
        }
        
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

