//
//  ViewController.swift
//  MoveProject
//
//  Created by DeQuan Burnside on 7/20/15.
//  Copyright (c) 2015 DeQuan Burnside. All rights reserved.
//

import UIKit
import Parse
import ParseUI



class FirstScreenViewController: UIViewController, PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate  {

    var logInViewController: PFLogInViewController = PFLogInViewController()
    var signUpViewController: PFSignUpViewController = PFSignUpViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        if (PFUser.currentUser() == nil) {
            
            self.logInViewController.fields = PFLogInFields.UsernameAndPassword | PFLogInFields.LogInButton | PFLogInFields.SignUpButton | PFLogInFields.PasswordForgotten | PFLogInFields.DismissButton
            
            //Make this the Move Logo or Banner Later
            var logInLogoTitle = UILabel()
            logInLogoTitle.text = "Move"
            
            self.logInViewController.logInView!.logo = logInLogoTitle
            
            self.logInViewController.delegate = self
            
            //Make this the Move Logo or Banner Later
            var SignUpLogoTitle = UILabel()
            SignUpLogoTitle.text = "Move"
            
            self.signUpViewController.signUpView!.logo = SignUpLogoTitle
            
            self.signUpViewController.delegate = self
            
            self.logInViewController.signUpController = self.signUpViewController
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Parse Log In
    
    func logInViewController(logInController: PFLogInViewController, shouldBeginLogInWithUsername username: String, password: String) -> Bool {
        
        if (!username.isEmpty || !password.isEmpty) {
            return true
        }else {
            return false
        }
        
    }
    
    func logInViewController(logInController: PFLogInViewController, didLogInUser user: PFUser) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    func logInViewController(logInController: PFLogInViewController, didFailToLogInWithError error: NSError?) {
        
        println("Failed to login...")
        
    }
    
    
    
    
    
    // MARK: Parse Sign Up
    

    
    func signUpViewController(signUpController: PFSignUpViewController, didFailToSignUpWithError error: NSError?) {
        
        println("Failed to sign up...")
        
    }
    
    func signUpViewControllerDidCancelSignUp(signUpController: PFSignUpViewController) {
        
        println("User dismissed sign up.")
        
    }
    
    func signUpViewController(signUpController: PFSignUpViewController, didSignUpUser user: PFUser) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
    // MARK: Actions
    
    

    @IBAction func logInAction(sender: AnyObject) {
        
        self.performSegueWithIdentifier("logIn", sender: self)
    }

    
    @IBAction func signUpAction(sender: AnyObject) {
        
        self.performSegueWithIdentifier("signUp", sender: self)
    }
    
    
    
    

}

