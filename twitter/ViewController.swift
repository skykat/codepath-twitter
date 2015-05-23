//
//  ViewController.swift
//  twitter
//
//  Created by Karen Levy on 5/20/15.
//  Copyright (c) 2015 Karen Levy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onLogin(sender: AnyObject) {
        // sometimes tokens are cached, so clear it first
        TwitterClient.sharedInstance.requestSerializer.removeAccessToken()
        // get request token
        TwitterClient.sharedInstance.fetchRequestTokenWithPath("oauth/request_token", method: "GET", callbackURL: NSURL(string: "cptwitterdemo://oauth"), scope: nil, success: { (requestToken:BDBOAuth1Credential!) -> Void in
            println("Got the token")
            
            var authURL = NSURL(string:"https://api.twitter.com/oauth/authorize?oauth_token=\(requestToken.token)")
            UIApplication.sharedApplication().openURL(authURL!)
            }){(error: NSError!) -> Void in
            println("failed \(error)")
        }
    }

}

