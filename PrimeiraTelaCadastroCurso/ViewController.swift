//
//  ViewController.swift
//  PrimeiraTelaCadastroCurso
//
//  Created by Diego Cardoso on 17/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setar campos
        nameTextField.keyboardType = .default
        emailTextField.keyboardType = .emailAddress
        passwordTextField.keyboardType = .default
        passwordTextField.isSecureTextEntry = true
        
        
        //setar props durante a execucao
        nameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
    }
}

extension ViewController: UITextFieldDelegate{
    
    // primeiro metodo disparado
    func textFieldDidBeginEditing(_ textField: UITextField){
        print(#function)
        textField.layer.borderColor = UIColor.blue.cgColor
        //focusin
        textField.layer.borderWidth = 1
    }
   
    //teclado ao fechar
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        //focusOut
        textField.layer.borderWidth = 0

    }
    
    //teclado ao abrir
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()

        return true
    }
}

