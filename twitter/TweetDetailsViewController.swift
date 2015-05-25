//
//  TweetDetailsViewController.swift
//  twitter
//
//  Created by Karen Levy on 5/24/15.
//  Copyright (c) 2015 Karen Levy. All rights reserved.
//

import UIKit

class TweetDetailsViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var retweetedUsernameLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var tweetDetails: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var retweetImageView: UIImageView!
    @IBOutlet weak var favoriteCountLabel: UILabel!
    @IBOutlet weak var retweetCountLabel: UILabel!
    
    var tweet: Tweet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = tweet.user?.name
        usernameLabel.text = tweet.user?.screenname
        tweetDetails.text = tweet.text
        timeLabel.text = tweet?.createdAtString
        profileImageView.setImageWithURL(tweet.user?.profileImageUrl)
        retweetedUsernameLabel.text = tweet.retweeted
        if retweetedUsernameLabel.text == nil
        {
            retweetImageView.hidden = true
        }else{
            retweetImageView.hidden = false
        }
        
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
    @IBAction func onReply(sender: AnyObject) {
    }

    @IBAction func onRetweet(sender: AnyObject) {
    }
    
    @IBAction func onFavorite(sender: AnyObject) {
    }
}
