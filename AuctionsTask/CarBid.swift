//
//  CarBid.swift
//  AuctionsTask
//
//  Created by Maged on 10/25/18.
//  Copyright © 2018 Magid. All rights reserved.
//

import Foundation
struct CarBid
{
    var id:Int?
    var title_ar:String?
    var title_en:String?
    var image:String?
    var manufacturing_year:Int?
    var engine_size:Int?
    var vaild_form:Int?
    var form_years:Int?
    var is_periodic_inspection:Int? //Check cycle
    var mileage:Int?
    var chassis_no:String?
    var category:String?
    var sub_category:String?
    var minimum_bid:Int?
    var bid_days:Int?
    var start_days:String?
    var total_bids:Int?
    var car_price:String?
    var current_price:Int?
    var car_color:String?
    var engine_type:String?
    var fuel:String?
    var motion_vector:String?
    var specification:String?
    var Import:String?
    var other_0:String?
    var other_1:String?
    var other_2:String?
    //
    var member_id:Int?
    var first_name:String?
    var last_name:String?
    var token:String?
    var phone_number:String?
    var email:String?
    var address:String?
    var lat:String?
    var lng:String?
    var city:String?

    
  
    
    init(
    id:Int,
    title_ar:String,
    title_en:String,
    image:String,
    manufacturing_year:Int,
    engine_type:String,
    engine_size:Int,
    vaild_form:Int,
    form_years:Int,
    is_periodic_inspection:Int, //Check cycle
    mileage:Int,
    chassis_no:String,
    category:String,
    sub_category:String,
    minimum_bid:Int,
    bid_days:Int,
    start_days:String,
    total_bids:Int,
    car_price:String,
    current_price:Int,
    car_color:String,
     fuel:String,
     motion_vector:String,
     specification:String,
     Import:String,
     other_0:String,
     other_1:String,
     other_2:String,
    //
     member_id:Int,
     first_name:String,
     last_name:String,
     token:String,
     phone_number:String,
     email:String?,
     address:String,
     lat:String,
     lng:String,
     city:String)
        
{
    self.id                 = id
    self.title_ar           = title_ar
    self.title_en           = title_en
    self.image              = image
    self.manufacturing_year = manufacturing_year
    self.engine_type        = engine_type
    self.engine_size        = engine_size
    self.vaild_form         = vaild_form
    self.form_years         = form_years
    self.is_periodic_inspection = is_periodic_inspection
    self.mileage            = mileage
    self.chassis_no         = chassis_no
    self.category           = category
    self.sub_category       = sub_category
    self.car_color          = car_color
    self.fuel               = fuel
    self.motion_vector      = motion_vector
    self.Import             = Import
    self.other_0            = other_0
    self.other_1            = other_1
    self.other_2            = other_2
    self.minimum_bid        = minimum_bid
    self.bid_days           = bid_days
    self.start_days         = start_days
    self.total_bids         = total_bids
    self.car_price          = car_price
    self.current_price      = current_price
    //
    self.member_id          = member_id
    self.first_name         = first_name
    self.last_name          = last_name
    self.token              = token
    self.phone_number       = phone_number
    self.email              = email
    self.address            = address
    self.lat                = lat
    self.lng                = lng
    self.city               = city
    }
    
    init(){}
    
}
