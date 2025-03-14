//
//  ViewController.swift
//  LigaStroyNavigation
//
//  Created by Екатерина Яцкевич on 13.03.25.
//

import UIKit

final class ViewController: UIViewController {

    lazy var screenWidth = view.frame.width
    
    lazy var segue = UIAction { [weak self] btn in
        guard let sender = btn.sender as? UIButton else {return}
        
        let vc = DetailViewController()
        self?.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    lazy var headerView: UIView = {
        $0.frame = CGRect(x: 0, y: 0, width: screenWidth, height: 379)
        $0.backgroundColor = .black
        return $0
    }(UIView())
    
    lazy var logo: UIImageView = {
        $0.frame = CGRect(x: 20, y: 79, width: 91, height: 34)
        $0.image = .logo
        return $0
    }(UIImageView())
    
    lazy var titleHeader: UILabel = {
        $0.frame = CGRect(
            x: 20,
            y: logo.frame.maxY + 22,
            width: screenWidth - 88,
            height: 56
        )
        $0.text = "Сервис квартирных решений от сделки до отделки"
        $0.font = .systemFont(ofSize: 23, weight: .bold)
        $0.textColor = .white
        $0.numberOfLines = 0
        return $0
    }(UILabel())

    lazy var detailHeaderView: UIView = {
        $0.frame = CGRect(
            x: 17,
            y: titleHeader.frame.maxY + 22,
            width: screenWidth - 34,
            height: 135
        )
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 10
        return $0
    }(UIView())
    
    lazy var buyLabel: UILabel = {
        $0.frame = CGRect(
            x: detailHeaderView.frame.minX + 12,
            y: detailHeaderView.frame.minY + 12,
            width: detailHeaderView.frame.width - 184,
            height: 19
        )
        $0.text = "Купить"
        $0.font = .systemFont(ofSize: 15, weight: .bold)
        $0.textColor = .black
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    lazy var buyDescriptionLabel: UILabel = {
        $0.frame = CGRect(
            x: detailHeaderView.frame.minX + 12,
            y: buyLabel.frame.maxY + 4,
            width: 200,
            height: 34
        )
        $0.text = "Подберем подходящий объект"
        $0.font = .systemFont(ofSize: 14, weight: .regular)
        $0.textColor = .brownText
        $0.numberOfLines = 2
        return $0
    }(UILabel())
    
    lazy var arrow: UIButton = {
        $0.frame = CGRect(
            x: detailHeaderView.frame.maxX - 21,
            y: detailHeaderView.frame.minY + 19,
            width: 5,
            height: 10
        )
        $0.setImage(.arrow, for: .normal)
        $0.addAction(segue, for: .touchUpInside)
        return $0
    }(UIButton())
    
    lazy var servicesLabel: UILabel = {
        $0.frame = CGRect(
            x: 17,
            y: headerView.frame.maxY + 35,
            width: screenWidth - 34,
            height: 27
        )
        $0.text = "Услуги"
        $0.font = .systemFont(ofSize: 24, weight: .bold)
        $0.textColor = .black
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    lazy var detailView: UIView = {
        $0.frame = CGRect(
            x: 17,
            y: servicesLabel.frame.maxY + 10,
            width: screenWidth - 34,
            height: 95
        )
        $0.backgroundColor = .backgroundPurple
        $0.layer.cornerRadius = 10
        return $0
    }(UIView())
    
    lazy var insuranceLabel: UILabel = {
        $0.frame = CGRect(
            x: detailView.frame.minX + 18,
            y: detailView.frame.minY + 23,
            width: 134,
            height: 14
        )
        $0.text = "Страхование"
        $0.font = .systemFont(ofSize: 13, weight: .bold)
        $0.textColor = .black
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    lazy var insuranceDescriptionLabel: UILabel = {
        $0.frame = CGRect(x: detailView.frame.minX + 18, y: insuranceLabel.frame.maxY + 4, width: 150, height: 32)
        $0.text = "Защитите имущество, здоровье и жизнь"
        $0.font = .systemFont(ofSize: 13, weight: .regular)
        $0.textColor = .brownText
        $0.numberOfLines = 2
        return $0
    }(UILabel())
    
    lazy var complexesLabel: UILabel = {
        $0.frame = CGRect(
            x: 17,
            y: detailView.frame.maxY + 30,
            width: screenWidth - 34,
            height: 27
        )
        $0.text = "Жилые комплексы"
        $0.font = .systemFont(ofSize: 24, weight: .bold)
        $0.textColor = .black
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    lazy var complexView: UIView = {
        $0.frame = CGRect(
            x: 17,
            y: complexesLabel.frame.maxY + 29,
            width: screenWidth - 34,
            height: 199
        )
        $0.backgroundColor = .systemGray6
        $0.layer.cornerRadius = 10
        return $0
    }(UIView())
    
    lazy var complex: UIImageView = {
        $0.frame = CGRect(x: complexView.frame.minX, y: complexView.frame.minY, width: complexView.frame.width, height: 122)
        $0.image = .complex
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
        return $0
    }(UIImageView())
    
    lazy var complexNameLabel: UILabel = {
        $0.frame = CGRect(
            x: complexView.frame.minX + 12,
            y: complex.frame.maxY + 9,
            width: complexView.frame.width - 24,
            height: 14
        )
        $0.text = "Ольховый Квартал"
        $0.font = .systemFont(ofSize: 14, weight: .bold)
        $0.textColor = .black
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    lazy var complexPriceLabel: UILabel = {
        $0.frame = CGRect(
            x: complexView.frame.minX + 12,
            y: complexNameLabel.frame.maxY + 7,
            width: complexView.frame.width - 24,
            height: 12
        )
        $0.text = "от 8 029 445 ₽"
        $0.font = .systemFont(ofSize: 14, weight: .bold)
        $0.textColor = .black
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    lazy var addressLabel: UILabel = {
        $0.frame = CGRect(
            x: complexView.frame.minX + 12,
            y: complexPriceLabel.frame.maxY + 9,
            width: complexView.frame.width - 24,
            height: 15
        )
        $0.text = "Москва, поселение Сосенское, деревня Столбово"
        $0.font = .systemFont(ofSize: 14, weight: .regular)
        $0.textColor = .brownText
        $0.numberOfLines = 2
        return $0
    }(UILabel())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubviews(
            headerView,
            logo,
            titleHeader,
            detailHeaderView,
            buyLabel,
            buyDescriptionLabel,
            arrow,
            servicesLabel,
            detailView,
            insuranceLabel,
            insuranceDescriptionLabel,
            complexesLabel,
            complexView,
            complex,
            complexNameLabel,
            complexPriceLabel,
            addressLabel
        )
    }


}

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach({addSubview($0)})
    }
}
