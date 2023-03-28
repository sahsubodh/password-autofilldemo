//
//  ViewController.swift
//  LoginAutofill
//
//  Created by Subodh Sah on 3/28/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
//    override func viewWillDisappear(_ animated: Bool) {
//      super.viewWillDisappear(true)
//      view.endEditing(true)
////      usernameField.text = nil
////      passwordField.text = nil
//    }

    @IBAction func nextAction(_ sender: Any) {
//            let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//            let homeVC: HomeViewController = mainStoryboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
//
//            self.present(homeVC, animated: true)
        
        if let therootController = UIApplication.shared.keyWindow?.rootViewController {
            // If rootViewcontroller is navigationController then pop to root if any controllers has been pushed, dismiss if any controllers has been presented.
        }
        UIApplication.shared.keyWindow?.rootViewController = nil
        let rootStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let rootVC = rootStoryBoard.instantiateViewController(withIdentifier: "HomeViewController")
        rootVC.view.layoutIfNeeded()
        UIApplication.shared.keyWindow?.rootViewController = rootVC
        UIApplication.shared.keyWindow?.makeKeyAndVisible()
        
    }
}

