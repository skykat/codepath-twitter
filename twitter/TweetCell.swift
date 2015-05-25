//
//  TweetCell.swift
//  twitter
//
//  Created by Karen Levy on 5/24/15.
//  Copyright (c) 2015 Karen Levy. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var retweetedLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var tweetLabel: UILabel!
    
    
    var tweet: Tweet! {
        didSet{
            nameLabel.text = tweet.user?.name
            userNameLabel.text = tweet.user?.screenname
            tweetLabel.text = tweet?.text
            timeLabel.text = tweet?.createdAtString
            profileImageView.setImageWithURL(tweet.user?.profileImageUrl)
            retweetedLabel.text = tweet?.retweeted

//            thumbImageView.setImageWithURL(business.imageURL)
//            distanceLabel.text = business.distance
//            ratingImageView.setImageWithURL(business.ratingImageURL)
//            reviewCountLabel.text = "\(business.reviewCount!) Reviews"
//            addressLabel.text = business.address
//            categoriesLabel.text = business.categories
            
        }
    }

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImageView.layer.cornerRadius = 3
        profileImageView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func onReply(sender: AnyObject) {
    }

    
    @IBAction func onRetweet(sender: AnyObject) {
    }
    
    @IBAction func onFavorite(sender: AnyObject) {
    }
    
}
