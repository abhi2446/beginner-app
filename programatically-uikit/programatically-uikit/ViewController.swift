//
//  ViewController.swift
//  programatically-uikit
//
//  Created by abhi on 01/03/23.
//

import UIKit

class ViewController: UIViewController {
   var count = 0
    var count2 = 0
    var label: UILabel!
    var newlabel : UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let label = UILabel()
        label.frame = CGRect(x: 200, y: 200, width: 1000, height: 100)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        let  newlabel = UILabel()
        newlabel.frame = CGRect(x: 100, y: 150, width: 200, height: 200)
        newlabel.text = "-1"
        view.addSubview(newlabel)
        self.newlabel = newlabel
        // button
        let button = UIButton()
        button.frame = CGRect(x: 600, y: 350, width: 50, height: 60)
        button.setTitle("Increment",for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.incrementCount) , for: UIControl.Event.touchUpInside)
        let button2 = UIButton()
        button.frame = CGRect(x: 90, y: 350, width: 60, height: 60)
        button.setTitle("Decrement", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(button2)
        button.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
        
    }
  
    @objc func incrementCount(){
        count += 1
        label.text = "\(count)"
    }
    
    @objc func decrementCount(){
        count2 -= 1
        newlabel.text = "\(count2)"
        
    }

}

