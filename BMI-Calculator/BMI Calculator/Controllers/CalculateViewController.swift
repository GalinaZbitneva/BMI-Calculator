//
//  ViewController.swift
//  BMI Calculator
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculator = Calculator()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeHeightAction(_ sender: UISlider) {
        calculator.height = sender.value
        heightLabel.text = String(format: "%.2f", calculator.height) + "m"
        //f - количетсво знаков после запятой
    }
    
    
    @IBAction func changeWeightAction(_ sender: UISlider) {
        calculator.weight = sender.value
        weightLabel.text = String(format: "%.0f", calculator.weight) + "Kg"
    }
    
    
    @IBAction func calculateBMI(_ sender: UIButton) {
    
        calculator.calculateBMI(height: calculator.height, weight: calculator.weight)
        
        performSegue(withIdentifier: "goToResult", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultScene = segue.destination as! ResultViewController
            resultScene.bmiResult = calculator.getBmiValue()
            resultScene.bmiAdvice = calculator.getBMIAdvice()
            resultScene.bmiColor = calculator.getBMIColor()
            
        }
    }
}

