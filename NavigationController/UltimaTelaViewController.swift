import UIKit

class UltimaTelaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    @IBAction func tappedGoFirstScreen(_ sender: UIBarButtonItem) {
        //voltar para a primeira tela root
        self.navigationController?.popToRootViewController(animated: true)
        // navigation tela anterior
        /*self.navigationController?
            .popViewController(animated: true)*/
    }
    
    

}
