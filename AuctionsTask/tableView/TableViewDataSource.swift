//
//  TableViewDataSource.swift
//  AuctionsTask
//
//  Created by Magid on 10/18/18.
//  Copyright © 2018 Magid. All rights reserved.
//

import Foundation
import UIKit
extension ViewController: UITableViewDataSource
{
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  Auctions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:AuctionsListCell = AuctionsTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AuctionsListCell
        cell.CarNameLa.text = Auctions[indexPath.row].title_en ?? Auctions[indexPath.row].title_ar
        cell.OwnerNameLa.text = Auctions[indexPath.row].first_name
        cell.MinLa.text = String(describing: Auctions[indexPath.row].minimum_bid!)
        cell.TotalLa.text = String(describing:Auctions[indexPath.row].total_bids!)
        cell.CurrentPriceLa.text = String(describing:Auctions[indexPath.row].car_price!)
        //print(Auctions[indexPath.row].current_price)
        let bid_days = Auctions[indexPath.row].bid_days
        let start_days = Auctions[indexPath.row].start_days
        cell.RunTimer(isWork: Auctions[indexPath.row].isWork! ,bid_days: bid_days!, start_day: start_days! )
        let images:String = Auctions[indexPath.row].image!
        //print(images)
        DispatchQueue.global().async {
            DownloadImage.getImage(ImageUrl: images, completion:{ image in
                
                cell.CarImage.image = image
            })

        }
       cell.selectionStyle = .none
        
        return cell
        
    }

}
