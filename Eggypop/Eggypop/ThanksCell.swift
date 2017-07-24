//
//  ThanksScreenView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/19/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

final class ThanksCell: UICollectionViewCell {
    
    let dedicationLabel: UILabel = {
        let label = UILabel()
        label.text = "Dedication"
        label.font = UIFont(name: "LucidaGrande-Bold", size: 0)
        label.textAlignment = .left
        label.backgroundColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = UIColor(red:0.59, green:0.45, blue:0.45, alpha:1.0)
        return label
    }()
    
    let acknowledgementsLabel: UILabel = {
        let label = UILabel()
        label.text = "Acknowledgements"
        label.font = UIFont(name: "LucidaGrande-Bold", size: 0)
        label.textAlignment = .left
        label.backgroundColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = UIColor(red:0.59, green:0.45, blue:0.45, alpha:1.0)
        return label
    }()
    
    let dedicationTextView: UITextView = {
        let text = UITextView()
        text.textColor = UIColor(red:0.42, green:0.40, blue:0.40, alpha:1.0)
        text.font = UIFont.init(name: "LucidaGrande", size: 0)
        text.font = UIFont.systemFont(ofSize: 16)
        text.text = "This app is dedicated to my wife Ekaterina who has provided lots of hugs and support at every point in its creation. ❤️"
        text.textContainerInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
        text.backgroundColor = .white
        text.isSelectable = false
        text.isScrollEnabled = false
        text.isEditable = false
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
//    let shareContainerView: UIView = {
//        let view = UIView()
//        return view
//    }()
//    
//    let reviewContainerView: UIView = {
//        let view = UIView()
//        return view
//    }()
//    
//    let emailContainerView: UIView = {
//        let view = UIView()
//        return view
//    }()
    
    let acknowledgementsTextView: UITextView = {
        let text = UITextView()
        text.textColor = UIColor(red:0.42, green:0.40, blue:0.40, alpha:1.0)
        text.font = UIFont.init(name: "LucidaGrande", size: 0)
        text.font = UIFont.systemFont(ofSize: 16)
        text.text = "A number of people were kind enough to contribute to the creation of this app, and I'm most grateful. In alphabetical order they are Alexander Clark, Christopher Webb, Eric Camacho, Icons8, Jenny Shalai, Joel Bell, Jim Campagno and Valera Marsel – thank you all! 🙏"
        text.textContainerInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
        text.backgroundColor = .white
        text.translatesAutoresizingMaskIntoConstraints = false
        text.isSelectable = false
        text.isScrollEnabled = false
        text.isEditable = false
        return text
    }()
    
//    let shareButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setImage(#imageLiteral(resourceName: "shareButton"), for: .normal)
//     //   button.tintColor = UIColor(red:0.21, green:0.50, blue:0.19, alpha:1.0)
//        return button
//    }()
//    
//    let shareLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Share Eggypop with egg lovers"
//        label.font = UIFont(name: "LucidaGrande-Bold", size: 0)
//        label.textAlignment = .left
//        label.backgroundColor = .white
//        label.font = UIFont.boldSystemFont(ofSize: 18)
//        label.textColor = UIColor(red:0.59, green:0.45, blue:0.45, alpha:1.0)
//        return label
//    }()
//    
//    let reviewLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Review me. Give me five"
//        label.font = UIFont(name: "LucidaGrande-Bold", size: 0)
//        label.textAlignment = .left
//        label.backgroundColor = .white
//        label.font = UIFont.boldSystemFont(ofSize: 18)
//        label.textColor = UIColor(red:0.59, green:0.45, blue:0.45, alpha:1.0)
//        return label
//    }()
//    
//    let reviewButton: UIButton = {
//        let image = #imageLiteral(resourceName: "shareButton").withRenderingMode(.alwaysTemplate)
//        let button = UIButton(type: .system)
//        button.setImage(image, for: .normal)
//        button.tintColor = UIColor(red:0.21, green:0.50, blue:0.19, alpha:1.0)
//        return button
//    }()
//    
//    let emailLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Email me"
//        label.font = UIFont(name: "LucidaGrande-Bold", size: 0)
//        label.textAlignment = .left
//        label.backgroundColor = .white
//        label.font = UIFont.boldSystemFont(ofSize: 18)
//        label.textColor = UIColor(red:0.59, green:0.45, blue:0.45, alpha:1.0)
//        return label
//    }()
//    
//    let emailButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setImage(#imageLiteral(resourceName: "emailButton"), for: .normal)
//       // button.tintColor = UIColor(red:0.21, green:0.50, blue:0.19, alpha:1.0)
//        return button
//    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupViews()
    }
    
