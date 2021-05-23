//
//  ViewController.swift
//  BullseyeN
//
//  Created by Erzen Talla  on 22.05.21.
//

import UIKit
import Foundation


class ViewController: UIViewController {

    
    @IBOutlet weak var counterlabel: UILabel!
    @IBOutlet weak var counterSlider: UISlider!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var ExcactSwitch: UISwitch!
    @IBOutlet weak var PlayAgainButton: UIButton!
    var counter=0
    var randomNumber=0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomNumber=Int(arc4random_uniform(101))
        counterlabel.text="Move the slider to:\(randomNumber)"
        
    }

   
    @IBAction func checkValue(_ sender: Any) {
        if ExcactSwitch.isOn==false{
            
            if Int(counterSlider.value)<=randomNumber+3&&Int(counterSlider.value)>=randomNumber-3
            {
                resultLabel.text="you were right"
               resultLabel.backgroundColor=UIColor.green
                
                
            }
            else{
                resultLabel.text="ooops you missed"
                resultLabel.backgroundColor=UIColor.red
            }
        }
        else{
        if randomNumber==Int(counterSlider.value){
            
            resultLabel.text="You were right"
            resultLabel.backgroundColor=UIColor.green
        }
        else {
            resultLabel.text="oops! you missed try again"
            resultLabel.backgroundColor=UIColor.red
        }
        }
        resultLabel.isHidden=false
        PlayAgainButton.isHidden=false
    }
    
    @IBAction func PlayAgain(_ sender: Any) {
        counterSlider.setValue(50, animated:false)
        randomNumber=Int(arc4random_uniform(101))
        counterlabel.text="Move the slider to:\(randomNumber)"
        resultLabel.isHidden=true
        PlayAgainButton.isHidden=true
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        
        
    }
}



