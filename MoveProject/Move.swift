//
//  Move.swift
//  MoveProject
//
//  Created by DeQuan Burnside on 7/24/15.
//  Copyright (c) 2015 DeQuan Burnside. All rights reserved.
//

import Foundation
import Parse


class Move : PFObject {
    
    var name : NSString?
    var host : NSString?
    var start : NSDate?
    var end : NSDate?
    var summary : NSString?
    var address : NSString?
    var price : NSString?
    var type : NSString?
    var contactName : NSString?
    var contactInfo : NSString?
    var ticketLink : NSString?
    var rsvpList : [PFUser]?
    
    
    init(name : NSString,
        start : NSDate,
        end : NSDate,
        summary : NSString,
        address : NSString,
        price : NSString,
        type : NSString,
        contactName : NSString,
        contactInfo : NSString,
        ticketLink : NSString
        )
        
        {
            super.init()
            self.name = name
            self.start = start
            self.end = end
            self.summary = summary
            self.address = address
            self.price = price
            self.type = type
            self.contactName = contactName
            self.contactInfo = contactInfo
            self.ticketLink = ticketLink
            self.rsvpList = []
            
        
        
    }
    

    //
}