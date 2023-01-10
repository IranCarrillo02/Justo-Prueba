//
//  ProfileViewController.swift
//  Prueba Justo
//
//  Created by Iran Carrillo on 09/01/23.
//

import UIKit
import SDWebImage

class ProfileViewController: UIViewController {
        
    // MARK: - Variable declaration
    let profileVM = ProfileViewModel()
    private let defaults = UserDefaults.standard
    
    // MARK: - View declaration
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = false
        
        return scrollView
    }()
    
    private let imageProfile: UIImageView = {
        let imageProfile = UIImageView(frame: CGRect(x: 0, y: 0, width: 100.0, height: 100.0))
        imageProfile.translatesAutoresizingMaskIntoConstraints = false
        imageProfile.contentMode = .scaleAspectFit
        imageProfile.layer.cornerRadius = min(imageProfile.frame.size.width, imageProfile.frame.size.height) / 4
        imageProfile.clipsToBounds = true
        
        return imageProfile
    }()
    
    private let lblName: UILabel = {
        let lblName = UILabel()
        lblName.translatesAutoresizingMaskIntoConstraints = false
        lblName.textColor = .black
        lblName.font = UIFont.boldSystemFont(ofSize: 32.0)
        lblName.numberOfLines = 1
        
        return lblName
    }()
    
    private let vProfile: UIStackView = {
        let vProfile = UIStackView(frame: .zero)
        vProfile.translatesAutoresizingMaskIntoConstraints = false
        vProfile.backgroundColor = .white
        vProfile.layer.cornerRadius = 15
        vProfile.axis = .vertical
        vProfile.distribution = .fillProportionally
        vProfile.spacing = 1.0
        
        return vProfile
    }()
    
    private let vPersonalInfoProfile: UIView = {
        let vPersonalInfoProfile = UIView(frame: .zero)
        vPersonalInfoProfile.translatesAutoresizingMaskIntoConstraints = false
        vPersonalInfoProfile.backgroundColor = .white
        vPersonalInfoProfile.layer.cornerRadius = 15
        vPersonalInfoProfile.layer.borderWidth = 1
        vPersonalInfoProfile.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        vPersonalInfoProfile.layer.masksToBounds = false
        vPersonalInfoProfile.layer.borderColor = AppColors.profile_border.cgColor
        
        return vPersonalInfoProfile
    }()
    
    private let imageIconProfile: UIImageView = {
        let imageIconProfile = UIImageView(frame: .zero)
        imageIconProfile.translatesAutoresizingMaskIntoConstraints = false
        imageIconProfile.contentMode = .scaleAspectFit
        
        return imageIconProfile
    }()
    
    private let lblPersonalInfo: UILabel = {
        let lblPersonalInfo = UILabel()
        lblPersonalInfo.translatesAutoresizingMaskIntoConstraints = false
        lblPersonalInfo.textColor = .black
        lblPersonalInfo.font = UIFont.boldSystemFont(ofSize: 16.0)
        lblPersonalInfo.numberOfLines = 1
        
        return lblPersonalInfo
    }()
    
    private let lblPersonalInfoSub: UILabel = {
        let lblPersonalInfoSub = UILabel()
        lblPersonalInfoSub.translatesAutoresizingMaskIntoConstraints = false
        lblPersonalInfoSub.textColor = .lightGray
        lblPersonalInfoSub.font = UIFont.boldSystemFont(ofSize: 12.0)
        lblPersonalInfoSub.numberOfLines = 1
        
        return lblPersonalInfoSub
    }()
    
    private let vLocationInfoProfile: UIView = {
        let vLocationInfoProfile = UIView(frame: .zero)
        vLocationInfoProfile.translatesAutoresizingMaskIntoConstraints = false
        vLocationInfoProfile.backgroundColor = .white
        vLocationInfoProfile.layer.borderWidth = 1
        vLocationInfoProfile.layer.borderColor = AppColors.profile_border.cgColor
        
        return vLocationInfoProfile
    }()
    
    private let imageIconLocation: UIImageView = {
        let imageIconLocation = UIImageView(frame: .zero)
        imageIconLocation.translatesAutoresizingMaskIntoConstraints = false
        imageIconLocation.contentMode = .scaleAspectFit
        
        return imageIconLocation
    }()
    
    private let lblLocation: UILabel = {
        let lblLocation = UILabel()
        lblLocation.translatesAutoresizingMaskIntoConstraints = false
        lblLocation.textColor = .black
        lblLocation.font = UIFont.boldSystemFont(ofSize: 16.0)
        lblLocation.numberOfLines = 1
        
        return lblLocation
    }()
    
    private let lblLocationSub: UILabel = {
        let lblLocationSub = UILabel()
        lblLocationSub.translatesAutoresizingMaskIntoConstraints = false
        lblLocationSub.textColor = .lightGray
        lblLocationSub.font = UIFont.boldSystemFont(ofSize: 12.0)
        lblLocationSub.numberOfLines = 1
        
        return lblLocationSub
    }()
    
    private let vAditionalInfoProfile: UIView = {
        let vAditionalInfoProfile = UIView(frame: .zero)
        vAditionalInfoProfile.translatesAutoresizingMaskIntoConstraints = false
        vAditionalInfoProfile.backgroundColor = .white
        vAditionalInfoProfile.layer.cornerRadius = 15
        vAditionalInfoProfile.layer.borderWidth = 1
        vAditionalInfoProfile.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        vAditionalInfoProfile.layer.masksToBounds = false
        vAditionalInfoProfile.layer.borderColor = AppColors.profile_border.cgColor
        
        return vAditionalInfoProfile
    }()
    
    private let imageIconAditionalInfo: UIImageView = {
        let imageIconAditionalInfo = UIImageView(frame: .zero)
        imageIconAditionalInfo.translatesAutoresizingMaskIntoConstraints = false
        imageIconAditionalInfo.contentMode = .scaleAspectFit
        
        return imageIconAditionalInfo
    }()
    
    private let lblAditionalInfo: UILabel = {
        let lblAditionalInfo = UILabel()
        lblAditionalInfo.translatesAutoresizingMaskIntoConstraints = false
        lblAditionalInfo.textColor = .black
        lblAditionalInfo.font = UIFont.boldSystemFont(ofSize: 16.0)
        lblAditionalInfo.numberOfLines = 1
        
        return lblAditionalInfo
    }()
    
    private let lblAditionalInfoSub: UILabel = {
        let lblAditionalInfoSub = UILabel()
        lblAditionalInfoSub.translatesAutoresizingMaskIntoConstraints = false
        lblAditionalInfoSub.textColor = .lightGray
        lblAditionalInfoSub.font = UIFont.boldSystemFont(ofSize: 12.0)
        lblAditionalInfoSub.numberOfLines = 1
        
        return lblAditionalInfoSub
    }()
    
    private let imageArrowP: UIImageView = {
        let imageArrow = UIImageView(frame: .zero)
        imageArrow.translatesAutoresizingMaskIntoConstraints = false
        imageArrow.contentMode = .scaleAspectFit
        
        return imageArrow
    }()
    
    private let imageArrowI: UIImageView = {
        let imageArrow = UIImageView(frame: .zero)
        imageArrow.translatesAutoresizingMaskIntoConstraints = false
        imageArrow.contentMode = .scaleAspectFit
        
        return imageArrow
    }()
    
    private let imageArrowA: UIImageView = {
        let imageArrow = UIImageView(frame: .zero)
        imageArrow.translatesAutoresizingMaskIntoConstraints = false
        imageArrow.contentMode = .scaleAspectFit
        
        return imageArrow
    }()
    
    private let vNext: UIView = {
        let vNext = UIView(frame: .zero)
        vNext.translatesAutoresizingMaskIntoConstraints = false
        vNext.backgroundColor = .white
        vNext.layer.cornerRadius = 15
        vNext.layer.borderWidth = 1
        vNext.layer.borderColor = AppColors.profile_border.cgColor
        
        return vNext
    }()
    
    private let btnLogout: ButtonPrimary = {
        let btnLogout = ButtonPrimary(frame: .zero)
        btnLogout.translatesAutoresizingMaskIntoConstraints = false
        
        return btnLogout
    }()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        loadPopularDataProfile()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let tapGestureP = UITapGestureRecognizer(target: self, action: #selector(openPersonalInfo))
        vPersonalInfoProfile.addGestureRecognizer(tapGestureP)
        let tapGestureL = UITapGestureRecognizer(target: self, action: #selector(openLocationInfo))
        vLocationInfoProfile.addGestureRecognizer(tapGestureL)
        let tapGestureA = UITapGestureRecognizer(target: self, action: #selector(openAditionalInfo))
        vAditionalInfoProfile.addGestureRecognizer(tapGestureA)
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
        view.addSubview(scrollView)
        view.addSubview(vNext)
        scrollView.addSubview(imageProfile)
        scrollView.addSubview(lblName)
        scrollView.addSubview(vProfile)
        vProfile.addArrangedSubview(vPersonalInfoProfile)
        vProfile.addArrangedSubview(vLocationInfoProfile)
        vProfile.addArrangedSubview(vAditionalInfoProfile)
        vPersonalInfoProfile.addSubview(imageIconProfile)
        vPersonalInfoProfile.addSubview(lblPersonalInfo)
        vPersonalInfoProfile.addSubview(lblPersonalInfoSub)
        vPersonalInfoProfile.addSubview(imageArrowP)
        vLocationInfoProfile.addSubview(imageIconLocation)
        vLocationInfoProfile.addSubview(lblLocation)
        vLocationInfoProfile.addSubview(lblLocationSub)
        vLocationInfoProfile.addSubview(imageArrowI)
        vAditionalInfoProfile.addSubview(imageIconAditionalInfo)
        vAditionalInfoProfile.addSubview(lblAditionalInfo)
        vAditionalInfoProfile.addSubview(lblAditionalInfoSub)
        vAditionalInfoProfile.addSubview(imageArrowA)
        vNext.addSubview(btnLogout)
    }
    
    // MARK: - Add Strings
    internal func initStrings() {
        view.backgroundColor = AppColors.profile_background
        imageIconProfile.image = UIImage(named: "profile")
        imageIconLocation.image = UIImage(named: "location")
        imageIconAditionalInfo.image = UIImage(named: "info")
        imageArrowP.image = UIImage(named: "arrow")
        imageArrowI.image = UIImage(named: "arrow")
        imageArrowA.image = UIImage(named: "arrow")
        lblPersonalInfo.text = "Profile details"
        lblLocation.text = "Location"
        lblAditionalInfo.text = "Aditional information"
        lblPersonalInfoSub.text = "Name, Género"
        lblLocationSub.text = "País, Ciudad"
        lblAditionalInfoSub.text = "Teléfono, Email"
        btnLogout.setButtonStyle("Log Out", .close)
    }
    
    // MARK: - Add Constraints
    internal func initConstraints() {
        NSLayoutConstraint.activate([
            scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: vNext.topAnchor),
            
            imageProfile.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            imageProfile.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: AppConstraints.padding36),
            
            lblName.centerXAnchor.constraint(equalTo: imageProfile.centerXAnchor),
            lblName.topAnchor.constraint(equalTo: imageProfile.bottomAnchor, constant: AppConstraints.padding16),
            
            vProfile.centerXAnchor.constraint(equalTo: lblName.centerXAnchor),
            vProfile.topAnchor.constraint(equalTo: lblName.bottomAnchor, constant: AppConstraints.padding36),
            vProfile.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: AppConstraints.padding24),
            vProfile.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -AppConstraints.padding24),
            vProfile.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -AppConstraints.padding16),
            vProfile.heightAnchor.constraint(equalToConstant: AppConstraints.padding270),
            
            imageIconProfile.centerYAnchor.constraint(equalTo: vPersonalInfoProfile.centerYAnchor),
            imageIconProfile.leadingAnchor.constraint(equalTo: vPersonalInfoProfile.leadingAnchor, constant: AppConstraints.padding24),
            
            lblPersonalInfo.topAnchor.constraint(equalTo: imageIconProfile.topAnchor),
            lblPersonalInfo.leadingAnchor.constraint(equalTo: imageIconProfile.trailingAnchor, constant: AppConstraints.padding24),
            
            lblPersonalInfoSub.bottomAnchor.constraint(equalTo: imageIconProfile.bottomAnchor),
            lblPersonalInfoSub.leadingAnchor.constraint(equalTo: imageIconProfile.trailingAnchor, constant: AppConstraints.padding24),
            
            imageArrowP.centerYAnchor.constraint(equalTo: vPersonalInfoProfile.centerYAnchor),
            imageArrowP.trailingAnchor.constraint(equalTo: vPersonalInfoProfile.trailingAnchor, constant: -AppConstraints.padding24),
            
            imageIconLocation.centerYAnchor.constraint(equalTo: vLocationInfoProfile.centerYAnchor),
            imageIconLocation.leadingAnchor.constraint(equalTo: vLocationInfoProfile.leadingAnchor, constant: AppConstraints.padding24),
            
            lblLocation.topAnchor.constraint(equalTo: imageIconLocation.topAnchor),
            lblLocation.leadingAnchor.constraint(equalTo: imageIconLocation.trailingAnchor, constant: AppConstraints.padding24),

            lblLocationSub.bottomAnchor.constraint(equalTo: imageIconLocation.bottomAnchor),
            lblLocationSub.leadingAnchor.constraint(equalTo: imageIconLocation.trailingAnchor, constant: AppConstraints.padding24),

            imageArrowI.centerYAnchor.constraint(equalTo: vLocationInfoProfile.centerYAnchor),
            imageArrowI.trailingAnchor.constraint(equalTo: vLocationInfoProfile.trailingAnchor, constant: -AppConstraints.padding24),

            imageIconAditionalInfo.centerYAnchor.constraint(equalTo: vAditionalInfoProfile.centerYAnchor),
            imageIconAditionalInfo.leadingAnchor.constraint(equalTo: vAditionalInfoProfile.leadingAnchor, constant: AppConstraints.padding24),

            lblAditionalInfo.topAnchor.constraint(equalTo: imageIconAditionalInfo.topAnchor),
            lblAditionalInfo.leadingAnchor.constraint(equalTo: imageIconAditionalInfo.trailingAnchor, constant: AppConstraints.padding24),

            lblAditionalInfoSub.bottomAnchor.constraint(equalTo: imageIconAditionalInfo.bottomAnchor),
            lblAditionalInfoSub.leadingAnchor.constraint(equalTo: imageIconAditionalInfo.trailingAnchor, constant: AppConstraints.padding24),

            imageArrowA.centerYAnchor.constraint(equalTo: vAditionalInfoProfile.centerYAnchor),
            imageArrowA.trailingAnchor.constraint(equalTo: vAditionalInfoProfile.trailingAnchor, constant: -AppConstraints.padding24),

            vNext.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            vNext.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            vNext.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            vNext.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            vNext.heightAnchor.constraint(equalToConstant: AppConstraints.padding160),
            
            btnLogout.centerYAnchor.constraint(equalTo: vNext.centerYAnchor),
            btnLogout.centerXAnchor.constraint(equalTo: vNext.centerXAnchor),
            btnLogout.leadingAnchor.constraint(equalTo: vNext.leadingAnchor, constant: AppConstraints.padding36),
            btnLogout.trailingAnchor.constraint(equalTo: vNext.trailingAnchor, constant: -AppConstraints.padding36),
            btnLogout.heightAnchor.constraint(equalToConstant: AppConstraints.padding50)
        ])
    }
    
    // MARK: - Add Listeners
    internal func initListeners() {
        btnLogout.addTarget(self, action: #selector(btnLogoutAction), for: .touchUpInside)
    }
    
    // MARK: - Configure Views
    private func loadPopularDataProfile() {
        let loader = self.loader()
        profileVM.fetchProfile { response in
            if response {
                self.stopLoader(loader: loader)
                self.lblName.text = "\(self.profileVM.profileModel.results[0].name.title) \(self.profileVM.profileModel.results[0].name.first)"
                self.imageProfile.sd_setImage(with: URL(string: self.profileVM.profileModel.results[0].picture.large))
            } else {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    self.stopLoader(loader: loader)
                    let alert = UIAlertController(title: "Error de conexion", message: "Hubo un problema al conectar con los servicios, intente más tarde.", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Reintentar", style: .default, handler: { action in
                        self.defaults.set(false, forKey: "LogIn")
                        if let view = self.navigationController?.viewControllers.filter({ $0 is LoginViewController}).first {
                            self.navigationController?.popToViewController(view, animated: true)
                        } else {
                            let view = LoginViewController()
                            self.navigationController?.pushViewController(view, animated: true)
                        }
                    }))
                    self.present(alert, animated: false, completion: nil)
                }
            }
        }
    }
    
    @objc private func btnLogoutAction() {
        self.defaults.set(false, forKey: "LogIn")
        if let view = self.navigationController?.viewControllers.filter({ $0 is LoginViewController}).first {
            self.navigationController?.popToViewController(view, animated: true)
        } else {
            let view = LoginViewController()
            self.navigationController?.pushViewController(view, animated: true)
        }
    }
    
    @objc private func openPersonalInfo() {
        let vc = DetailsViewController()
        vc.detailOptions = .profile
        vc.strName = self.profileVM.profileModel.results[0].name.title
        vc.strLastName = self.profileVM.profileModel.results[0].name.first
        vc.strSecondLastName = self.profileVM.profileModel.results[0].name.last
        vc.strGender = self.profileVM.profileModel.results[0].gender
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func openLocationInfo() {
        let vc = DetailsViewController()
        vc.detailOptions = .location
        vc.strStreet = self.profileVM.profileModel.results[0].location.street.name
        vc.strNumber = String(self.profileVM.profileModel.results[0].location.street.number)
        vc.strCity = self.profileVM.profileModel.results[0].location.city
        vc.strState = self.profileVM.profileModel.results[0].location.state
        vc.strCountry = self.profileVM.profileModel.results[0].location.country
        vc.strZipCode = String(self.profileVM.profileModel.results[0].location.postcode)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func openAditionalInfo() {
        let vc = DetailsViewController()
        vc.detailOptions = .aditional
        vc.strEmail = self.profileVM.profileModel.results[0].email
        vc.strPhone = self.profileVM.profileModel.results[0].phone
        vc.strCell = self.profileVM.profileModel.results[0].cell
        navigationController?.pushViewController(vc, animated: true)
    }
}
