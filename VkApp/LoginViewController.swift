//
//  LoginViewController.swift
//  VkApp
//
//  Created by Константин Каменчуков on 31.05.2021.
//

import UIKit

class LoginViewController: UIViewController {
  
    @IBOutlet weak var loginText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBAction func loginButtonPressed(_ sender: Any) {
            
            let login = loginText.text!
            let password = passwordText.text!
            
            
            if login == "" && password == "" {
                print("успешная авторизация")
            } else {
                print("неуспешная авторизация")
            }
        }

    

        @objc func keyboardWasShown(notification: Notification) {
            
            let info = notification.userInfo! as NSDictionary
            let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
            let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
            
            self.scrollView?.contentInset = contentInsets
            scrollView?.scrollIndicatorInsets = contentInsets
        }
        
        @objc func keyboardWillBeHidden(notification: Notification) {
            let contentInsets = UIEdgeInsets.zero
            scrollView?.contentInset = contentInsets
        }
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           
           NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        
           NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
       }
    override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            
            NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        }
    @objc func hideKeyboard() {
            self.scrollView?.endEditing(true)
        }

    
    override func viewDidLoad() {
        super.viewDidLoad()
                let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
                scrollView?.addGestureRecognizer(hideKeyboardGesture)

        
    }
     override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        let checkResult = chechUserData()
        
        if !checkResult{
            showLoginError()
        }
        return checkResult
     }
    func chechUserData() -> Bool {
       guard let login = loginText.text,
             let password = passwordText.text else {
            return false
       }
        
        if login == "" && password == "" {
            return true
        } else {
            return false
        }
    }
    func showLoginError() {
        let alert = UIAlertController(title: "Ошибка", message: "Введен неправильно логин или пароль", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }


}
