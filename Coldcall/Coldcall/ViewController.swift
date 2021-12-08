//
//  ViewController.swift
//  Coldcall
//
//  Created by admin on 05/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var Numincrease: UILabel!
    var increase=0
    let Rname:[String]=["RINAI","Joli","Sarah","Nora","joo","Qahtan"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btn(_ sender: Any) {
        
        
       
        
        NameLabel.text=Rname.randomElement()
        increase=Int.random(in: 1...5)
        Numincrease.text=String(increase)
       
            switch (increase)  {
            case 1:
                Numincrease.textColor = UIColor.red
                // statements

              case 2:
                Numincrease.textColor = UIColor.red
       
            case 3:
                Numincrease.textColor = UIColor.orange
            case 4:
                Numincrease.textColor = UIColor.orange
            case 5:
                Numincrease.textColor = UIColor.green
            
                    
              default:
                Numincrease.textColor = UIColor.black
                break
            }
       

            
          
            
        }}
  
        
  
 
    

    

