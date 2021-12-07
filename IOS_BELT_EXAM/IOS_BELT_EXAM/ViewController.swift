//
//  ViewController.swift
//  IOS_BELT_EXAM
//
//  Created by admin on 07/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
/////////////////////////////////////////////////////////////////////////////////  i have a problem with segue i try to do it but itsnot work/////////////////////////////////////////////////////////////////////////////////////////////
    
    struct QA
    {
             
        let QString: String!
         
        let answer : [String]!
        let CorrectAnswer :Int!
        
    }
    
    
   var currentQustion: QA?
    var currentIndexOfQ: Int = 0
    var score: Int = 0
   var Answerlabelsend :String!
    var Resultlabelsend :String!
    
   var qustionsAnswers :[QA] = [
   QA (QString: "Who was one of the creators of the Swift language?",answer: ["Steve jops","Chirs Lattner","Steve Wonziak ","Ronald Wayne"],CorrectAnswer: 1),QA (QString: "Appel was created in what year?",answer: ["1976","1989","1990","2002"],CorrectAnswer: 0),QA (QString: "The first ipone was released on what day?",answer: ["June 2007","October 2010","May 2011 ","June 2011"],CorrectAnswer: 0),QA (QString: "The current ipone has 6GB RAM, The first ipon had how much Ram ?",answer: ["1 GB","3 GB","128 MB ","It had no RAM"],CorrectAnswer: 2),  QA (QString: "When was objective-C created?",answer: ["1961","1976","1980","1984"],CorrectAnswer: 3)
   
]
    
  
    
    
 
    
    @IBOutlet weak var labelQ: UILabel!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    
    
    
    
    @IBAction func btn1(_ sender: Any) {
        
        answers(correctAnswer:0)
        
    }
    
  
    
    @IBAction func btn2(_ sender: Any) {
        answers(correctAnswer:1)
       
        
        
        
        }
    
    @IBAction func btn3(_ sender: Any) {
        
        answers(correctAnswer:2)
       

    }
        
    @IBAction func btn4(_ sender: Any) {
        answers(correctAnswer:3)
       

    }
    

    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        currentQustion = qustionsAnswers[0]
        qustions()
       

        
     
       
        
        
        // Do any additional setup after loading the view.
    }

    
    func qustions(){
           labelQ?.text = (currentQustion!.QString)
        answer1?.setTitle((currentQustion!.answer[0]), for: UIControl.State.normal)
        answer2?.setTitle((currentQustion!.answer[1]), for: UIControl.State.normal)
        answer3?.setTitle((currentQustion!.answer[2]), for: UIControl.State.normal)
        answer4?.setTitle((currentQustion!.answer[3]), for: UIControl.State.normal)
       }
    
    
    func answers (correctAnswer: Int){
    
    
        if(correctAnswer == currentQustion!.CorrectAnswer)
        {
            score += 1
            Answerlabelsend = (currentQustion!.answer[correctAnswer])
            Resultlabelsend = "your answer is true"
        
            performSegue(withIdentifier: "secondID", sender: nil)
            
        }
        else
        {
            
            Resultlabelsend = "False"
           
            performSegue(withIdentifier: "secondID", sender: nil)

        }
        nextQustion()
    
      
        
        
    }
    
    
    func nextQustion()
    {
        
        if (currentIndexOfQ + 1 < qustionsAnswers.count)
        {
            currentIndexOfQ += 1
            currentQustion = qustionsAnswers[currentIndexOfQ]
            
            
            qustions()
        }}
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if(segue.identifier == "secondID") {
               
               let nextqustion = segue.destination as!SecondViewConrollerViewController
               nextqustion.total = qustionsAnswers.count
               nextqustion.Scoretotal = score
               nextqustion.anser = Answerlabelsend
               nextqustion.result = Resultlabelsend
               nextqustion.nextq = currentIndexOfQ
           }}
    

}
