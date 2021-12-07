//
//  SecondViewConrollerViewController.swift
//  IOS_BELT_EXAM
//
//  Created by admin on 07/12/2021.
//

import UIKit

class SecondViewConrollerViewController: UIViewController {

   
    @IBOutlet weak var Answer: UILabel!
   
    @IBOutlet weak var Result: UILabel!
    
    @IBOutlet weak var Score: UILabel!
   
    var Scoretotal = 0
       var total = 0
       var anser:String!
       var result :String!
       var nextq = 0
       
    override func viewDidLoad() {
        super.viewDidLoad()

        func viewDidLoad() {
            //print(nextq)
            super.viewDidLoad()
           
            
            if result == "Correct !!!"
            {
                view.backgroundColor = UIColor.green
                Answer.text = "\(anser!)"
                Result.text = "\(result!)"
               
                Score.text = "\(Scoretotal)"
             
            }
            else
            {
                view.backgroundColor = UIColor.gray
                Answer.isHidden = true
                
                Result.text = "\(result!)"
               
                Score.text = "\(Scoretotal)"
            }
           
            check(isFinal: nextq)
            
           
            
               
            
    }
        func check(isFinal: Int)
        
        {
            if (isFinal+1 == 6)
                       
            {
                view.backgroundColor = UIColor.systemPink
                Result.text = ("Your final score : \(Scoretotal)")
                Score.isHidden = true
                Answer.isHidden = true
            }
            
        }
        
        }
        // Do any additional setup after loading the view.
    }
    

