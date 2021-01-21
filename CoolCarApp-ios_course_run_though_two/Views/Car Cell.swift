//
//  Car Cell.swift
//  CoolCarApp-ios_course_run_though_two
//
//  Created by Care Farrar on 1/14/21.
//

import UIKit

class Car_Cell: UITableViewCell {
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var carName: UILabel!
    @IBOutlet weak var carDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    func configureCell(vehicle: Vehicle) {
        
    }

}
