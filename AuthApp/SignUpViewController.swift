//
//  SignUpViewController.swift
//  AuthApp
//
//  Created by Алексей Пархоменко on 29.04.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    var someProperty: String? {
        didSet {
            print("someProperty")
        }
    }
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField! {
        didSet {
            print("passwordTextField")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print(#function)
    }
    
//    override func loadView() {
//        print(#function)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print(#function)
    }
    
    override func viewWillLayoutSubviews() {
        print(#function)
    }
    
    override func updateViewConstraints() {
        // Изменение значений констант констрейнтов
        super.updateViewConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        // сработает как в viewDidLoad(), так и в viewDidLayoutSubviews(), потому что view подгружается из IB
//        photoImageView.layer.cornerRadius = photoImageView.frame.width / 2
        print(#function)
        // сохраняем положение scrollView
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }
    
    deinit {
        print("deinit")
    }
    
    @IBAction func photoButtonTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
    }
}
