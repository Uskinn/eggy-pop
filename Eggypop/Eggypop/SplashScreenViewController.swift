//
//  SplashScreenViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/16/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class SplashScreenViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        header()
        logo()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = .white

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
      
            UIView.animate(withDuration: 0.8, delay: 0.5, options: [.curveEaseInOut], animations: {
                headerLabel.center.y -= 262
                appLogo.center.y += 262

            }, completion: nil
            )
        
        

        }
    
        }
    


    

    

