//
//  ViewController.swift
//  MySQLKit
//
//  Created by Tanmay Bakshi on 2016-07-10.
//  Copyright © 2016 Tanmay Bakshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let msk_php_url = "http://www.tanmaybakshi.com/getanything.php"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let databaseGet = "products_available"
        let MSK = MySQLKit(MSKHandler: msk_php_url, database: databaseGet)
        //MSK.runRequest_DATA(query: "INSERT INTO icecream (flavor, quantity) VALUES ('chocolate',5);")
        //MSK.runRequest_DATA(query: "INSERT INTO icecream (flavor, quantity) VALUES ('strawberry',3);")
        MSK.runRequest_DATA(query: "SELECT * FROM icecream").asString.printSelf()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

