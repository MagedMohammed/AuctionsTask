//
//  AuctionsSections.swift
//  AuctionsTask
//
//  Created by Magid on 10/16/18.
//  Copyright © 2018 Magid. All rights reserved.
//

import Foundation
import UIKit

extension ViewController
{
    
    @IBAction func SelectSection(_ sender: Any) {
        
      let index = AuctionsSection.selectedSegmentIndex
        
        switch index {
        case 0:
            self.getData(AuctionsType: "getAuctionsOpen")
          print ("getAuctionsOpen")
        case 1:
            self.getData(AuctionsType: "getAuctionsClose")
            print ("getAuctionsClose")
        case 2:
            self.getData(AuctionsType: "getAllAuctions")
            print ("getAllAuctions")
        default:
            self.getData(AuctionsType: "getAuctionsOpen")
            print ("getAuctionsOpen")

        }
        
        
    }


}
