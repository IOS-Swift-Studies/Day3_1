//
//  BlueViewController.swift
//  Day3_1
//
//  Created by Quyen Lu on 11/06/2022.
//

import UIKit

protocol YellowControllerDelegate {
    func updateResult(value:Double?)
}

class BlueViewController: UIViewController {

    var number:Double?
    var delegate: YelloViewController?
    @IBOutlet weak var valueLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let num = number {
            valueLabel.text = String(num)
        }
    }
    

    
    @IBAction func goBackToPreviousScreen(_ sender: UIButton) {
        self.delegate?.updateResult(value: number)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goToPurpilScreen(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let purpilViewController = storyBoard.instantiateViewController(withIdentifier: "PurpilVC") as! PurpilViewController
        self.navigationController?.pushViewController(purpilViewController, animated: true)
        
    }
}
