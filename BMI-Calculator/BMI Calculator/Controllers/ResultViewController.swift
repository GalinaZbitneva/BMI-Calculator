//
//  ResultViewController.swift



import UIKit

class ResultViewController: UIViewController {
    
    var bmiResult:String?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiResult
        adviceLabel.text = bmiAdvice
        self.view.backgroundColor = bmiColor

    }
    
    @IBAction func recalculateAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

   
}
