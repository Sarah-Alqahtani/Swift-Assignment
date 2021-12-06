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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btn(_ sender: Any) {
        
        
        let Rname:[String]=["RINAI","Joli","Sarah","Nora","joo","Qahtan"]
        
        NameLabel.text=Rname.randomElement()
        increase+=1
        Numincrease.text=String(increase)
       
        for _ in 1...7{
           
            if increase<7{
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
       

            }
            }
            
        }}
  
        
  
 
    

    

