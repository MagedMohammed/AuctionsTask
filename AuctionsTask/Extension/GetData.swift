//
//  File.swift
//  AuctionsTask
//
//  Created by Magid on 10/17/18.
//  Copyright © 2018 Magid. All rights reserved.
//

import Foundation
import UIKit

extension ViewController
{
    
    func getData(AuctionsType:String)
    {
        NetWorking.GetData(AuctionsType: AuctionsType){ ( Auctions:[Auction]?) in
            
            if let Auctions = Auctions
            {
                self.Auctions = Auctions
                
            }
            DispatchQueue.main.async {
                
                    self.AuctionsTableView.reloadData()
                
                
            }
        }
      
        
    }
}
