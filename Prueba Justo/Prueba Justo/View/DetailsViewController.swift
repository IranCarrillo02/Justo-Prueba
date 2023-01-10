//
//  DetailsViewController.swift
//  Prueba Justo
//
//  Created by Desarrollo Ordenaris on 10/01/23.
//

import UIKit

class DetailsViewController: UIViewController {

    // MARK: - Variable declaration
    var strTitle: String = ""
    var strName: String = ""
    var strLastName: String = ""
    var strSecondLastName: String = ""
    var strGender: String = ""
    var strStreet: String = ""
    var strNumber: String = ""
    var strCity: String = ""
    var strState: String = ""
    var strCountry: String = ""
    var strZipCode: String = ""
    var strEmail: String = ""
    var strPhone: String = ""
    var strCell: String = ""
    var detailOptions: DetailOptions = .profile
    
    // MARK: - View declaration
    private let btnBack: UIButton = {
        let btnBack = UIButton(frame: .zero)
        btnBack.translatesAutoresizingMaskIntoConstraints = false
        btnBack.contentMode = .scaleAspectFit
        
        return btnBack
    }()
    
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
        lblTitle.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblTitle.numberOfLines = 0
        
        return lblTitle
    }()
    
    // MARK: - Info Personal Views
    private let lblName: UILabel = {
        let lblName = UILabel()
        lblName.translatesAutoresizingMaskIntoConstraints = false
        lblName.textColor = .black
        lblName.font = UIFont.boldSystemFont(ofSize: 24.0)
        
        return lblName
    }()
    
    private let lblLastName: UILabel = {
        let lblLastName = UILabel()
        lblLastName.translatesAutoresizingMaskIntoConstraints = false
        lblLastName.textColor = .black
        lblLastName.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblLastName.numberOfLines = 0
        
        return lblLastName
    }()
    
    private let lblSecondLasName: UILabel = {
        let lblSecondLasName = UILabel()
        lblSecondLasName.translatesAutoresizingMaskIntoConstraints = false
        lblSecondLasName.textColor = .black
        lblSecondLasName.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblSecondLasName.numberOfLines = 0
        
        return lblSecondLasName
    }()
    
    private let lblGender: UILabel = {
        let lblGender = UILabel()
        lblGender.translatesAutoresizingMaskIntoConstraints = false
        lblGender.textColor = .black
        lblGender.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblGender.numberOfLines = 0
        
        return lblGender
    }()
    
    private let lblNameVariable: UILabel = {
        let lblName = UILabel()
        lblName.translatesAutoresizingMaskIntoConstraints = false
        lblName.textColor = AppColors.login_green
        lblName.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblName.adjustsFontSizeToFitWidth = true
        
        return lblName
    }()
    
    private let lblLastNameVariable: UILabel = {
        let lblLastName = UILabel()
        lblLastName.translatesAutoresizingMaskIntoConstraints = false
        lblLastName.textColor = AppColors.login_green
        lblLastName.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblLastName.adjustsFontSizeToFitWidth = true
        
        return lblLastName
    }()
    
    private let lblSecondLasNameVariable: UILabel = {
        let lblSecondLasName = UILabel()
        lblSecondLasName.translatesAutoresizingMaskIntoConstraints = false
        lblSecondLasName.textColor = AppColors.login_green
        lblSecondLasName.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblSecondLasName.adjustsFontSizeToFitWidth = true
        
        return lblSecondLasName
    }()
    
    private let lblGenderVariable: UILabel = {
        let lblGender = UILabel()
        lblGender.translatesAutoresizingMaskIntoConstraints = false
        lblGender.textColor = AppColors.login_green
        lblGender.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblGender.adjustsFontSizeToFitWidth = true
        
        return lblGender
    }()
    
    // MARK: - Location Views
    private let lblStreet: UILabel = {
        let lblStreet = UILabel()
        lblStreet.translatesAutoresizingMaskIntoConstraints = false
        lblStreet.textColor = .black
        lblStreet.font = UIFont.boldSystemFont(ofSize: 24.0)
        
        return lblStreet
    }()
    
    private let lblNumber: UILabel = {
        let lblNumber = UILabel()
        lblNumber.translatesAutoresizingMaskIntoConstraints = false
        lblNumber.textColor = .black
        lblNumber.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblNumber.numberOfLines = 0
        
        return lblNumber
    }()
    
    private let lblCity: UILabel = {
        let lblCity = UILabel()
        lblCity.translatesAutoresizingMaskIntoConstraints = false
        lblCity.textColor = .black
        lblCity.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblCity.numberOfLines = 0
        
        return lblCity
    }()
    
    private let lblState: UILabel = {
        let lblState = UILabel()
        lblState.translatesAutoresizingMaskIntoConstraints = false
        lblState.textColor = .black
        lblState.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblState.numberOfLines = 0
        
        return lblState
    }()
    
    private let lblCountry: UILabel = {
        let lblCountry = UILabel()
        lblCountry.translatesAutoresizingMaskIntoConstraints = false
        lblCountry.textColor = .black
        lblCountry.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblCountry.numberOfLines = 0
        
        return lblCountry
    }()
    
    private let lblZipCode: UILabel = {
        let lblZipCode = UILabel()
        lblZipCode.translatesAutoresizingMaskIntoConstraints = false
        lblZipCode.textColor = .black
        lblZipCode.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblZipCode.adjustsFontSizeToFitWidth = true
        
        return lblZipCode
    }()
    
    private let lblStreetVariable: UILabel = {
        let lblStreet = UILabel()
        lblStreet.translatesAutoresizingMaskIntoConstraints = false
        lblStreet.textColor = AppColors.login_green
        lblStreet.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblStreet.adjustsFontSizeToFitWidth = true
        
        return lblStreet
    }()
    
    private let lblNumberVariable: UILabel = {
        let lblNumber = UILabel()
        lblNumber.translatesAutoresizingMaskIntoConstraints = false
        lblNumber.textColor = AppColors.login_green
        lblNumber.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblNumber.adjustsFontSizeToFitWidth = true
        
        return lblNumber
    }()
    
    private let lblCityVariable: UILabel = {
        let lblCity = UILabel()
        lblCity.translatesAutoresizingMaskIntoConstraints = false
        lblCity.textColor = AppColors.login_green
        lblCity.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblCity.adjustsFontSizeToFitWidth = true
        
        return lblCity
    }()
    
    private let lblStateVariable: UILabel = {
        let lblState = UILabel()
        lblState.translatesAutoresizingMaskIntoConstraints = false
        lblState.textColor = AppColors.login_green
        lblState.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblState.adjustsFontSizeToFitWidth = true
        
        return lblState
    }()
    
    private let lblCountryVariable: UILabel = {
        let lblCountry = UILabel()
        lblCountry.translatesAutoresizingMaskIntoConstraints = false
        lblCountry.textColor = AppColors.login_green
        lblCountry.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblCountry.adjustsFontSizeToFitWidth = true
        
        return lblCountry
    }()
    
    private let lblZipCodeVariable: UILabel = {
        let lblZipCode = UILabel()
        lblZipCode.translatesAutoresizingMaskIntoConstraints = false
        lblZipCode.textColor = AppColors.login_green
        lblZipCode.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblZipCode.adjustsFontSizeToFitWidth = true
        
        return lblZipCode
    }()

    // MARK: - Aditional Info Views
    private let lblEmail: UILabel = {
        let lblEmail = UILabel()
        lblEmail.translatesAutoresizingMaskIntoConstraints = false
        lblEmail.textColor = .black
        lblEmail.font = UIFont.boldSystemFont(ofSize: 24.0)
        
        return lblEmail
    }()
    
    private let lblPhone: UILabel = {
        let lblPhone = UILabel()
        lblPhone.translatesAutoresizingMaskIntoConstraints = false
        lblPhone.textColor = .black
        lblPhone.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblPhone.numberOfLines = 0
        
        return lblPhone
    }()
    
    private let lblCell: UILabel = {
        let lblCell = UILabel()
        lblCell.translatesAutoresizingMaskIntoConstraints = false
        lblCell.textColor = .black
        lblCell.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblCell.numberOfLines = 0
        
        return lblCell
    }()
    
    private let lblEmailVariable: UILabel = {
        let lblEmail = UILabel()
        lblEmail.translatesAutoresizingMaskIntoConstraints = false
        lblEmail.textColor = AppColors.login_green
        lblEmail.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblEmail.adjustsFontSizeToFitWidth = true
        
        return lblEmail
    }()
    
    private let lblPhoneVariable: UILabel = {
        let lblPhone = UILabel()
        lblPhone.translatesAutoresizingMaskIntoConstraints = false
        lblPhone.textColor = AppColors.login_green
        lblPhone.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblPhone.adjustsFontSizeToFitWidth = true
        
        return lblPhone
    }()
    
    private let lblCellVariable: UILabel = {
        let lblCell = UILabel()
        lblCell.translatesAutoresizingMaskIntoConstraints = false
        lblCell.textColor = AppColors.login_green
        lblCell.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblCell.adjustsFontSizeToFitWidth = true
        
        return lblCell
    }()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    // MARK: - Initializers
    internal func initUI() {
        view.backgroundColor = AppColors.profile_background
        initViews()
        initConstraints()
        initStrings()
        switch detailOptions {
        case .profile:
            initViewsP()
            initConstraintsP()
        case .location:
            initViewsL()
            initConstraintsL()
        case .aditional:
            initViewsA()
            initConstraintsA()
        }
        initListeners()
    }
    
    // MARK: - Add subviews
    internal func initViews() {
        view.addSubview(btnBack)
        view.addSubview(imageLogo)
        view.addSubview(lblTitle)
    }
    
    internal func initViewsP() {
        view.addSubview(lblName)
        view.addSubview(lblNameVariable)
        view.addSubview(lblLastName)
        view.addSubview(lblLastNameVariable)
        view.addSubview(lblSecondLasName)
        view.addSubview(lblSecondLasNameVariable)
        view.addSubview(lblGender)
        view.addSubview(lblGenderVariable)
    }
    
    internal func initViewsL() {
        view.addSubview(lblStreet)
        view.addSubview(lblStreetVariable)
        view.addSubview(lblNumber)
        view.addSubview(lblNumberVariable)
        view.addSubview(lblCity)
        view.addSubview(lblCityVariable)
        view.addSubview(lblState)
        view.addSubview(lblStateVariable)
        view.addSubview(lblCountry)
        view.addSubview(lblCountryVariable)
        view.addSubview(lblZipCode)
        view.addSubview(lblZipCodeVariable)
    }
    
    internal func initViewsA() {
        view.addSubview(lblEmail)
        view.addSubview(lblEmailVariable)
        view.addSubview(lblPhone)
        view.addSubview(lblPhoneVariable)
        view.addSubview(lblCell)
        view.addSubview(lblCellVariable)
    }
    
    // MARK: - Add Strings
    internal func initStrings() {
        btnBack.setImage(UIImage(named: "back-button"), for: .normal)
        imageLogo.image = UIImage(named: "logo_justo")
        lblTitle.text = strTitle
        lblName.text = "Titulo: "
        lblNameVariable.text = strName
        lblLastName.text = "Nombre: "
        lblLastNameVariable.text = strLastName
        lblSecondLasName.text = "Apellido Paterno: "
        lblSecondLasNameVariable.text = strSecondLastName
        lblGender.text = "Género: "
        lblGenderVariable.text = strGender
        lblStreet.text = "Calle: "
        lblStreetVariable.text = strStreet
        lblNumber.text = "Número: "
        lblNumberVariable.text = strNumber
        lblCity.text = "Ciudad: "
        lblCityVariable.text = strCity
        lblState.text = "Estado: "
        lblStateVariable.text = strState
        lblCountry.text = "País: "
        lblCountryVariable.text = strCountry
        lblZipCode.text = "Código Postal: "
        lblZipCodeVariable.text = strZipCode
        lblEmail.text = "Email: "
        lblEmailVariable.text = strEmail
        lblPhone.text = "Teléfono: "
        lblPhoneVariable.text = strPhone
        lblCell.text = "Teléfono Celular: "
        lblCellVariable.text = strCell
    }
    
    // MARK: - Add Constraints
    internal func initConstraints() {
        NSLayoutConstraint.activate([
            btnBack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: AppConstraints.padding24),
            btnBack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding24),
            
            imageLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageLogo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageLogo.heightAnchor.constraint(equalToConstant: AppConstraints.padding80),
            
            lblTitle.centerXAnchor.constraint(equalTo: imageLogo.centerXAnchor),
            lblTitle.topAnchor.constraint(equalTo: imageLogo.bottomAnchor, constant: AppConstraints.padding16)
        ])
    }
    
    internal func initConstraintsP() {
        NSLayoutConstraint.activate([
            lblName.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: AppConstraints.padding36),
            lblName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding24),
            
            lblNameVariable.centerYAnchor.constraint(equalTo: lblName.centerYAnchor),
            lblNameVariable.leadingAnchor.constraint(equalTo: lblName.trailingAnchor, constant: AppConstraints.padding24),
            lblNameVariable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -AppConstraints.padding24),
            
            lblLastName.topAnchor.constraint(equalTo: lblName.bottomAnchor, constant: AppConstraints.padding16),
            lblLastName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding24),
            
            lblLastNameVariable.centerYAnchor.constraint(equalTo: lblLastName.centerYAnchor),
            lblLastNameVariable.leadingAnchor.constraint(equalTo: lblLastName.trailingAnchor, constant: AppConstraints.padding24),
            lblLastNameVariable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -AppConstraints.padding24),
            
            lblSecondLasName.topAnchor.constraint(equalTo: lblLastName.bottomAnchor, constant: AppConstraints.padding16),
            lblSecondLasName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding24),
            
            lblSecondLasNameVariable.centerYAnchor.constraint(equalTo: lblSecondLasName.centerYAnchor),
            lblSecondLasNameVariable.leadingAnchor.constraint(equalTo: lblSecondLasName.trailingAnchor, constant: AppConstraints.padding24),
            lblSecondLasNameVariable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -AppConstraints.padding24),
            
            lblGender.topAnchor.constraint(equalTo: lblSecondLasName.bottomAnchor, constant: AppConstraints.padding16),
            lblGender.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding24),
            
            lblGenderVariable.centerYAnchor.constraint(equalTo: lblGender.centerYAnchor),
            lblGenderVariable.leadingAnchor.constraint(equalTo: lblGender.trailingAnchor, constant: AppConstraints.padding24),
            lblGenderVariable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -AppConstraints.padding24)
        ])
    }
    
    internal func initConstraintsL() {
        NSLayoutConstraint.activate([
            lblStreet.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: AppConstraints.padding36),
            lblStreet.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding24),
            
            lblStreetVariable.centerYAnchor.constraint(equalTo: lblStreet.centerYAnchor),
            lblStreetVariable.leadingAnchor.constraint(equalTo: lblStreet.trailingAnchor, constant: AppConstraints.padding24),
            lblStreetVariable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -AppConstraints.padding24),
            
            lblNumber.topAnchor.constraint(equalTo: lblStreet.bottomAnchor, constant: AppConstraints.padding16),
            lblNumber.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding24),
            
            lblNumberVariable.centerYAnchor.constraint(equalTo: lblNumber.centerYAnchor),
            lblNumberVariable.leadingAnchor.constraint(equalTo: lblNumber.trailingAnchor, constant: AppConstraints.padding24),
            lblNumberVariable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -AppConstraints.padding24),
            
            lblCity.topAnchor.constraint(equalTo: lblNumber.bottomAnchor, constant: AppConstraints.padding16),
            lblCity.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding24),
            
            lblCityVariable.centerYAnchor.constraint(equalTo: lblCity.centerYAnchor),
            lblCityVariable.leadingAnchor.constraint(equalTo: lblCity.trailingAnchor, constant: AppConstraints.padding24),
            lblCityVariable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -AppConstraints.padding24),
            
            lblState.topAnchor.constraint(equalTo: lblCity.bottomAnchor, constant: AppConstraints.padding16),
            lblState.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding24),
            
            lblStateVariable.centerYAnchor.constraint(equalTo: lblState.centerYAnchor),
            lblStateVariable.leadingAnchor.constraint(equalTo: lblState.trailingAnchor, constant: AppConstraints.padding24),
            lblStateVariable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -AppConstraints.padding24),
            
            lblCountry.topAnchor.constraint(equalTo: lblState.bottomAnchor, constant: AppConstraints.padding16),
            lblCountry.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding24),
            
            lblCountryVariable.centerYAnchor.constraint(equalTo: lblCountry.centerYAnchor),
            lblCountryVariable.leadingAnchor.constraint(equalTo: lblCountry.trailingAnchor, constant: AppConstraints.padding24),
            lblCountryVariable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -AppConstraints.padding24),
            
            lblZipCode.topAnchor.constraint(equalTo: lblCountry.bottomAnchor, constant: AppConstraints.padding16),
            lblZipCode.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding24),
            
            lblZipCodeVariable.centerYAnchor.constraint(equalTo: lblZipCode.centerYAnchor),
            lblZipCodeVariable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -AppConstraints.padding24)
        ])
    }
    
    internal func initConstraintsA() {
        NSLayoutConstraint.activate([
            lblEmail.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: AppConstraints.padding36),
            lblEmail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding24),
            
            lblEmailVariable.centerYAnchor.constraint(equalTo: lblEmail.centerYAnchor),
            lblEmailVariable.leadingAnchor.constraint(equalTo: lblEmail.trailingAnchor, constant: AppConstraints.padding24),
            lblEmailVariable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -AppConstraints.padding24),
            
            lblPhone.topAnchor.constraint(equalTo: lblEmail.bottomAnchor, constant: AppConstraints.padding16),
            lblPhone.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding24),
            
            lblPhoneVariable.centerYAnchor.constraint(equalTo: lblPhone.centerYAnchor),
            lblPhoneVariable.leadingAnchor.constraint(equalTo: lblPhone.trailingAnchor, constant: AppConstraints.padding24),
            lblPhoneVariable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -AppConstraints.padding24),
            
            lblCell.topAnchor.constraint(equalTo: lblPhone.bottomAnchor, constant: AppConstraints.padding16),
            lblCell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: AppConstraints.padding24),
            
            lblCellVariable.centerYAnchor.constraint(equalTo: lblCell.centerYAnchor),
            lblCellVariable.leadingAnchor.constraint(equalTo: lblCell.trailingAnchor, constant: AppConstraints.padding24),
            lblCellVariable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -AppConstraints.padding24)
        ])
    }
    
    // MARK: - Add Listeners
    internal func initListeners() {
        btnBack.addTarget(self, action: #selector(btnBackAction), for: .touchUpInside)
    }
    
    // MARK: - Configure Views
    @objc private func btnBackAction() {
        self.navigationController?.popViewController(animated: true)
    }
}
