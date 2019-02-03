//
//  ViewController.swift
//  carStats
//
//  Created by Ievgeniia Pavliuchyk on 31/01/2019.
//  Copyright © 2019 Ievgeniia Pavliuchyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var label5: UILabel!
    
    @IBOutlet weak var label6: UILabel!
    
    var items = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.items = loadPlist()
    }

    func loadPlist() -> [[String:String]] {
        
        let path = Bundle.main.path(forResource: "carList", ofType: "plist")
        return NSArray.init(contentsOf: URL.init(fileURLWithPath: path!)) as! [[String : String]]
    
    }
    
    
    @IBAction func randomCar(_ sender: Any) {
        
        let dataSelect = items.randomElement()!
        
        imageView.image = UIImage(named: dataSelect["Image"]!)
        
    }
    
    
    

}

