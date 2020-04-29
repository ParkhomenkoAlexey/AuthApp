//
//  ProfileViewController.swift
//  AuthApp
//
//  Created by Алексей Пархоменко on 29.04.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var firstnameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
    
    var firstname: String?
    var lastname: String?
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstnameTextField.text = firstname
        lastnameTextField.text = lastname
        photoImageView.image = image
    }
    
    @IBAction func changeInfoTapped(_ sender: UIButton) {
//        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
    @IBAction func shareButtonTapped(_ sender: UIButton) {
        //        let shareController = UIActivityViewController(activityItems: ["Привет!", "Как дела?"], applicationActivities: nil)
        guard let image = photoImageView.image else { return }
        let shareController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("It is done!")
            }
        }
        
        shareController.popoverPresentationController?.sourceView = sender
        shareController.popoverPresentationController?.permittedArrowDirections = .any
        present(shareController, animated: true, completion: nil)
    }
}
