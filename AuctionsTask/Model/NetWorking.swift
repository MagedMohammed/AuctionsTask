//
//  File.swift
//  AuctionsTask
//
//  Created by Magid on 10/16/18.
//  Copyright © 2018 Magid. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class NetWorking
{
    static func GetData(AuctionsType:String ,completionHandler: @escaping(_ Auctions:[Auction]?) -> Void)
    {
        var AuctionClass = [Auction]()
        let url = URL(string: "https://bidz.sa/api/\(AuctionsType)")
        let headerPar =
            [
                "token" : "i7Bq4e9yW5zuxzb5rnR9cej9hEVWpxo7unwRNsey"
        ]
        
        Alamofire.request(url!, method: .get, encoding: URLEncoding.default, headers: headerPar)
            .responseJSON { response in
                
                
                switch response.result
                {
                case .success:
                
                let data =  response.result.value
                let json = JSON(data!)
                //print (json)
                let dataa = json["data"]["auctions"]
                guard let dataArr = dataa.array else{return}
                //print(dataArr)
                for data in dataArr
                {
                        
                   
                    var AuctionData = Auction()
               
                    AuctionData.id                  = data["id"].int ?? 0
                    AuctionData.title_ar            = data["title_ar"].string ?? ""
                    AuctionData.title_en            = data["title_en"].string ?? ""
                    AuctionData.image               = data["image"].string ?? ""
                    AuctionData.manufacturing_year  = data["manufacturing_year"].int ?? 0
                    AuctionData.minimum_bid         = data["minimum_bid"].int ?? 0
                    AuctionData.bid_days            = data["bid_days"].int ?? 0
                    AuctionData.start_days          = data["start_at"].string ?? ""
                    AuctionData.total_bids          = data["total_bids"].int ?? 0
                    AuctionData.member_id           = data["member_id"]["id"].int ?? 0
                    AuctionData.first_name          = data["member_id"]["first_name"].string ?? ""
                    AuctionData.last_name           = data["member_id"]["last_name"].string ?? ""
                    AuctionData.token               = data["member_id"]["token"].string ?? ""
                    AuctionData.car_price           = data["car_price"].string ?? ""
                    AuctionData.current_price       = data["current_price"].int ?? 0
                    AuctionData.isWork              = data["isWork"].int ?? 0
                    AuctionData.premium_ad          = data["premium_ad"].string ?? ""
                
                    AuctionClass.append(AuctionData)
                  
                }
                //print(AuctionClass)
                completionHandler(AuctionClass)
                case .failure(let error):
                    print(error)
        }
        }
    }


    static func GetBid(bidid:Int ,completionHandler: @escaping(_ CarBid:[CarBid]?) -> Void)
    {
        var CarBidClass = [CarBid]()
        let url = URL(string: "https://bidz.sa/api/bidDetail?lang=en&bid_id=\(String(bidid))")
        let headerPar =
            [
                "token" : "i7Bq4e9yW5zuxzb5rnR9cej9hEVWpxo7unwRNsey"
        ]
        
        Alamofire.request(url!, method: .get, encoding: URLEncoding.default, headers: headerPar)
            .responseJSON { response in
                
                
                switch response.result
                {
                case .success:
                    
                    let json =  response.result.value
                    let parsJson = JSON(json!)
                    let data = parsJson["data"]["aut_detail"]
                        
                        var CarBidData = CarBid()
                        
                        CarBidData.id                  = data["id"].int ?? 0
                        CarBidData.title_ar            = data["title_ar"].string ?? ""
                        CarBidData.title_en            = data["title_en"].string ?? ""
                        CarBidData.image               = data["auction_images"][0]["image"].string ?? ""
                        CarBidData.manufacturing_year  = data["manufacturing_year"].int ?? 0
                        CarBidData.engine_type         = data["engine_type"]["en_lang"]["title"].string ?? ""
                        CarBidData.engine_size         = data["engine_size"].int ?? 0
                        CarBidData.vaild_form          = data ["vaild_form"].int ?? 0
                        CarBidData.form_years          = data["form_years"].int ?? 0
                        CarBidData.is_periodic_inspection   = data["is_periodic_inspection"].int ?? 0
                        CarBidData.mileage             = data["mileage"].int ?? 0
                        CarBidData.chassis_no          = data["chassis_no"].string ?? ""
                        CarBidData.category            = data["category"]["en_lang"]["title"].string ?? ""
                        CarBidData.sub_category        = data["sub_category"]["en_lang"]["title"].string ?? ""
                        CarBidData.car_color           = data["car_color"]["en_lang"]["title"].string ?? ""
                        CarBidData.fuel                = data["fuel"]["en_lang"]["title"].string ?? ""
                        CarBidData.motion_vector       = data["motion_vector"]["en_lang"]["title"].string ?? ""
                        CarBidData.specification       = data["specification"]["en_lang"]["title"].string ?? ""
                        CarBidData.Import              = data["Import"]["en_lang"]["title"].string ?? ""
                        CarBidData.other_0             = data["other_specifications"][0]["en_lang"]["title"].string ?? ""
                        CarBidData.other_1             = data["other_specifications"][1]["en_lang"]["title"].string ?? ""
                        CarBidData.other_2             = data["other_specifications"][2]["en_lang"]["title"].string ?? ""
                        CarBidData.minimum_bid         = data["minimum_bid"].int ?? 0
                        CarBidData.bid_days            = data["bid_days"].int ?? 0
                        CarBidData.start_days          = data["start_at"].string ?? ""
                        CarBidData.total_bids          = data["total_bids"].int ?? 0
                        CarBidData.member_id           = data["member_id"]["id"].int ?? 0
                        CarBidData.first_name          = data["member_id"]["first_name"].string ?? ""
                        CarBidData.last_name           = data["member_id"]["last_name"].string ?? ""
                        CarBidData.token               = data["member_id"]["token"].string ?? ""
                        CarBidData.car_price           = data["car_price"].string ?? ""
                        CarBidData.current_price       = data["current_price"].int ?? 0
                        CarBidData.phone_number        = data["member_id"]["phone_number"].string ?? ""
                        CarBidData.address             = data["member_id"]["address"].string ?? ""
                        CarBidData.lat                 = data["member_id"]["lat"].string ?? ""
                        CarBidData.lng                 = data["member_id"]["lng"].string ?? ""
                        CarBidData.city                = data["city"]["en_lang"]["title"].string ?? ""
                        
                        CarBidClass.append(CarBidData)
                        
                    print(CarBidClass)
                    completionHandler(CarBidClass)
                case .failure(let error):
                    print(error)
                    print ("Can not Conect to Server ")
                }
        }
    }


}
