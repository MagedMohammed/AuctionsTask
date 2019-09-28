//
//  ShowCarVC.swift
//  AuctionsTask
//
//  Created by Maged on 10/25/18.
//  Copyright © 2018 Magid. All rights reserved.
//

import UIKit

class ShowCarVC: UIViewController {
    var CarDataSelected:Auction?
    var CarBid:[CarBid] = []
    @IBOutlet weak var InfoScrolView: UIScrollView!
    @IBOutlet weak var CarAgencyInfo: UISegmentedControl!
    @IBOutlet weak var CarImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = CarDataSelected?.title_en
        //print(CarDataSelected?.id)
        
        getData(bidId:(CarDataSelected?.id)! )
        
    }
    func getData(bidId:Int)
    {
        NetWorking.GetBid(bidid:bidId){ ( CarBid:[CarBid]?) in
            
            if let CarBid = CarBid
            {
                self.CarBid = CarBid
            }
            //print(CarBid?.count)
            self.SetData()
        }
    }

    func SetData()
    {
        //getData(bidId:(self.CarDataSelected?.id)!)
        
    if let Carinfo = Bundle.main.loadNibNamed("carInfo", owner: self, options: nil)?.first as? carInfo
    {
    
    for Car in self.CarBid{
    
        DispatchQueue.main.async {
            DownloadImage.getImage(ImageUrl: Car.image!, completion:{ image in
                
                self.CarImage.image = image
            })}
    DispatchQueue.main.async {
    Carinfo.CarBrandLa.text = Car.category
    Carinfo.CarModelLa.text = Car.sub_category
    Carinfo.CarColorLa.text = Car.car_color
    Carinfo.CarFuelLa.text  = Car.fuel
    Carinfo.ChassisNumberLa.text = Car.chassis_no
    //Carinfo.CheckCyclicLa.text = String(describing: Car.is_periodic_inspection)!
        Carinfo.EngineSizeLa.text  = String(describing:Car.engine_size!)
    Carinfo.EngineTypeLa.text = Car.engine_type
    Carinfo.GearStickLa.text = Car.motion_vector
    Carinfo.ManufacturingYearLa.text = String(describing: Car.manufacturing_year!)
    //Carinfo.LicenseValidationLa.text = String(describing: Car.vaild_form)!
        Carinfo.NumberOFKilometersLa.text = String(describing: Car.mileage!)
    Carinfo.SpecifcationLa.text = Car.specification
   // Carinfo.StokLa.text = Car.Import
    Carinfo.ValidationYearsLa.text = String(describing: Car.form_years!)
        }
    }
    self.InfoScrolView.addSubview(Carinfo)
    
    
    
    }
    
    }
    
    
    
}
