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
        
        registerButton.isEnabled = false
        registerButton.setTitleColor(.white.withAlphaComponent(0.4), for: .disabled)
        registerButton.setTitleColor(.white, for: .normal)
        
        
    }
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        print("funfou btn")
    }
    
    func validateTextField(){
        if(
            nameTextField.text != "" &&
            emailTextField.text != "" &&
            passwordTextField.text != ""
        ){
            registerButton.isEnabled = true
        }else{
            registerButton.isEnabled = false
        }
    }
}


// start fields
extension ViewController: UITextFieldDelegate{
    
    // taclado on
    func textFieldDidBeginEditing(_ textField: UITextField){
        print(#function)
        textField.layer.borderColor = UIColor.blue.cgColor
        //focusin
        textField.layer.borderWidth = 1
    }
   
    //teclado off
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        //focusOut
        textField.layer.borderWidth = 0
        validateTextField()

    }
    
    //click
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()
        return true
    }
}

