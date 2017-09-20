//
//  ViewController.swift
//  JsonTester
//
//  Created by Dugar Badagarov on 21/09/2017.
//  Copyright © 2017 Dugar Badagarov. All rights reserved.
//

import UIKit

let baseURL = "file:///Users/dugar/Desktop/AndrtoIOS/FANATICS/"

class ViewController: UIViewController {

    @IBOutlet var apiGetter: UITextField!    
    
    @IBAction func getDATA(_ sender: Any) {
        if apiGetter.text! != "" {
            loadJSON(API: apiGetter.text!)
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

    private func loadJSON (API: String)
    {
        let url=URL(string: baseURL + API + ".json")
        var allData = Data()
        do {
            allData = try Data(contentsOf: (url)!)          
            
            var strJSON = String(data: allData, encoding: .utf8)
            
            print (strJSON as! String)
        }
        catch {
            print(error)            
        }
    }

}

