//
//  ViewController.swift
//  ElementosBasicosCurso
//
//  Created by Diego Cardoso on 17/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Ligação IBOutlet para referenciar as caracteristica de um elemento
    @IBOutlet weak var bemVindoLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    

    
    //ciclo de vida - metodo inicial
    override func viewDidLoad() {
        super.viewDidLoad()
        bemVindoLabel.text = "Teste UILabel"
    }
    
    
    //ligação event press button
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        print("press button!!")
        view.backgroundColor = .green
    }
    
    
    
}

