//
//  PlusViewController.swift
//  MoveProject
//
//  Created by DeQuan Burnside on 7/26/15.
//  Copyright (c) 2015 DeQuan Burnside. All rights reserved.
//

import UIKit

class PlusViewController: UIViewController {
    
    // MARK: Actions
    
    @IBAction func makeAMoveAction(sender: AnyObject) {
        self.performSegueWithIdentifier("makeamove", sender: self)
    }

    @IBAction func findFriendsAction(sender: AnyObject) {
    }
    
    @IBAction func selectionAction(sender: AnyObject) {
    }

    @IBAction func draftsAction(sender: AnyObject) {
    }
    
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
