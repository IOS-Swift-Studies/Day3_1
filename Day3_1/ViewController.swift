//
//  ViewController.swift
//  Day3_1
//
//  Created by Quyen Lu on 11/06/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToYelloScreen(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let yellowViewController = storyBoard.instantiateViewController(withIdentifier: "YellowVC") as! YelloViewController
        self.navigationController?.pushViewController(yellowViewController, animated: true)
    }
    
}

