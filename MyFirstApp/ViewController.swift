//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Pedro Antonio Vazquez Rodriguez on 30/08/17.
//
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var lblscore: UILabel!
    @IBOutlet weak var lblcambia: UILabel!
    

    
    
    var randomNumber = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generalColor()
    }
    
    var colors=[UIColor.red,UIColor.green,UIColor.blue,UIColor.purple]
    var colorsText=["Rojo","Verde","Azul","Morado"]
    var score = 0
    
  
    func generalColor(){
        randomNumber = Int(arc4random_uniform(UInt32(colorsText.count)))
        lblcambia.text = colorsText[randomNumber]
        
        let randomColor = Int(arc4random_uniform(UInt32(colorsText.count)))
        lblcambia.textColor = colors[randomColor]
    
    }
    
   
    
    
    @IBAction func btnpresionado(_ sender: UIButton) {
        
        if randomNumber == sender.tag{
            score += 1}
        else{
            score -= 3
        }
        lblscore.text = "Score: \(score)"
        generalColor()
        
    }
    
   @IBAction func btnstart(_ sender: UIButton) {
    
    
        lblscore.text = "Score: 0"
    
  
        
    }
     /*
     func scheduledTimer(timeInterval: TimeInterval, invocation: NSInvocation, repeats: True){
     }
     */
    
    

}

