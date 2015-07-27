//
//  Move.swift
//  MoveProject
//
//  Created by DeQuan Burnside on 7/24/15.
//  Copyright (c) 2015 DeQuan Burnside. All rights reserved.
//

import Foundation


class Move {
    
    var name : NSString?
    var startDate : NSDate?
    var startTime : NSDate?
    var endDate : NSDate?
    var endTime : NSDate?
    var summary : NSString?
    var addressLine1 : NSString?
    var addressLine2 : NSString?
    var price : NSString?
    var type : NSString?
    var contactName : NSString?
    var contactInfo : NSString?
    var ticketLink : NSString?
    
    
    init(name : NSString,
        startDate : NSDate,
        startTime : NSDate,
        endDate : NSDate,
        endTime : NSDate,
        summary : NSString,
        addressLine1 : NSString,
        addressLine2 : NSString,
        price : NSString,
        type : NSString,
        contactName : NSString,
        contactInfo : NSString,
        ticketLink : NSString
        )
        
        {
            
            self.name = name
            self.startDate = startDate
            self.startTime = startTime
            self.endDate = endDate
            self.endTime = endTime
            self.summary = summary
            self.addressLine1 = addressLine1
            self.addressLine2 = addressLine2
            self.price = price
            self.type = type
            self.contactName = contactName
            self.contactInfo = contactInfo
            self.ticketLink = ticketLink
            
        
        
    }
    

    //
}