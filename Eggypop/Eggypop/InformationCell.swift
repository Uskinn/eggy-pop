//
//  InformationScreenView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/18/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit
import AVFoundation

final class InformationCell: UICollectionViewCell {
    
    let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Boiling Eggs For Dummies"
        label.font = UIFont(name: "LucidaGrande-Bold", size: 0)
        label.textAlignment = .center
        label.backgroundColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = UIColor(red:0.59, green:0.45, blue:0.45, alpha:1.0)
        return label
    }()
    
    let numberOneLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red:0.99, green:0.70, blue:0.25, alpha:1.0)
        label.text = "1."
        label.font = UIFont(name: "LucidaGrande", size: 16)
        label.textAlignment = .left
        label.backgroundColor = .white
        return label
    }()

    let firstSectionTextView2: UITextView = {
        let text = UITextView()
        text.textColor = UIColor(red:0.42, green:0.40, blue:0.40, alpha:1.0)
        text.text = "You need a pot. Duh"
        text.font = UIFont(name: "LucidaGrande", size: 0)
        text.textContainerInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
        text.font = UIFont.systemFont(ofSize: 16)
        text.backgroundColor = .white
        text.isSelectable = false
        text.isScrollEnabled = false
        text.isEditable = false
        return text
    }()
    
    let firstSectionTextView1: UITextView = {
        let text = UITextView()
        text.textColor = UIColor(red:0.42, green:0.40, blue:0.40, alpha:1.0)
        text.font = UIFont.init(name: "LucidaGrande", size: 0)
        text.font = UIFont.systemFont(ofSize: 16)
        text.text = "Pour some cold water in the exact pot to cover your eggs entirely. BUT DON'T PUT YOUR EGGS IN YET!"
        text.textContainerInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
        text.backgroundColor = .white
        text.isSelectable = false
        text.isScrollEnabled = false
        text.isEditable = false
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let firstImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .white
        imageView.image = #imageLiteral(resourceName: "boilingWater")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let numberTwoLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red:0.99, green:0.70, blue:0.25, alpha:1.0)
        label.text = "2."
        label.font = UIFont(name: "LucidaGrande", size: 16)
        label.textAlignment = .left
        label.backgroundColor = .white
        return label
    }()
    
    let secondSectionTextView1: UITextView = {
        let text = UITextView()
        text.textColor = UIColor(red:0.42, green:0.40, blue:0.40, alpha:1.0)
        text.font = UIFont.init(name: "LucidaGrande", size: 0)
        text.font = UIFont.systemFont(ofSize: 16)
        text.text = "Once water is boiling(like REALLY boiling, not those lame mini bubbles), choose your egg size and how you want it cooked with this app. Now you can put in the eggs. USE A SPOON! I'm serious. That water is hot! Now press start."
        text.textContainerInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
        text.backgroundColor = .white
        text.translatesAutoresizingMaskIntoConstraints = false
        text.isSelectable = false
        text.isScrollEnabled = false
        text.isEditable = false
        return text
    }()
    
    let secondImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .white
        imageView.image = #imageLiteral(resourceName: "boilingWaterWithEgg")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let numberThreeLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red:0.99, green:0.70, blue:0.25, alpha:1.0)
        label.text = "3."
        label.font = UIFont(name: "LucidaGrande", size: 16)
        label.textAlignment = .left
        label.backgroundColor = .white
        return label
    }()

    let thirdSectionTextView1: UITextView = {
        let text = UITextView()
        text.textColor = UIColor(red:0.42, green:0.40, blue:0.40, alpha:1.0)
        text.font = UIFont.init(name: "LucidaGrande", size: 0)
        text.font = UIFont.systemFont(ofSize: 16)
        text.text = "When the timer ends, pour out that boiling water and replace it with cold water. I know you're hungry, but you have to let them sit until it doesn't burn when you try to touch them. We don't want a lawsuit. Bon appetit!"
        text.textContainerInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
        text.backgroundColor = .white
        text.translatesAutoresizingMaskIntoConstraints = false
        text.isSelectable = false
        text.isScrollEnabled = false
        text.isEditable = false
        return text
    }()
    
    let thirdImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = #imageLiteral(resourceName: "foodPlate")
        return imageView
    }()
    
    let softMediumHardImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = #imageLiteral(resourceName: "softMediumHard")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let soundSwitch: UISwitch = {
       let sw = UISwitch()
       return sw
    }()
    
    let soundSwitchLabel: UILabel = {
        let label = UILabel()
        label.text = "Play alert sound on silent mode"
        label.font = UIFont(name: "LucidaGrande-Bold", size: 0)
        label.textAlignment = .left
        label.backgroundColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = UIColor(red:0.99, green:0.70, blue:0.25, alpha:1.0)
        return label
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupViews()
    }
    
    func setupViews() {
        addSubview(headerLabel)
        
        addSubview(numberOneLabel)
        addSubview(firstSectionTextView2)
        addSubview(firstSectionTextView1)
        addSubview(firstImageView)
        
        addSubview(numberTwoLabel)
        addSubview(secondSectionTextView1)
        addSubview(secondImageView)
        
        addSubview(numberThreeLabel)
        addSubview(thirdSectionTextView1)
        addSubview(thirdImageView)

        addSubview(softMediumHardImageView)
        addSubview(soundSwitchLabel)
        addSubview(soundSwitch)
        
        //horizontal constraints
        addConstraintsWithFormat(format: "H:|[v0]|", views: headerLabel)
        addConstraintsWithFormat(format: "H:|-8-[v0(12)]-[v1]-8-|", views: numberOneLabel, firstSectionTextView2)
        addConstraintsWithFormat(format: "H:|-60-[v0]-60-|", views: firstImageView)
        addConstraintsWithFormat(format: "H:|-8-[v0(12)]-[v1]-8-|", views: numberTwoLabel, secondSectionTextView1)
        addConstraintsWithFormat(format: "H:|-30-[v0]-30-|", views: secondImageView)
        addConstraintsWithFormat(format: "H:|-8-[v0(12)]-[v1]-8-|", views: numberThreeLabel, thirdSectionTextView1)
        addConstraintsWithFormat(format: "H:|-30-[v0]-30-|", views: thirdImageView)
        addConstraintsWithFormat(format: "H:|-20-[v0]-20-|", views: softMediumHardImageView)
        addConstraintsWithFormat(format: "H:|-16-[v0(240)]-[v1]-8-|", views: soundSwitchLabel, soundSwitch)

        //vertical constraints
        addConstraintsWithFormat(format: "V:|-20-[v0(30)]-15-[v1(18)]", views: headerLabel, firstSectionTextView2)

        // left constraints
        addConstraint(NSLayoutConstraint(item: firstSectionTextView1, attribute: .left, relatedBy: .equal, toItem: firstSectionTextView2, attribute: .left, multiplier: 1, constant: 0))
        
        // right constraints
        addConstraint(NSLayoutConstraint(item: firstSectionTextView1, attribute: .right, relatedBy: .equal, toItem: firstSectionTextView2, attribute: .right, multiplier: 1, constant: 0))
        
        // top constraints
        addConstraint(NSLayoutConstraint(item: firstSectionTextView2, attribute: .top, relatedBy: .equal, toItem: numberOneLabel, attribute: .top, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: firstSectionTextView1, attribute: .top, relatedBy: .equal, toItem: firstSectionTextView2, attribute: .bottom, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: firstImageView, attribute: .top, relatedBy: .equal, toItem: firstSectionTextView1, attribute: .bottom, multiplier: 1, constant: 5))
        addConstraint(NSLayoutConstraint(item: secondSectionTextView1, attribute: .top, relatedBy: .equal, toItem: firstImageView, attribute: .bottom, multiplier: 1, constant: 15))
        addConstraint(NSLayoutConstraint(item: numberTwoLabel, attribute: .top, relatedBy: .equal, toItem: secondSectionTextView1, attribute: .top, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: secondImageView, attribute: .top, relatedBy: .equal, toItem: secondSectionTextView1, attribute: .bottom, multiplier: 1, constant: 5))
        addConstraint(NSLayoutConstraint(item: thirdSectionTextView1, attribute: .top, relatedBy: .equal, toItem: secondImageView, attribute: .bottom, multiplier: 1, constant: 15))
        addConstraint(NSLayoutConstraint(item: numberThreeLabel, attribute: .top, relatedBy: .equal, toItem: thirdSectionTextView1, attribute: .top, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: thirdImageView, attribute: .top, relatedBy: .equal, toItem: thirdSectionTextView1, attribute: .bottom, multiplier: 1, constant: 5))
        addConstraint(NSLayoutConstraint(item: softMediumHardImageView, attribute: .top, relatedBy: .equal, toItem: thirdImageView, attribute: .bottom, multiplier: 1, constant: 50))
        addConstraint(NSLayoutConstraint(item: soundSwitchLabel, attribute: .top, relatedBy: .equal, toItem: softMediumHardImageView, attribute: .bottom, multiplier: 1, constant: 55))
        addConstraint(NSLayoutConstraint(item: soundSwitch, attribute: .top, relatedBy: .equal, toItem: softMediumHardImageView, attribute: .bottom, multiplier: 1, constant: 50))

        // height constraints
        addConstraint(NSLayoutConstraint(item: numberOneLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
        addConstraint(NSLayoutConstraint(item: firstSectionTextView1, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 80))
        addConstraint(NSLayoutConstraint(item: firstImageView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 85))
        addConstraint(NSLayoutConstraint(item: numberTwoLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
        addConstraint(NSLayoutConstraint(item: secondSectionTextView1, attribute: .height, relatedBy: .greaterThanOrEqual, toItem: self, attribute: .height, multiplier: 0, constant: 140))
        addConstraint(NSLayoutConstraint(item: secondImageView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 150))
        addConstraint(NSLayoutConstraint(item: numberThreeLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
        addConstraint(NSLayoutConstraint(item: thirdSectionTextView1, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 135))
        addConstraint(NSLayoutConstraint(item: thirdImageView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 160))
        addConstraint(NSLayoutConstraint(item: softMediumHardImageView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 130))
        addConstraint(NSLayoutConstraint(item: soundSwitchLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
        addConstraint(NSLayoutConstraint(item: soundSwitch, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
    }
}
