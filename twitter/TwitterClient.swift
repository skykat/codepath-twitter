//
//  TwitterClient.swift
//  twitter
//
//  Created by Karen Levy on 5/20/15.
//  Copyright (c) 2015 Karen Levy. All rights reserved.
//

import UIKit

let twitterConsumerKey = "Bkel768VttvcraiTY6xZm6TW8"
let twitterConsumerSecret = "XbyePsl7pMLBr3VDToZJ3X3cbWLtE0Q3hebfK9FOZ4gzf2eHnp"
let twitterBaseURL =  NSURL(string: "https://api.twitter.com")

class TwitterClient: BDBOAuth1RequestOperationManager {
    
    class var sharedInstance: TwitterClient{
        struct Static{
            static let instance = TwitterClient(baseURL: twitterBaseURL, consumerKey: twitterConsumerKey, consumerSecret: twitterConsumerSecret)
        }
        return Static.instance
    }
   
}
