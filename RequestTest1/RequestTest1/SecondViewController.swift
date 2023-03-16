//
//  SecondViewController.swift
//  RequestTest1
//
//  Created by Gilmar Amaro on 15/03/23.
//

import UIKit
import Alamofire

class SecondViewController: UIViewController {

    
    @IBOutlet weak var pizzaImage: UIImageView!
    @IBOutlet weak var pricePizzaP: UILabel!
    @IBOutlet weak var pricePizzaM: UILabel!
    @IBOutlet weak var pricePizzaG: UILabel!
    
    var connectionScreen2: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPizza()
    }
    
    func setupPizza() {
        let urlImage = URL(string: connectionScreen2?.imageURL ?? "")
        pizzaImage.sd_setImage(with: urlImage)
        pricePizzaP.text = "Valor Pizza Pequena: \(connectionScreen2?.priceP ?? 0.0)"
        pricePizzaM.text = "Valor Pizza Media: \(connectionScreen2?.priceM ?? 0.0)"
        pricePizzaG.text = "Valor Pizza Grande: \(connectionScreen2?.priceG ?? 0.0)"
    }
}
