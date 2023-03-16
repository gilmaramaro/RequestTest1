//
//  ModalViewController.swift
//  RequestTest1
//
//  Created by Gilmar Amaro on 16/03/23.
//

import UIKit

class ModalViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupModal()
    }
    
    func setupModal() {
        myImage.image = UIImage(named: "Pizzaria")
        myLabel.text = "Ver Cardapio"
    }
    
    @IBAction func myButton(_ sender: Any) {
        if let modal = storyboard?.instantiateViewController(withIdentifier: "Navi") {
            self.present(modal, animated: true)
        }
    }
}
