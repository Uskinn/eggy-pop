//
//  ThanksViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/19/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

final class ThanksViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    private let cellId = "cellId"
    
    lazy var thanksCollectionVIew: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.delegate = self
        cv.dataSource = self
        cv.layer.cornerRadius = 8
        cv.alwaysBounceVertical = true
        return cv
    }()
    
    var dismissScrollViewButton: UIButton = {
        let dismiss = UIButton()
        dismiss.backgroundColor = .clear
        return dismiss
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.4)
        view.isOpaque = false
        setupCV()
        dismissScrollViewButton.addTarget(self, action: #selector(dismissView), for: .touchUpInside)
        thanksCollectionVIew.register(ThanksCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ThanksCell
     //   cell.reviewButton.addTarget(self, action: #selector(reviewButtonTapped), for: .touchUpInside)
     //   cell.shareButton.addTarget(self, action: #selector(shareButtonTapped), for: .touchUpInside)
     //   cell.emailButton.addTarget(self, action: #selector(emailButtonTapped), for: .touchUpInside)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.thanksCollectionVIew.frame.width, height: self.thanksCollectionVIew.frame.height)
    }
    
    func setupCV() {
        view.addSubview(dismissScrollViewButton)
        dismissScrollViewButton.addSubview(thanksCollectionVIew)
        
        dismissScrollViewButton.addConstraintsWithFormat(format: "H:|-20-[v0]-20-|", views: thanksCollectionVIew)
        dismissScrollViewButton.addConstraintsWithFormat(format: "V:|-70-[v0]-70-|", views: thanksCollectionVIew)
        
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: dismissScrollViewButton)
        view.addConstraintsWithFormat(format: "V:|[v0]|", views: dismissScrollViewButton)
    }
    
    func dismissView() {
        dismiss(animated: true, completion: nil)
    }
    
//    func shareButtonTapped() {
//        let activityVC = UIActivityViewController(activityItems: [Links.shareLink], applicationActivities: nil)
//        activityVC.popoverPresentationController?.sourceView = self.view
//        self.present(activityVC, animated: true, completion: nil)
//    }
//    
//    func reviewButtonTapped() {
//        if let url = URL(string: Links.reviewLink) {
//            UIApplication.shared.open(url, options: [:], completionHandler: nil)
//        }
//    }
//    
//    func emailButtonTapped() {
//        if let url = URL(string: "mailto:\(Links.eggypopEmail)") {
//            UIApplication.shared.open(url)
//        }
//    }
}









