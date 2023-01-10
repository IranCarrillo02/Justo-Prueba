//
//  Extensions.swift
//  Prueba Justo
//
//  Created by Desarrollo Ordenaris on 09/01/23.
//

import Foundation
import UIKit

//MARK: - Color extension
extension UIColor {
    convenience init(hex: String){
        let scaner =  Scanner(string: hex)
        scaner.currentIndex = hex.startIndex
        var rgbValue: UInt64 = 0
        scaner.scanHexInt64(&rgbValue)
        let redColor = (rgbValue & 0xff0000) >> 16
        let greenColor = (rgbValue & 0xff00) >> 8
        let blueColor = (rgbValue & 0xff)
        self.init(red: CGFloat(redColor)/0xff, green: CGFloat(greenColor)/0xff, blue: CGFloat(blueColor)/0xff, alpha: 1)
    }
}

//MARK: - View Controller extension
extension UIViewController {
    func loader() -> UIAlertController {
        let alert = UIAlertController(title: nil, message: "Por favor, espere", preferredStyle: .alert)
        
        let indicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        indicator.hidesWhenStopped = true
        indicator.style = .large
        indicator.startAnimating()
        alert.view.addSubview(indicator)
        present(alert, animated: true, completion: nil)
        
        return alert
    }
    
    func stopLoader(loader: UIAlertController) {
        DispatchQueue.main.async {
            loader.dismiss(animated: true, completion: nil)
        }
    }
    
    func setupToHideKeyboardOnTapOnView() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
}
