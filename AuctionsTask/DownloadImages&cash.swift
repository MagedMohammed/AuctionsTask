//
//  DownloadImages&cash.swift
//  AuctionsTask
//
//  Created by Magid on 10/18/18.
//  Copyright © 2018 Magid. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON

class DownloadImage
{
    static let cache = NSCache<NSString, UIImage>()
    
    class func downloadImage(ImageUrl:String, completion: @escaping(_ Image:UIImage?) -> () )
    {
        
        var DImage:UIImage?
        
        
        
        do{
            // load json server
            let ImageURL=URL(string: ImageUrl)!
            let data=try Data(contentsOf: ImageURL)
            
            // access to UI
            DispatchQueue.main.async {
                DImage = UIImage(data: data)
                completion(DImage)
            }
            if DImage != nil {
                cache.setObject(DImage!, forKey: ImageUrl as NSString)
            }
        }
        catch {
            print("cannot load from server")
        }
        
    }
    static func getImage(ImageUrl:String, completion: @escaping(_ Image:UIImage?)->()) {
        if let image = cache.object(forKey: ImageUrl as NSString) {
            completion(image)
        } else {
            downloadImage(ImageUrl: ImageUrl, completion: completion)
        }
    }}
