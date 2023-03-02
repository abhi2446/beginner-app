//
//  ViewController.swift
//  testing2
//
//  Created by abhi on 20/02/23.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - IBOUTLETS
    @IBOutlet weak var label: UILabel!
    let array = ["The way to get started is to quit talking and begin doing","If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success.","You will face many defeats in life, but never let yourself be defeated."]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  // MARK: IBACTIONS
    @IBAction func buttonPressed(_ sender: Any) {
        let randomNumer = Int.random(in: 0...(array.count-1))
        label.text = array[randomNumer]
    }
    
}

