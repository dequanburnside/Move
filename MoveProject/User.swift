//
//  User.swift
//  MoveProject
//
//  Created by DeQuan Burnside on 7/24/15.
//  Copyright (c) 2015 DeQuan Burnside. All rights reserved.
//

import Foundation
import Parse


class User {
    
    var username : NSString?
    var email : NSString?
    var password : NSString?
    var birthday : NSDate?
    var age : Int?
    var city : NSString?
    
    
    
    init(username: NSString, email: NSString, password: NSString, birthday: NSDate, age: Int) {
        
        self.username = username
        self.email = email
        self.password = password
        self.birthday = birthday
        self.age = age
        self.city = "Ames"
        
    }
    
    
    
}