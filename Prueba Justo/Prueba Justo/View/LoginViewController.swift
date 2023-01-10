//
//  LoginViewController.swift
//  Prueba Justo
//
//  Created by Iran Carrillo on 09/01/23.
//

import UIKit
import MaterialOutlinedTextField

class LoginViewController: UIViewController {
    // MARK: - Variable declaration
    private var iconClickPass = true
    private let loginVM = LoginViewModel()
    private let defaults = UserDefaults.standard
    
    // MARK: - View declaration
    private let imageLogo: UIImageView = {
        let img = UIImageView(frame: .zero)
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    private let lblTitle: UILabel = {
        let lblTitle = UILabel()
        lblTitle.translatesAutoresizingMaskIntoConstraints = false
        lblTitle.textColor = .black
        lblTitle.font = UIFont.boldSystemFont(ofSize: 36.0)
        lblTitle.numberOfLines = 1
        
        return lblTitle
    }()
    
    private let txfEmail: MaterialOutlinedTextField = {
        let txfEmail = MaterialOutlinedTextField()
        txfEmail.translatesAutoresizingMaskIntoConstraints = false
        txfEmail.setColorModel(ColorModel(textColor: AppColors.login_green, floatingLabelColor: AppColors.login_green, normalLabelColor: AppColors.login_green, outlineColor: AppColors.login_green), for: .normal)
        txfEmail.setColorModel(ColorModel(textColor: AppColors.login_green, floatingLabelColor: AppColors.login_green, normalLabelColor: AppColors.login_green, outlineColor: AppColors.login_green), for: .editing)
        txfEmail.clearButtonMode = .whileEditing
        txfEmail.keyboardType = .emailAddress
        
        return txfEmail
    }()

    private let txfPassword: MaterialOutlinedTextField = {
        let txfPassword = MaterialOutlinedTextField()
        txfPassword.translatesAutoresizingMaskIntoConstraints = false
        txfPassword.setColorModel(ColorModel(textColor: AppColors.login_green, floatingLabelColor: AppColors.login_green, normalLabelColor: AppColors.login_green, outlineColor: AppColors.login_green), for: .normal)
        txfPassword.setColorModel(ColorModel(textColor: AppColors.login_green, floatingLabelColor: AppColors.login_green, normalLabelColor: AppColors.login_green, outlineColor: AppColors.login_green), for: .editing)
        txfPassword.keyboardType = .default
        txfPassword.isSecureTextEntry = true
        txfPassword.rightViewMode = .whileEditing
        
        return txfPassword
    }()
    
    private let lblPassAlert: UILabel = {
        let lblPassAlert = UILabel()
        lblPassAlert.translatesAutoresizingMaskIntoConstraints = false
        lblPassAlert.textColor = .red
        lblPassAlert.font = UIFont.systemFont(ofSize: 16.0)
        lblPassAlert.numberOfLines = 0
        lblPassAlert.isHidden = true
        
        return lblPassAlert
    }()
    
    private let btnLogin: ButtonPrimary = {
        let btnLogin = ButtonPrimary(frame: .zero)
        btnLogin.translatesAutoresizingMaskIntoConstraints = false
        
        return btnLogin
    }()
    
    private let imageIconPass: UIImageView = {
        let img = UIImageView(frame: .zero)
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.tintColor = AppColors.login_green
        
        return img
    }()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    // MARK: - Initializers
    internal func initUI() {
        initViews()
        initStrings()
        initConstraints()
        initListeners()
    }
    
    // MARK: - Add subviews
    internal func initViews() {
        view.addSubview(imageLogo)
        view.addSubview(lblTitle)
        view.addSubview(txfEmail)
        view.addSubview(txfPassword)
        view.addSubview(lblPassAlert)
        view.addSubview(btnLogin)
    }
    
    // MARK: - Add Strings
    internal func initStrings() {
        view.backgroundColor = .white
        imageLogo.image = UIImage(named: "logo_justo")
        let tndcAttrs1 = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 36.0), NSAttributedString.Key.foregroundColor : UIColor.black]
        let tndcAttrs2 = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 36.0), NSAttributedString.Key.foregroundColor : AppColors.login_green]
        
        let tndcString1 = NSMutableAttributedString(string: "Login to ", attributes: tndcAttrs1)
        let tndcString2 = NSMutableAttributedString(string: "Justo.mx", attributes: tndcAttrs2)
        
        tndcString1.append(tndcString2)
        lblTitle.attributedText = tndcString1
        txfEmail.label.text = "Email"
        txfPassword.label.text = "Contraseña"
        btnLogin.setButtonStyle("Login", .inactive)
        imageIconPass.image = UIImage(systemName: "eye.slash")
    }
    
    // MARK: - Add Constraints
    internal func initConstraints() {
        NSLayoutConstraint.activate([
            imageLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageLogo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageLogo.heightAnchor.constraint(equalToConstant: AppConstraints.padding200),
            
            lblTitle.centerXAnchor.constraint(equalTo: imageLogo.centerXAnchor),
            lblTitle.topAnchor.constraint(equalTo: imageLogo.bottomAnchor),
            
            txfEmail.centerXAnchor.constraint(equalTo: lblTitle.centerXAnchor),
            txfEmail.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: AppConstraints.padding36),
            txfEmail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding36),
            txfEmail.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -AppConstraints.padding36),
            
            txfPassword.centerXAnchor.constraint(equalTo: txfEmail.centerXAnchor),
            txfPassword.topAnchor.constraint(equalTo: txfEmail.bottomAnchor, constant: AppConstraints.padding36),
            txfPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding36),
            txfPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -AppConstraints.padding36),
            
            lblPassAlert.topAnchor.constraint(equalTo: txfPassword.bottomAnchor, constant: AppConstraints.padding8),
            lblPassAlert.leadingAnchor.constraint(equalTo: txfPassword.leadingAnchor),
            lblPassAlert.trailingAnchor.constraint(equalTo: txfPassword.trailingAnchor),
            
            btnLogin.topAnchor.constraint(equalTo: lblPassAlert.bottomAnchor, constant: AppConstraints.padding36),
            btnLogin.centerXAnchor.constraint(equalTo: txfPassword.centerXAnchor),
            btnLogin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding70),
            btnLogin.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -AppConstraints.padding70),
            btnLogin.heightAnchor.constraint(equalToConstant: AppConstraints.padding50)
        ])
    }
    
    // MARK: - Add Listeners
    internal func initListeners() {
        txfEmail.delegate = self
        txfPassword.delegate = self
        let tapGestureRecognizerPass = UITapGestureRecognizer(target: self, action: #selector(imageTappedPass(tapGestureRecognizer:)))
        imageIconPass.isUserInteractionEnabled = true
        imageIconPass.addGestureRecognizer(tapGestureRecognizerPass)
        btnLogin.addTarget(self, action: #selector(btnContinueAction), for: .touchUpInside)
        txfPassword.rightView = imageIconPass
    }
    
    // MARK: - Configure Views
    @objc func imageTappedPass(tapGestureRecognizer: UITapGestureRecognizer) {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        if iconClickPass {
            iconClickPass =  false
            tappedImage.image = UIImage(systemName: "eye")
            txfPassword.isSecureTextEntry = false
        } else {
            iconClickPass = true
            tappedImage.image = UIImage(systemName: "eye.slash")
            txfPassword.isSecureTextEntry = true
        }
    }
    
    @objc func btnContinueAction() {
        if validateEmail(enteredEmail: txfEmail.text ?? "") {
            lblPassAlert.isHidden = true
            login()
        } else {
            lblPassAlert.text = "Formato de email inválido"
            lblPassAlert.isHidden = false
        }
    }
    
    private func validateEmail(enteredEmail: String) -> Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        
        return emailPredicate.evaluate(with: enteredEmail)
    }
    
    private func login() {
        let loader = self.loader()
        if let email = self.txfEmail.text, let password = self.txfPassword.text{
            loginVM.fetchLogin(email, password) { response in
                if response {
                    DispatchQueue.main.async {
                        self.defaults.set(true, forKey: "LogIn")
                        let vc = ProfileViewController()
                        self.navigationController?.pushViewController(vc, animated: true)
                        self.stopLoader(loader: loader)
                    }
                } else {
                    DispatchQueue.main.async {
                        self.stopLoader(loader: loader)
                        self.lblPassAlert.text = "Email o contraseña incorrecta, intente de nuevo!"
                        self.lblPassAlert.isHidden = false
                    }
                }
            }
        }
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if txfEmail.text == "" || txfPassword.text == "" {
            btnLogin.changeButtonStyle(.inactive)
            lblPassAlert.isHidden = true
        } else {
            btnLogin.changeButtonStyle(.active)
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == txfEmail {
            lblPassAlert.isHidden = true
        }
    }
}
