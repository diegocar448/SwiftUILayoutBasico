//
//  ViewController.swift
//  UISwitch
//
//  Created by Diego Cardoso on 19/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var stateSwitch: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        stateSwitch.isOn = true
        stateSwitch.onTintColor = .blue
    }


    @IBAction func tappedSwitchAction(_ sender: UISwitch) {
        print(sender.isOn)
        
        if sender.isOn {
            view.backgroundColor = .green
        }else{
            view.backgroundColor = .red
        }
    }
}

	
