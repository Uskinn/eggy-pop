//
//  InformationViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/17/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit
import AVFoundation

var onSilent = Bool()

final class InformationViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    private let cellId = "cellId"
    let sound = Sound()
    let infoCell = InformationCell()
    private let switchKey = "switchKey"
    var isOnSilentmode = Bool()
    
    lazy var infoCollectionVIew: UICollectionView = {
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
        infoCollectionVIew.register(InformationCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let standartDefaults = UserDefaults.standard
        if (standartDefaults.string(forKey: switchKey) == "On") {
            onSilent = true
        } else if (standartDefaults.string(forKey: switchKey) == "Off") {
            onSilent = false
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("onSilentWillDisepear: \(onSilent)")
    }
    
    func switchToggled(sender: UISwitch) {
        let standartDefaults = UserDefaults.standard
        if sender.tag == 0 {
            if sender.isOn {
                standartDefaults.set("On", forKey: switchKey)
                onSilent = true
            } else if !sender.isOn {
                standartDefaults.set("Off", forKey: switchKey)
                onSilent = false
            }
        }
        standartDefaults.synchronize()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! InformationCell
        cell.soundSwitch.addTarget(self, action: #selector(switchToggled), for: .valueChanged)
        
        let standartDefaults = UserDefaults.standard
        if (standartDefaults.string(forKey: switchKey) == "On") {
            cell.soundSwitch.isOn = true
        } else if (standartDefaults.string(forKey: switchKey) == "Off") {
            cell.soundSwitch.isOn = false
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.infoCollectionVIew.frame.width, height: 1170)
    }
    
    func setupCV() {
        view.addSubview(dismissScrollViewButton)
        dismissScrollViewButton.addSubview(infoCollectionVIew)
        
        dismissScrollViewButton.addConstraintsWithFormat(format: "H:|-20-[v0]-20-|", views: infoCollectionVIew)
        dismissScrollViewButton.addConstraintsWithFormat(format: "V:|-70-[v0]-70-|", views: infoCollectionVIew)
        
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: dismissScrollViewButton)
        view.addConstraintsWithFormat(format: "V:|[v0]|", views: dismissScrollViewButton)
    }
    
    func dismissView() {
        dismiss(animated: true, completion: nil)
    }
}
