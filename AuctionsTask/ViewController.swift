//
//  ViewController.swift
//  AuctionsTask
//
//  Created by Magid on 10/16/18.
//  Copyright © 2018 Magid. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    var Auctions:[Auction] = []

    @IBOutlet weak var AuctionsTableView: UITableView!
    @IBOutlet weak var AuctionsSection: UISegmentedControl!
    @IBOutlet weak var premiumAdView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AuctionsTableView.delegate = self
        AuctionsTableView.dataSource = self
        self.getData(AuctionsType: "getAuctionsOpen")
        
        if let premiumAd = Bundle.main.loadNibNamed("premiumAdView", owner: self, options: nil)?.first as? premiumAdView
        {
        premiumAd.getData()
        self.premiumAdView.addSubview(premiumAd)
            
        }
        
navigationController?.navigationBar.barTintColor = UIColor(red:102/255, green: 204/255, blue: 255/255, alpha: 1)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
            let CarSelect = Auctions[indexPath.row]
            performSegue(withIdentifier: "showBid", sender: CarSelect)
        }
        
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showBid" {
            if let destination = segue.destination as? ShowCarVC {
                if let car = sender as? Auction {
                    destination.CarDataSelected = car
                }
            }
        }
    }

    
}

