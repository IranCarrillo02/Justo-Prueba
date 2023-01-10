//
//  PrimaryButton.swift
//  Prueba Justo
//
//  Created by Desarrollo Ordenaris on 09/01/23.
//

import UIKit

class ButtonPrimary: UIButton {

    // MARK: - View declaration
    private var btnPrimary: UIButton = {
        let button = UIButton(frame: .zero)
        button.layer.cornerRadius = AppConstraints.padding50 / 2
        
        return button
    }()

    // MARK: - Override Methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        initUI()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Initializers
    internal func initUI() {
        initViews()
        initConstraints()
    }

    // MARK: - Add subviews
    internal func initViews() {
        addSubview(btnPrimary)
    }

    // MARK: - Add Constraints
    internal func initConstraints() {
        btnPrimary.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btnPrimary.topAnchor.constraint(equalTo: topAnchor),
            btnPrimary.leadingAnchor.constraint(equalTo: leadingAnchor),
            btnPrimary.trailingAnchor.constraint(equalTo: trailingAnchor),
            btnPrimary.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}

//MARK: - View functions
extension ButtonPrimary {
    func setButtonStyle(_ title: String, _ type: PrimaryButtonType) {
        btnPrimary.setTitle(title, for: .normal)
        btnPrimary.titleLabel?.lineBreakMode = .byWordWrapping
        switch type {
        case .active:
            btnPrimary.backgroundColor = AppColors.login_green
            btnPrimary.setTitleColor(.white, for: .normal)
            btnPrimary.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20.0)
            btnPrimary.isEnabled = false
        case .inactive:
            btnPrimary.backgroundColor = UIColor.white
            btnPrimary.setTitleColor(AppColors.login_green, for: .normal)
            btnPrimary.layer.borderColor = AppColors.login_green.cgColor
            btnPrimary.layer.borderWidth = 2.0
            btnPrimary.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20.0)
            btnPrimary.isEnabled = true
        }
    }
    
    func changeButtonStyle(_ type: PrimaryButtonType) {
        switch type {
        case .active:
            btnPrimary.backgroundColor = AppColors.login_green
            btnPrimary.setTitleColor(.white, for: .normal)
            btnPrimary.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20.0)
            btnPrimary.isEnabled = false
        case .inactive:
            btnPrimary.backgroundColor = UIColor.white
            btnPrimary.setTitleColor(AppColors.login_green, for: .normal)
            btnPrimary.layer.borderColor = AppColors.login_green.cgColor
            btnPrimary.layer.borderWidth = 2.0
            btnPrimary.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20.0)
            btnPrimary.isEnabled = true
        }
    }
}
