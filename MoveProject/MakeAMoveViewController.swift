//
//  MakeAMoveViewController.swift
//  MoveProject
//
//  Created by DeQuan Burnside on 7/23/15.
//  Copyright (c) 2015 DeQuan Burnside. All rights reserved.
//

import UIKit
import Parse

class MakeAMoveViewController: UITableViewController {
    @IBAction func doneButton(sender: UIButton) {
                let moveName = self.moveName.text
    }
    
    @IBOutlet weak var moveName: UITextField!
    
    
    @IBOutlet weak var moveStart: UIDatePicker!
    
    
    @IBOutlet weak var moveEnd: UIDatePicker!
    
    
    @IBOutlet weak var moveSummary: UITextView!
    
    
    @IBOutlet weak var moveAddress: UITextView!
    
    
    @IBOutlet weak var movePriceSegment: UISegmentedControl!
    
    
    @IBOutlet weak var moveTypeSegment: UISegmentedControl!
    
    
    @IBOutlet weak var moveContactName: UITextField!
    
    
    @IBOutlet weak var moveContactInfo: UITextField!
    
    
    @IBOutlet weak var moveTicketLink: UITextField!
    
    var currentPrice : NSString = "Free"
    
    var currentType : NSString = "Public"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func priceSegmentToString() -> Void {
        
        switch movePriceSegment.selectedSegmentIndex {
        case 0 :
            currentPrice = "Free"
            println(currentPrice)
            
        case 1 :
            currentPrice = "< $10"
            println(currentPrice)
        
        case 2 :
            currentPrice = "$10 - $20"
            println(currentPrice)
            
        case 3 :
            currentPrice = "$20+"
            println(currentPrice)
        
        default :
            currentPrice = "Not Specified"
            println(currentPrice)
            
    
        
        
    }
        
    func typeSegmentToString() -> Void {
        switch moveTypeSegment {
        case 0 :
            currentType = "Public"
            println(currentType)
        case 1 :
            currentType = "Private"
            println(currentType)
            
        default :
            currentType = "Not Specified"
            println(currentType)
            
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: Actions
//    
//     @IBAction func doneButton(sender: AnyObject) {
        

//        let move = PFObject(className: "Move")
//        move["name"] = moveName.text
//        move["start"] = moveStart
//        move["end"] = moveEnd
//        move["price"] = currentPrice
//        move["type"] = currentType
//        move["host"] = "\(PFUser.currentUser())"
//        move["address"] = moveAddress
//        move["summary"] = moveSummary
//        move["ticket"] = moveTicketLink
//        move["contactName"] = moveContactName
//        move["contactInfo"] = moveContactInfo
        

        
//      let newMove = Move(name: moveName,
//                         start: moveStart,
//                         end: moveEnd,
//                         summary: moveSummary,
//                         address: moveAddress,
//                         price: currentPrice,
//                         type: currentType,
//                         contactName: moveContactName,
//                         contactInfo: moveContactInfo,
//                         ticketLink: moveTicketLink)
        
        
        //if public invite all friends and head back to home screen with alert view 
        //if private go to invite friends VC
        
        //ONLY DO THIS IF PUBLIC
//        self.performSegueWithIdentifier("backToHome", sender: self)
//        
//
//        }
    
    
    

}
}
