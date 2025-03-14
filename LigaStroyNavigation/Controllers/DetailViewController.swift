//
//  DetailViewController.swift
//  LigaStroyNavigation
//
//  Created by Екатерина Яцкевич on 13.03.25.
//

import UIKit

final class DetailViewController: UIViewController {

    lazy var screenWidth = view.frame.width
    lazy var backSegue = UIAction { [weak self] btn in
        guard let sender = btn.sender as? UIButton else {return}
        self?.navigationController?.popViewController(animated: true)
        
    }
    
    lazy var logo: UIImageView = {
        $0.frame = CGRect(x: 20, y: 123, width: 91, height: 34)
        $0.image = .logo
        return $0
    }(UIImageView())
    
    lazy var titleHeader: UILabel = {
        $0.frame = CGRect(x: 20, y: logo.frame.maxY + 22, width: screenWidth - 88, height: 56)
        $0.text = "Ольховый квартал"
        $0.font = .systemFont(ofSize: 23, weight: .bold)
        $0.textColor = .white
        $0.numberOfLines = 0
        return $0
    }(UILabel())

    lazy var complex: UIImageView = {
        $0.frame = CGRect(x: 14, y: titleHeader.frame.maxY + 28, width: screenWidth - 28, height: 240)
        $0.image = .complexFull
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
        return $0
    }(UIImageView())
    
    lazy var complexPriceLabel: UILabel = {
        $0.frame = CGRect(
            x: 14,
            y: complex.frame.maxY + 22,
            width: screenWidth - 28,
            height: 12
        )
        $0.text = "от 8 029 445 ₽"
        $0.font = .systemFont(ofSize: 14, weight: .bold)
        $0.textColor = .white
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    lazy var addressLabel: UILabel = {
        $0.frame = CGRect(
            x: 14,
            y: complexPriceLabel.frame.maxY + 9,
            width: screenWidth - 28,
            height: 12
        )
        $0.text = "Москва, поселение Сосенское, деревня Столбово"
        $0.font = .systemFont(ofSize: 14, weight: .regular)
        $0.textColor = .brownText
        $0.numberOfLines = 2
        return $0
    }(UILabel())
    
    lazy var backButton: UIButton = {
        $0.frame = CGRect(
            x: 14,
            y: view.frame.maxY - 123,
            width: screenWidth - 33,
            height: 55
        )
        $0.setTitle("Назад", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .blueButton
        $0.layer.cornerRadius = $0.frame.height / 2
        $0.addAction(backSegue, for: .touchUpInside)
        return $0
    }(UIButton())
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubviews(
            logo,
            titleHeader,
            complex,
            complexPriceLabel,
            addressLabel,
            backButton
        )
    }


}


