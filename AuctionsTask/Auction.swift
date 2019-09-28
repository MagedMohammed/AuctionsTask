//
//  File.swift
//  AuctionsTask
//
//  Created by Magid on 10/16/18.
//  Copyright © 2018 Magid. All rights reserved.
//

import Foundation

struct Auction
{
    var id:Int?
    var title_ar:String?
    var title_en:String?
    var image:String?
    var manufacturing_year:Int?
    var minimum_bid:Int?
    var bid_days:Int?
    var start_days:String?
    var total_bids:Int?
    var member_id:Int?
    var first_name:String?
    var last_name:String?
    var token:String?
    var car_price:String?
    var current_price:Int?
    var isWork:Int?
    var premium_ad:String?
    
    
    
  
    init(id:Int,title_ar:String,title_en:String,image:String,manufacturing_year:Int,minimum_bid:Int,bid_days:Int,start_days:String,total_bids:Int,member_id:Int,first_name:String,last_name:String,token:String,car_price:String,current_price:Int,isWork:Int,premium_ad:String)
    {
        self.id                 = id
        self.title_ar           = title_ar
        self.title_en           = title_en
        self.image              = image
        self.manufacturing_year = manufacturing_year
        self.minimum_bid        = minimum_bid
        self.bid_days           = bid_days
        self.start_days         = start_days
        self.total_bids         = total_bids
        self.member_id          = member_id
        self.first_name         = first_name
        self.last_name          = last_name
        self.token              = token
        self.car_price          = car_price
        self.current_price      = current_price
        self.isWork             = isWork
        self.premium_ad         = premium_ad
    }
    
    init(){}

}
