//
//  ViewController.swift
//  ProgressView
//
//  Created by Diego Cardoso on 19/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //perc
        progressView.progress = 0.7
        progressView.tintColor = .green
        progressView.trackTintColor = .lightGray.withAlphaComponent(0.6)
        
        let total = Progress(totalUnitCount: 100)
        total.completedUnitCount = 70
        progressView.setProgress(Float(total.fractionCompleted), animated: true)
        
    }


}

