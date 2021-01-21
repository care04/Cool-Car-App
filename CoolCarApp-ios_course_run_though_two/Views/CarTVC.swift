//
//  CarTVC.swift
//  CoolCarApp-ios_course_run_though_two
//
//  Created by Care Farrar on 1/14/21.
//

import UIKit

class CarTVC: UITableViewCell {

    
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var Model: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(vehicle: Vehicle) {
        carImage.image = UIImage(named: vehicle.image)
        name.text = vehicle.name
        Model.text = vehicle.model
    }
    
}
