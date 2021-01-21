//
//  Car details controller.swift
//  CoolCarApp-ios_course_run_though_two
//
//  Created by Care Farrar on 1/14/21.
//

import UIKit

class Car_details_controller: UIViewController {
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var carName: UILabel!
    @IBOutlet weak var carModel: UILabel!
    @IBOutlet weak var carWheels: UILabel!
    @IBOutlet weak var carSeats: UILabel!
    var viewingCar: Vehicle!
    override func viewDidLoad() {
        super.viewDidLoad()
        car()
    }
    func car() {
        carImage.image = UIImage(named: viewingCar.image)
        carName.text = viewingCar.name
        carModel.text = viewingCar.model
        carWheels.text = String(viewingCar.wheels!)
        carSeats.text = String(viewingCar.seats)
    }
    
}
