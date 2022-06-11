//
//  YelloViewController.swift
//  Day3_1
//
//  Created by Quyen Lu on 11/06/2022.
//

import UIKit

class YelloViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func goBackToPreviousScreen(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goToBlueScreen(_ sender: UIButton) {
        if let numberText:String = numberTextField.text {
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let blueViewController:BlueViewController = storyBoard.instantiateViewController(withIdentifier: "BlueVC") as! BlueViewController
            blueViewController.number = Double(numberText) ?? 0
            blueViewController.delegate = self
            self.navigationController?.pushViewController(blueViewController, animated: true)
        }
            
            
        
    }
}

extension YelloViewController: YellowControllerDelegate {
    func updateResult(value:Double?) {
        print("=================> UpdateResult")
        if let value = value {
            resultLabel.text = "Result: \(value)"
        }
        
    }
}
