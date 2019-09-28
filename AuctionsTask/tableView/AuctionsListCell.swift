//
//  AuctionsListCell.swift
//  AuctionsTask
//
//  Created by Magid on 10/17/18.
//  Copyright © 2018 Magid. All rights reserved.
//

import UIKit

class AuctionsListCell: UITableViewCell {
    var timer = Timer()
    var timer2 = Timer()
    @IBOutlet weak var CarNameLa: UILabel!
    @IBOutlet weak var OwnerNameLa: UILabel!
    @IBOutlet weak var CarImage: UIImageView!
    //
    @IBOutlet weak var SecLaTimer: UILabel!
    @IBOutlet weak var MinLaTimer: UILabel!
    @IBOutlet weak var HourLaTimer: UILabel!
    @IBOutlet weak var DayLaTimer: UILabel!
    //
    @IBOutlet weak var MinLa: UILabel!
    @IBOutlet weak var TotalLa: UILabel!
    @IBOutlet weak var CurrentPriceLa: UILabel!
    
    
    func RunTimer(isWork:Int , bid_days:Int,start_day:String){ // <- ,ExpDate:String? //"Argument from Api"//
        
        if isWork == 0 {
            timer2 = Timer.scheduledTimer(withTimeInterval: 1, repeats: false, block: { _ in
                
                self.DayLaTimer.text    = "00"
                self.HourLaTimer.text   = "00"
                self.MinLaTimer.text    = "00"
                self.SecLaTimer.text    = "00"
                self.timer.invalidate()
            })
            self.timer.invalidate()
        }
        
        self.timer.invalidate()

    
        if isWork == 1{
            
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { Timer in
                countdownTimer.SetTimer(startDays: start_day,bid_Days: bid_days) // <- var ExpDate From Api's
                {(daysLeft, hoursLeft, minutesLeft, secondleft) in
                    self.DayLaTimer.text    = String(describing: daysLeft!)
                    self.HourLaTimer.text   = String(describing: hoursLeft!)
                    self.MinLaTimer.text    = String(describing: minutesLeft!)
                    self.SecLaTimer.text    = String(describing: secondleft!)
                    
                }
                
            })
           self.timer.fire()
            
        }
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override var frame: CGRect {
        get {
            return super.frame
        }
        set (newFrame) {
            var frame =  newFrame
            frame.origin.y += 4
            frame.size.height -= 2 * 5
            super.frame = frame
        }
    }

}
