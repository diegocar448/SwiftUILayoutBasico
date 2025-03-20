//
//  ViewController.swift
//  UIImageView
//
//  Created by Diego Cardoso on 20/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*logoImageView.image = UIImage(named: "imagemTeste")*/
        logoImageView.image = UIImage(systemName: "brain.head.profile")
        logoImageView.tintColor = .red
        logoImageView.contentMode = .scaleAspectFit
    }


}

