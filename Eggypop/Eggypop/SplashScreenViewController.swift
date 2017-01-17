//
//  SplashScreenViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/16/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class SplashScreenViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("splash did load")
        
        
        header()
        logo()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("splash did appear")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = .white
        perform(#selector(SplashScreenViewController.qwert), with: self, afterDelay: 1.0)

        print("splash will appear")
        animateHeaderAndLogo()
    }
    
    func header() {
        headerLabel.frame = CGRect(x: 118.00, y: 286.00, width: 140.00, height: 23.00)
        
        Label.headerLabel(headerLabel)
        self.view.addSubview(headerLabel)
    }
    
    // #MARK: Header
    func logo() {
        appLogo.frame = CGRect(x: 171.00, y: 320.00, width: 36.00, height: 44.00)
        
        Logo.logo(appLogo)
        self.view.addSubview(appLogo)
    }
    
    func animateHeaderAndLogo() {
        
        UIView.animate(withDuration: 0.33, delay: 0.3, options: [.curveEaseInOut], animations: {
            headerLabel.center.y -= 251
            appLogo.center.y += 262
            
        }, completion: nil
        )
        
        
        
        
    }
    
    func qwert() {
        let svc = EggTypeController()
        
//        let transition: CATransition = CATransition()
//        transition.duration = 0.4
//        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
//        transition.type = kCATransitionFade
//        self.navigationController!.view.layer.add(transition, forKey: nil)
       
        svc.modalPresentationStyle = .custom
        svc.modalTransitionStyle = .crossDissolve
        self.present(svc, animated: true, completion: { _ in })
        
        
       // present(svc, animated: true, completion: nil)

}
}




