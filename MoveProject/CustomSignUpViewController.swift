//
//  CustomSignUpViewController.swift
//  MoveProject
//
//  Created by DeQuan Burnside on 7/22/15.
//  Copyright (c) 2015 DeQuan Burnside. All rights reserved.
//

import UIKit
import Parse

class CustomSignUpViewController: UIViewController {
    
    
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!

    @IBOutlet weak var passwordField: UITextField!
    

    var actInd : UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRectMake(0,0, 150, 150)) as UIActivityIndicatorView
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.actInd.center = self.view.center
        self.actInd.hidesWhenStopped = true
        self.actInd.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
        view.addSubview(self.actInd)
        
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
    
    
    
    // MARK: Actions
    
    
    @IBAction func toLogIn(sender: UIButton) {
        
        self.performSegueWithIdentifier("toLogIn", sender: self)
    }
    
    
    @IBAction func signUpAction(sender: AnyObject) {
        var username = self.usernameField.text
        var password = self.passwordField.text
        var email = self.emailField.text
        
        if (count(username.utf16) < 4 || count(password.utf16) < 5) {
            
            var alert = UIAlertView(title: "Invalid", message: "Username must be greater than 4 characters and Password must be greater than 5 characters", delegate: self, cancelButtonTitle: "OK")
            alert.show()
            
        }
        else if (count(email.utf16) < 8) {
            var alert = UIAlertView(title: "Invalid", message: "Please enter a valid email.", delegate: self, cancelButtonTitle: "OK")
            alert.show()
            
        }
            else {
                
                self.actInd.startAnimating()
                
                var newUser = PFUser()
                newUser.username = username
                newUser.password = password
                newUser.email = email
                
                newUser.signUpInBackgroundWithBlock({ (succeed, error) -> Void in
                    
                    self.actInd.stopAnimating()
                    
                    if ((error) != nil) {
                        
                        var alert = UIAlertView(title: "Error", message: "\(error)", delegate: self, cancelButtonTitle: "OK")
                        alert.show()
                        
                    }
                    else {
                        
                        var alert = UIAlertView(title: "Success", message: "Signed Up", delegate: self, cancelButtonTitle: "OK")
                        alert.show()
                        // SAVE ???
                        
                        self.performSegueWithIdentifier("signedUp", sender: self)
                        
                        
                    }
                    
                })
                
            }
        
        }
        
        

}
