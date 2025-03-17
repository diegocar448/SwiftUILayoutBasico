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

    
    //ciclo de vida - metodo inicial
    override func viewDidLoad() {
        super.viewDidLoad()
        bemVindoLabel.text = "Teste UILabel"
    }


}

