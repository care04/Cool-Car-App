//
//  VehicleSelectVC.swift
//  CoolCarApp-ios_course_run_though_two
//
//  Created by Care Farrar on 1/14/21.
//

import UIKit

class VehicleSelectVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: IBOutlets
    @IBOutlet weak var carTableView: UITableView!
    var vehicles: [Vehicle] = [Vehicle(name: "Yellow Flyer", image: "cool car 2-1", model: "Yellow 150", seats: 2, wheels: 4), Vehicle(name: "Red Flame", image: "cool cars 1", model: "T 36", seats: 4, wheels: 4), Vehicle(name: "Yellow Flyer", image: "cool car 2-1", model: "Yellow 150", seats: 2, wheels: 4), Vehicle(name: "Red Flame", image: "cool cars 1", model: "T 36", seats: 4, wheels: 4)]
    override func viewDidLoad() {
        super.viewDidLoad()
        carTableView.dataSource = self
        carTableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vehicles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell", for: indexPath) as? CarTVC {
            tableView.separatorColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            let v = vehicles[indexPath.row]
            cell.configureCell(vehicle: v)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCar = vehicles[indexPath.row]
        print(selectedCar.name!)
        let controller = storyboard?.instantiateViewController(identifier: "CarInfo") as? Car_details_controller
        controller?.viewingCar = selectedCar
        present(controller!, animated: true, completion: nil)
    }
    
    
    @IBAction func unwind(unwindSegue:UIStoryboardSegue) {
        
    }
    
}
