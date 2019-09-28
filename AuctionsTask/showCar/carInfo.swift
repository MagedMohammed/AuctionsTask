//
//  carInfo.swift
//  AuctionsTask
//
//  Created by Youxel on 10/25/18.
//  Copyright © 2018 Magid. All rights reserved.
//

import UIKit

class carInfo: UIView {
    var CarBid:[CarBid] = []
    @IBOutlet weak var brandSV: UIStackView!
    
    @IBOutlet weak var CarBrandLa: UILabel!
    @IBOutlet weak var CarModelLa: UILabel!
    @IBOutlet weak var CarColorLa: UILabel!
    @IBOutlet weak var EngineTypeLa: UILabel!
    @IBOutlet weak var CarFuelLa: UILabel!
    @IBOutlet weak var GearStickLa: UILabel!
    @IBOutlet weak var SpecifcationLa: UILabel!
    @IBOutlet weak var StokLa: UILabel!
    @IBOutlet weak var ManufacturingYearLa: UILabel!
    @IBOutlet weak var EngineSizeLa: UILabel!
    @IBOutlet weak var CheckCyclicLa: UILabel!
    @IBOutlet weak var LicenseValidationLa: UILabel!
    @IBOutlet weak var ValidationYearsLa: UILabel!
    @IBOutlet weak var NumberOFKilometersLa: UILabel!
    @IBOutlet weak var ChassisNumberLa: UILabel!
   /*
    func getData(bidId:Int)
    {
        NetWorking.GetBid(bidid:bidId){ ( CarBid:[CarBid]?) in
            
            if let CarBid = CarBid
            {
                self.CarBid = CarBid
            
            }
            print(self.CarBid)
                for Car in self.CarBid{
                    self.CarBrandLa.text = Car.category
                    self.CarModelLa.text = Car.sub_category
                    self.CarColorLa.text = Car.car_color
                    self.CarFuelLa.text  = Car.fuel
                    self.ChassisNumberLa.text = Car.chassis_no
                    self.CheckCyclicLa.text = String(describing: Car.is_periodic_inspection)
                    self.EngineSizeLa.text  = String(describing:Car.engine_size)
                    self.EngineTypeLa.text = Car.engine_type
                    self.GearStickLa.text = Car.motion_vector
                    self.ManufacturingYearLa.text = String(describing: Car.manufacturing_year)
                    self.LicenseValidationLa.text = String(describing: Car.vaild_form)
                    self.NumberOFKilometersLa.text = String(describing: Car.mileage)
                    self.SpecifcationLa.text = Car.specification
                    self.StokLa.text = Car.Import
                    self.ValidationYearsLa.text = String(describing: Car.form_years)
                
                
                
            }
        }
        
        
    }
*/
}
