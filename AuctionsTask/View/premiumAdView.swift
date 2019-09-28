//
//  premiumAdView.swift
//  AuctionsTask
//
//  Created by Magid on 10/18/18.
//  Copyright © 2018 Magid. All rights reserved.
//

import UIKit

class premiumAdView: UIView {
    
    var premium_ad = [Auction]()
    var start_day:String?
    var bid_days:Int?
    var timer = Timer()
    @IBOutlet weak var CarNameLa: UILabel!
    @IBOutlet weak var CarImage: UIImageView!
    @IBOutlet weak var DayLa: UILabel!
    @IBOutlet weak var HourLa: UILabel!
    @IBOutlet weak var MinLa: UILabel!
    @IBOutlet weak var secLa: UILabel!
    
    func getData()
    {
        NetWorking.GetData(AuctionsType: "getAuctionsOpen")
        {
            ( Auctions:[Auction]?) in
            
            if let Auctions = Auctions
            {
                self.premium_ad = Auctions
                DispatchQueue.main.async {
                    
                    for premiumAd in self.premium_ad
                    {
                        
                        if premiumAd.premium_ad == "no"
                        {
                            self.CarNameLa.text =  premiumAd.title_en
                           // self.CarImage.image = UIImage(named: premiumAd.image)
                            self.bid_days = premiumAd.bid_days
                            self.start_day = premiumAd.start_days
                            
                            DispatchQueue.global().async {
                                DownloadImage.getImage(ImageUrl: premiumAd.image!, completion:{ image in
                                    
                                    self.CarImage.image = image
                                    
                                    self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { Timer in
                                        countdownTimer.SetTimer(startDays: self.start_day!, bid_Days: self.bid_days!) // <- var ExpDate From Api's
                                        {(day, hour, min, sec) in
                                            
                                            self.DayLa.text     = String(describing: day!)
                                            self.HourLa.text    = String(describing: hour!)
                                            self.MinLa.text     = String(describing: min!)
                                            self.secLa.text     = String(describing: sec!)
                                            
                                        }
                                        
                                    })
                                    self.timer.fire()

                                })
                                
                            }


                            break
                        }

                    }
                }
                

            }
        }
        

        
        

    }
    
}
