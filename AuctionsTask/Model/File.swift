//
//  File.swift
//  AuctionsTask
//
//  Created by Maged on 10/25/18.
//  Copyright © 2018 Magid. All rights reserved.
//

import Foundation
/*
 
 {
 "status": 200,
 "data": {
 "is_follow": 0,
 "page_title": "الفا روميو أسبايدر 2013",
 // "aut_detail": {
 "id": 3,
 "title_ar": "الفا روميو أسبايدر 2013",
 "title_en": "Alfa Romeo أسبايدر 2013",
 "description": null,
 "city_id": 6,
 "category_id": 2,
 "sub_category_id": 837,
 "car_color_id": 2,
 "car_type_id": null,
 "engine_type_id": 1,
 "fuel_id": 2,
 "import_id": 3,
 "motion_vector_id": 1,
 "specification_id": 2,
 "manufacturing_year": 2013,
 "engine_size": 65456456,
 "vaild_form": 0,
 "form_years": 0,
 "is_periodic_inspection": 1,
 "mileage": "6456",
 "chassis_no": "1000ADF",
 "bid_type": 1,
 "minimum_bid": 100,
 "bid_days": 1,
 "total_bids": 2,
 //"member_id": {
 "id": 116,
 "first_name": "gada agency",
 "last_name": "aya mohamed",
 "email": "aya@agency1.com",
 "city_id": 6,
 "country_id": 2,
 "phone_number": "0096658457850",
 "address": "Baminguic",
 "membership_type": 2,
 "remember_token": "Z5zIHO78Q9c2YzJGoqp8MbW1gWRyghbQeplzMQVKVxAHJ3WPei1PUyCZlI5X",
 "authorization": null,
 "device_id": null,
 "is_active_phone": 1,
 "is_active_email": 1,
 "is_active": 1,
 "file": "https://bidz.sa/storage/global/no_image_found.png",
 "lat": "24.721340789752333",
 "lng": "46.73303144531587",
 "balance": null,
 "market_image": "1534152533.jpeg",
 "created_at": "2018-08-13 04:28:53",
 "updated_at": "2018-09-25 15:51:00",
 "token": "6J0lrfXnlF4KJ6dWJZaSWGAmUVeLyOZIHx7WxETQ",
 "reset_password_code": null,
 "image": "https://bidz.sa/uploads/images/1537908660_bmw_PNG1712",
 "gender": null,
 "file_found": "https://bidz.sa/storage/global/no_image_found.png"
 },
 //"provider_id": {
 "id": 116,
 "first_name": "gada agency",
 "last_name": "aya mohamed",
 "email": "aya@agency1.com",
 "city_id": 6,
 "country_id": 2,
 "phone_number": "0096658457850",
 "address": "Baminguic",
 "membership_type": 2,
 "remember_token": "Z5zIHO78Q9c2YzJGoqp8MbW1gWRyghbQeplzMQVKVxAHJ3WPei1PUyCZlI5X",
 "authorization": null,
 "device_id": null,
 "is_active_phone": 1,
 "is_active_email": 1,
 "is_active": 1,
 "file": "https://bidz.sa/storage/global/no_image_found.png",
 "lat": "24.721340789752333",
 "lng": "46.73303144531587",
 "balance": null,
 "market_image": "1534152533.jpeg",
 "created_at": "2018-08-13 04:28:53",
 "updated_at": "2018-09-25 15:51:00",
 "token": "6J0lrfXnlF4KJ6dWJZaSWGAmUVeLyOZIHx7WxETQ",
 "reset_password_code": null,
 "image": "https://bidz.sa/uploads/images/1537908660_bmw_PNG1712",
 "gender": null,
 "file_found": "https://bidz.sa/storage/global/no_image_found.png"
 },
 "provider_accept": 1,
 "is_active": 1,
 "start_at": "2018-09-24 15:59:46",
 "car_price": "10000",
 "views": 17,
 "created_at": "2018-09-25 08:59:46",
 "updated_at": "2018-09-25 09:17:01",
 "isWork": 0,
 "current_price": 10200,
 "approve_member": 1,
 "approve_member_date": null,
 "current_time": "2018-10-25 06:58:25",
 "premium_ad": "no",
 "image": "https://bidz.sa/storage/auction_image/a741fc3c2a93d343fcbd0b240223c956.jpeg",
 //"category": {
 "id": 2,
 "is_active": 1,
 "created_at": null,
 "updated_at": null,
 "en_lang": {
 "category_id": 2,
 "language_id": 2,
 "title": "Alfa Romeo"
 }
 },
 //"city": {
 "id": 6,
 "is_active": 1,
 "country_id": 2,
 "created_at": "2018-05-03 17:01:37",
 "updated_at": null,
 "en_lang": {
 "city_id": 6,
 "language_id": 2,
 "title": "Riyadh"
 }
 },
 //"sub_category": {
 "id": 837,
 "is_active": 1,
 "category_id": 2,
 "created_at": null,
 "updated_at": null,
 "en_lang": {
 "sub_category_id": 837,
 "language_id": 2,
 "title": "أسبايدر"
 }
 },
 "car_color": {
 "id": 2,
 "is_active": 1,
 "created_at": null,
 "updated_at": null,
 "en_lang": {
 "car_color_id": 2,
 "language_id": 2,
 "title": "Green"
 }
 },
 "car_type": null,
 "engine_type": {
 "id": 1,
 "is_active": 1,
 "created_at": null,
 "updated_at": null,
 "en_lang": {
 "engine_type_id": 1,
 "language_id": 2,
 "title": "Normal"
 }
 },
 "fuel": {
 "id": 2,
 "is_active": 1,
 "created_at": null,
 "updated_at": null,
 "en_lang": {
 "fuel_id": 2,
 "language_id": 2,
 "title": "Diesel"
 }
 },
 "motion_vector": {
 "id": 1,
 "is_active": 1,
 "created_at": null,
 "updated_at": null,
 "en_lang": {
 "motion_vector_id": 1,
 "language_id": 2,
 "title": "Manual"
 }
 },
 "specification": {
 "id": 2,
 "is_active": 1,
 "created_at": null,
 "updated_at": null,
 "en_lang": {
 "specification_id": 2,
 "language_id": 2,
 "title": "Half-Options"
 }
 },
 "import": {
 "id": 3,
 "is_active": 1,
 "created_at": null,
 "updated_at": null,
 "en_lang": {
 "import_id": 3,
 "language_id": 2,
 "title": "Others"
 }
 },
 "provider": {
 "id": 116,
 "first_name": "gada agency",
 "last_name": "aya mohamed",
 "email": "aya@agency1.com",
 "city_id": 6,
 "country_id": 2,
 "phone_number": "0096658457850",
 "address": "Baminguic",
 "membership_type": 2,
 "remember_token": "Z5zIHO78Q9c2YzJGoqp8MbW1gWRyghbQeplzMQVKVxAHJ3WPei1PUyCZlI5X",
 "authorization": null,
 "device_id": null,
 "is_active_phone": 1,
 "is_active_email": 1,
 "is_active": 1,
 "file": "https://bidz.sa/storage/global/no_image_found.png",
 "lat": "24.721340789752333",
 "lng": "46.73303144531587",
 "balance": null,
 "market_image": "1534152533.jpeg",
 "created_at": "2018-08-13 04:28:53",
 "updated_at": "2018-09-25 15:51:00",
 "token": "6J0lrfXnlF4KJ6dWJZaSWGAmUVeLyOZIHx7WxETQ",
 "reset_password_code": null,
 "image": "uploads/images/1537908660_bmw_PNG1712",
 "gender": null,
 "file_found": "https://bidz.sa/storage/global/no_image_found.png"
 },
 "other_specifications": [],
 "auction_images": [
 {
 "auction_id": 3,
 "order": 0,
 "image": "https://bidz.sa/storage/auction_image/a741fc3c2a93d343fcbd0b240223c956.jpeg",
 "image_found": false
 }
 ]
 }
 }
 }
 */
