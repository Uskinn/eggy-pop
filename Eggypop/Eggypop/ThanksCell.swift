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
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupViews()
    }
    
    func setupViews() {
        addSubview(dedicationLabel)
        addSubview(dedicationTextView)
        addSubview(acknowledgementsLabel)
        addSubview(acknowledgementsTextView)
        
        //horizontal constraints
        addConstraintsWithFormat(format: "H:|-16-[v0]-20-|", views: dedicationLabel)
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: dedicationTextView)
        addConstraintsWithFormat(format: "H:|-16-[v0]-20-|", views: acknowledgementsLabel)
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: acknowledgementsTextView)
        
        //vertical constraints
        addConstraintsWithFormat(format: "V:|-20-[v0(30)]-[v1(80)]-20-[v2(30)]-[v3]|", views: dedicationLabel, dedicationTextView, acknowledgementsLabel, acknowledgementsTextView)
    }
}

extension UIView {
    func addConstraintsWithFormat(format: String, views: UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
