//
//  HomeScreenViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/12/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit
import UserNotifications

class HomeScreenViewController: UIViewController {
    
    let homeScreen = HomeScreenView()
    var isEggAnimated = false
    let navBarItem = UIImage()
    private let notifId = "notifId"
    let transition = CircularTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = homeScreen.headerLabel
        view.addSubview(homeScreen)
        homeScreen.layoutSubviews()
        buttonsAction()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DispatchQueue.main.async {
            self.homeScreen.animateEggs()
            if self.isEggAnimated {
                self.homeScreen.animateEggSizeButtons()
            }
       }
    }
    
    func buttonsAction() {
        barButtonItemsAction()
        
        homeScreen.largeEggButton.addTarget(self, action: #selector(largeEggButtonClicked(_:)), for: .touchUpInside)
        homeScreen.extraLargeEggButton.addTarget(self, action: #selector(extraLargeEggButtonClicked(_:)), for: .touchUpInside)
        homeScreen.jumboEggButton.addTarget(self, action: #selector(jumboEggButtonClicked(_:)), for: .touchUpInside)
        
        homeScreen.softEggButton.addTarget(self, action: #selector(softEggButtonClicked(_:)), for: .touchUpInside)
        homeScreen.mediumEggButton.addTarget(self, action: #selector(mediumEggButtonClicked(_:)), for: .touchUpInside)
        homeScreen.hardEggButton.addTarget(self, action: #selector(hardEggButtonClicked(_:)), for: .touchUpInside)
        
        homeScreen.startButton.addTarget(self, action: #selector(startButtonClicked(_:)), for: .touchUpInside)
        homeScreen.logoImageButton.addTarget(self, action: #selector(logoButtonDidTap), for: .touchUpInside)
    }
    
    
    
    func barButtonItemsAction() {
        let infoButtonImage = Image.infoButtonImage?.withRenderingMode(.alwaysOriginal)
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(image: infoButtonImage, style: .plain, target: self, action: #selector(infoButtonClicked(_:)))
        
        let thanksButtonImage = Image.thanksButtonImage?.withRenderingMode(.alwaysOriginal)
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(image: thanksButtonImage, style: .plain, target: self, action: #selector(thankYouButtonClicked(_:)))
    }
    
    func largeEggButtonClicked(_ button: UIButton) {
        AnimateButton.animateButtonInside(myButton: homeScreen.largeEggButton)
        homeScreen.largeEggButtonViewWnenClicked()
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.homeScreen.largeEggButton)
        }, completion: nil)
        homeScreen.animateEggSizeButtons()
        homeScreen.animateEggTypeButttons()
        self.isEggAnimated = true
    }
    
    func extraLargeEggButtonClicked(_ button: UIButton) {
        AnimateButton.animateButtonInside(myButton: homeScreen.extraLargeEggButton)
        homeScreen.extraLargeEggButtonViewWnenClicked()
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.homeScreen.extraLargeEggButton)
        }, completion: nil)
        homeScreen.animateEggSizeButtons()
        homeScreen.animateEggTypeButttons()
        self.isEggAnimated = true
    }
    
    func jumboEggButtonClicked(_ button: UIButton) {
        AnimateButton.animateButtonInside(myButton: homeScreen.jumboEggButton)
        homeScreen.jumboEggButtonViewWhenClicked()
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.homeScreen.jumboEggButton)
        }, completion: nil)
        homeScreen.animateEggSizeButtons()
        homeScreen.animateEggTypeButttons()
        self.isEggAnimated = true
    }
    
    func softEggButtonClicked(_ button: UIButton) {
        AnimateButton.animateButtonInside(myButton: homeScreen.softEggButton)
        homeScreen.softButtonViewWhenClicked()
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.homeScreen.softEggButton)
        }, completion: nil)
        homeScreen.startButton.alpha = 1
    }
    
    func mediumEggButtonClicked(_ button: UIButton) {
        AnimateButton.animateButtonInside(myButton: homeScreen.mediumEggButton)
        homeScreen.mediumButtonViewWhenClicked()
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.homeScreen.mediumEggButton)
        }, completion: nil)
        homeScreen.startButton.alpha = 1
    }
    
    func hardEggButtonClicked(_ button: UIButton) {
        AnimateButton.animateButtonInside(myButton: homeScreen.hardEggButton)
        homeScreen.hardButtonViewWhenClicked()
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.homeScreen.hardEggButton)
        }, completion: nil)
        homeScreen.startButton.alpha = 1
    }
    
    func infoButtonClicked(_ button: UIButton) {
        let controller  = InformationViewController()
        controller.modalPresentationStyle = .overFullScreen
        controller.modalTransitionStyle = .crossDissolve
        self.present(controller, animated: true, completion: nil)
    }
    
    func thankYouButtonClicked(_ button: UIButton) {
        let controller  = ThanksViewController()
        controller.modalPresentationStyle = .overFullScreen
        controller.modalTransitionStyle = .crossDissolve
        self.present(controller, animated: true, completion: nil)
    }
    
    func startButtonClicked(_ button: UIButton) {
        let timerVC = UINavigationController(rootViewController: EggTimerViewController())
        self.present(timerVC, animated: true) {
            self.homeScreen.setSeconds()
            print("egg boiling time in seconds: \(HomeScreenView.seconds)")
            NotificationCenter.default.post(name: NSNotification.Name.init("Raw"), object: nil)
        }
    }
}

extension HomeScreenViewController: UIViewControllerTransitioningDelegate {
    
    func logoButtonDidTap() {
        let moreVC = MoreViewController()
        moreVC.transitioningDelegate = self
        moreVC.modalPresentationStyle = .custom
        self.present(moreVC, animated: true, completion: nil)
        
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = homeScreen.logoImageButton.center
        transition.circleColor = .white
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        transition.startingPoint = homeScreen.logoImageButton.center
        transition.circleColor = .white
        return transition
    }
    
    
    
    
}











