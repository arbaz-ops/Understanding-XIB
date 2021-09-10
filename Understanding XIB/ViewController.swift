//
//  ViewController.swift
//  Understanding XIB
//
//  Created by Mac on 12/01/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var subview: SubVIew!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        subview.myLabel.text = "Hello this is subview"
        
    }


}

