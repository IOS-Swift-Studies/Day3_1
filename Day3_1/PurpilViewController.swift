//
//  PurpilViewController.swift
//  Day3_1
//
//  Created by Quyen Lu on 11/06/2022.
//

import UIKit

class PurpilViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

   
    @IBAction func goToYellowScreen(_ sender: UIButton) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: YelloViewController.self) {
                self.navigationController!.popToViewController(controller, animated: true)
                break
            }
        }
    }
    
}
