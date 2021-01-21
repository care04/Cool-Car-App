//
//  VehicleMainPage.swift
//  CoolCarApp-ios_course_run_though_two
//
//  Created by Care Farrar on 1/14/21.
//

import UIKit

class VehicleMainPageVC: UIViewController {
    //MARK: IBoutlets
    
    var vehicles: [Vehicle] = [Vehicle(name: "Yellow Flyer", image: "cool car 2-1", model: "Yellow 150", seats: 2, wheels: 4), Vehicle(name: "Red Flame", image: "cool cars 1", model: "T 36", seats: 4, wheels: 4)]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
