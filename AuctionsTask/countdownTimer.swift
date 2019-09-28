//
//  Timer.swift
//  AuctionsTask
//
//  Created by Magid on 10/17/18.
//  Copyright © 2018 Magid. All rights reserved.
//

import UIKit

struct  countdownTimer
{
    
    static func SetTimer(startDays:String,bid_Days:Int, completionHandler: @escaping(_ daysLeft:Int?,_ hoursLeft:Int?,_ minutesLeft:Int?,_ secondleft:Int? ) -> Void)
    {
        
        // here we set the current date
        let date = NSDate()
        let calendar = Calendar.current
        
        let components = calendar.dateComponents([.hour, .minute, .month, .year, .day,.second], from: date as Date)
        let currentDate = calendar.date(from: components)
        //let userCalendar = Calendar.current
        
        // here we set the due date. When the timer is supposed to finish
        
        
        let Start_Date = startDays
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let isoDate = dateFormatter.date(from:Start_Date)!
        let EXcomponents = calendar.dateComponents([.hour, .minute, .month, .year, .day,.second], from: isoDate as Date)
        let StartDate = calendar.date(from: EXcomponents)
        
        
        // expDate 
        let competitionDate = Calendar.current.date(byAdding: .day, value: bid_Days, to: StartDate! )
        
        //here we change the seconds to hours,minutes and days
        let CompetitionDayDifference = calendar.dateComponents([.day, .hour, .minute,.second], from: currentDate!, to: competitionDate!)
        
        
        //finally, here we set the variable to our remaining time
        let daysLeft = CompetitionDayDifference.day
        let hoursLeft = CompetitionDayDifference.hour
        let minutesLeft = CompetitionDayDifference.minute
        let secondleft = CompetitionDayDifference.second
        
        //print("day:", daysLeft ?? "N/A", "hour:", hoursLeft ?? "N/A", "minute:", minutesLeft ?? "N/A", "Second:",secondleft ?? "N/A")
        completionHandler(daysLeft, hoursLeft, minutesLeft, secondleft)
    }
    
    
    
}
