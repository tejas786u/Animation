//
//  ViewController.swift
//  Animation
//
//  Created by Tejas Patel on 04/06/20.
//  Copyright © 2020 Tejas Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtFirstNameCenterConstraint: NSLayoutConstraint!
    @IBOutlet weak var txtLastNameCenterConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var btnRegisterTrailingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnLoginLeadingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var containerViewTopConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var imgLogoBottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        txtFirstNameCenterConstraint.constant -= view.bounds.width
        txtLastNameCenterConstraint.constant -= view.bounds.width
        btnLoginLeadingConstraint.constant -= view.bounds.width
        btnRegisterTrailingConstraint.constant -= view.bounds.width
        containerViewTopConstraint.constant = 60
        imgLogoBottomConstraint.constant = 260
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        txtFirstNameCenterConstraint.constant = 0

        UIView.animate(withDuration: 0.5,
                       delay: 0.3,
                       options: [],
                       animations: { [weak self] in
                        self?.view.layoutIfNeeded()
          }, completion: nil)

        txtLastNameCenterConstraint.constant = 0

        UIView.animate(withDuration: 0.5,
                       delay: 0.4,
                       animations: { [weak self] in
                        self?.view.layoutIfNeeded()
          }, completion: nil)
        
        btnLoginLeadingConstraint.constant = 25
        UIView.animate(withDuration: 0.5,
                       delay: 0.6,
                       options: [.curveEaseOut],
                       animations: { [weak self] in
                        self?.view.layoutIfNeeded()
        }, completion: nil)
        
        
        btnRegisterTrailingConstraint.constant = 25
        UIView.animate(withDuration: 0.5,
                       delay: 0.6,
                       options: [.curveEaseOut],
                       animations: { [weak self] in
                        self?.view.layoutIfNeeded()
        }, completion: nil)
        
        containerViewTopConstraint.constant = self.view.center.y - 30
        UIView.animate(withDuration: 0.6,
                       delay: 0.9,
                       options: [.curveEaseOut],
                       animations: { [weak self] in
                        self!.btnLogin.layer.cornerRadius = self!.btnLogin.frame.height / 2
                        self!.btnRegister.layer.cornerRadius = self!.btnRegister.frame.height / 2
                        self?.containerView.backgroundColor = .systemTeal
                        self!.containerView.layer.cornerRadius = 10
                        self?.view.backgroundColor = UIColor.systemBlue
                        self?.view.layoutIfNeeded()
        }, completion: nil)
        
        imgLogoBottomConstraint.constant = self.view.center.x - (self.view.frame.height - 125)
        UIView.animate(withDuration: 0.6,
                       delay: 0.9,
                       options: [.curveEaseOut],
                       animations: { [weak self] in
                        self?.view.layoutIfNeeded()
        }, completion: nil)
    }


}

