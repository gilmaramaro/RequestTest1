//
//  ThirdViewController.swift
//  RequestTest1
//
//  Created by Gilmar Amaro on 16/03/23.
//

import UIKit
import SDWebImage

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var pizzaImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var connectionScreen3: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPizza()
    }
    
    func setupPizza() {
        let urlImage = URL(string: connectionScreen3?.imageURL ?? "")
        pizzaImage.sd_setImage(with: urlImage)
        myLabel.text = "Nota Dos Clientes: \(connectionScreen3?.rating ?? 0)"
    }
}
