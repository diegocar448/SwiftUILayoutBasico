
import UIKit

class Tela02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func tappedGoToScreen02Button(_ sender: UIButton) {
        //fadeOut no modal tela atual 02
        self.dismiss(animated: true)
    }
    


}
