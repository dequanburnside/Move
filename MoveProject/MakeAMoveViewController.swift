//
//  MakeAMoveViewController.swift
//  MoveProject
//
//  Created by DeQuan Burnside on 7/23/15.
//  Copyright (c) 2015 DeQuan Burnside. All rights reserved.
//

import UIKit

class MakeAMoveViewController: UITableViewController {
    
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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
