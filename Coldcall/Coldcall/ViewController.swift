//
//  ViewController.swift
//  Coldcall
//
//  Created by admin on 05/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn(_ sender: Any) {
    
    let Rname:[String]=["RINAI","Joli","Sarah","Nora","joo","Qahtan"]
        NameLabel.text=Rname.randomElement()


    }
    
}