    func setupViews() {
        addSubview(dedicationLabel)
        addSubview(dedicationTextView)
        addSubview(acknowledgementsLabel)
        addSubview(acknowledgementsTextView)
      //  addSubview(shareContainerView)
      //  addSubview(reviewContainerView)
      //  shareContainerView.addSubview(shareLabel)
      //  shareContainerView.addSubview(shareButton)
      //  reviewContainerView.addSubview(reviewLabel)
      //  reviewContainerView.addSubview(reviewButton)
      //  addSubview(emailContainerView)
      //  emailContainerView.addSubview(emailLabel)
      //  emailContainerView.addSubview(emailButton)
        
        //horizontal constraints
        addConstraintsWithFormat(format: "H:|-16-[v0]-20-|", views: dedicationLabel)
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: dedicationTextView)
        addConstraintsWithFormat(format: "H:|-16-[v0]-20-|", views: acknowledgementsLabel)
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: acknowledgementsTextView)
      //  addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: shareContainerView)
      //  addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: reviewContainerView)
      //  shareContainerView.addConstraintsWithFormat(format: "H:|[v0]-[v1(30)]", views: shareLabel, shareButton)
    //    reviewContainerView.addConstraintsWithFormat(format: "H:|[v0]-[v1(30)]", views: reviewLabel, reviewButton)
      //  addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: emailContainerView)
      //  emailContainerView.addConstraintsWithFormat(format: "H:|[v0]-[v1(30)]", views: emailLabel, emailButton)
        
        //vertical constraints
        addConstraintsWithFormat(format: "V:|-20-[v0(30)]-[v1(80)]-20-[v2(30)]-[v3]", views: dedicationLabel, dedicationTextView, acknowledgementsLabel, acknowledgementsTextView)
        
        //-20-[v4(40)]-10-[v5(40)]-10-[v6(40)]
            //, reviewContainerView, emailContainerView, shareContainerView)
        
        // centerY constraints
//        shareContainerView.addConstraint(NSLayoutConstraint(item: shareLabel, attribute: .centerY, relatedBy: .equal, toItem: shareContainerView, attribute: .centerY, multiplier: 1, constant: 0))
//        shareContainerView.addConstraint(NSLayoutConstraint(item: shareButton, attribute: .centerY, relatedBy: .equal, toItem: shareContainerView, attribute: .centerY, multiplier: 1, constant: 0))
//        reviewContainerView.addConstraint(NSLayoutConstraint(item: reviewLabel, attribute: .centerY, relatedBy: .equal, toItem: reviewContainerView, attribute: .centerY, multiplier: 1, constant: 0))
//        reviewContainerView.addConstraint(NSLayoutConstraint(item: reviewButton, attribute: .centerY, relatedBy: .equal, toItem: reviewContainerView, attribute: .centerY, multiplier: 1, constant: 0))
//        
//        emailContainerView.addConstraint(NSLayoutConstraint(item: emailLabel, attribute: .centerY, relatedBy: .equal, toItem: emailContainerView, attribute: .centerY, multiplier: 1, constant: 0))
//        emailContainerView.addConstraint(NSLayoutConstraint(item: emailButton, attribute: .centerY, relatedBy: .equal, toItem: emailContainerView, attribute: .centerY, multiplier: 1, constant: 0))
//        
        // height constraints
//        shareContainerView.addConstraint(NSLayoutConstraint(item: shareButton, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 30))
//        reviewContainerView.addConstraint(NSLayoutConstraint(item: reviewButton, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 30))
//        emailContainerView.addConstraint(NSLayoutConstraint(item: emailButton, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 30))
//        
        
    }
}


