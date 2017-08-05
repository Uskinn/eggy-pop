//
//  MoreViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 8/5/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {
    
    let moreView = MoreView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(moreView)
        moreView.layoutSubviews()
        moreView.logoImageButton.addTarget(self, action: #selector(logoDidTap), for: .touchUpInside)
        moreView.reviewButton.addTarget(self, action: #selector(reviewButtonTapped), for: .touchUpInside)
        moreView.shareButton.addTarget(self, action: #selector(shareButtonTapped), for: .touchUpInside)
        moreView.emailButton.addTarget(self, action: #selector(emailButtonTapped), for: .touchUpInside)
    }
    
    func logoDidTap() {
        dismiss(animated: true, completion: nil)
    }
    
    func shareButtonTapped() {
        let activityVC = UIActivityViewController(activityItems: [Links.shareLink], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
    }
    
    func reviewButtonTapped() {
        if let url = URL(string: Links.reviewLink) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    func emailButtonTapped() {
        if let url = URL(string: "mailto:\(Links.eggypopEmail)") {
            UIApplication.shared.open(url)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
