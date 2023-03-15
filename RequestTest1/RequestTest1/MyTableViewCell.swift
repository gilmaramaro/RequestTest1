//
//  MyTableViewCell.swift
//  RequestTest1
//
//  Created by Gilmar Amaro on 15/03/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var pizzaImage: UIImageView!
    @IBOutlet weak var pizzaName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCell(pizzaElement: PizzaElement?) {
        pizzaName.text = pizzaElement?.name
        let urlImage = URL(string: pizzaElement?.imageURL ?? "")
        pizzaImage.sd_setImage(with: urlImage)
    }
}
