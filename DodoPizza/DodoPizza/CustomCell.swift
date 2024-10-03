//
//  CustomCell.swift
//  DodoPizza
//
//  Created by Леонид Турко on 01.10.2024.
//

import UIKit

final class CustomCell: UITableViewCell {
  
  static var reuseIdentifier = String(describing: CustomCell.self)
  
  static let rowHeight: CGFloat = 100
  
  private lazy var containerView: UIView = {
    let element = UIView()
    element.translatesAutoresizingMaskIntoConstraints = false
    return element
  }()
  
  private lazy var proguctImageView: UIImageView = {
    let element = UIImageView()
    element.image = UIImage(systemName: "circle.hexagonpath.fill")
    element.translatesAutoresizingMaskIntoConstraints = false
    return element
  }()
  
  private lazy var nameLabel: UILabel = {
    let element = UILabel()
    element.text = "Pizza name"
    element.textColor = .white
    element.translatesAutoresizingMaskIntoConstraints = false
    return element
  }()
  
  private lazy var detailLabel: UILabel = {
    let element = UILabel()
    element.textColor = .systemGray
    element.text = "Detail"
    element.translatesAutoresizingMaskIntoConstraints = false
    return element
  }()
  
  private lazy var priceButton: UIButton = {
    let element = UIButton(type: .system)
    element.backgroundColor = .darkGray
    element.setTitle("от 199 ₽", for: .normal)
    element.tintColor = .white
    element.layer.cornerRadius = 10
    element.translatesAutoresizingMaskIntoConstraints = false
    return element
  }()
  
  private lazy var stackView: UIStackView = {
    let element = UIStackView(arrangedSubviews: [nameLabel, detailLabel, priceButton])
    element.axis = .vertical
    element.distribution = .fill
    element.alignment = .leading
    element.spacing = 2
    element.translatesAutoresizingMaskIntoConstraints = false
    return element
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupView()
    setupConstraints()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
}

//  MARK: - Set Views and Constraints
private extension CustomCell {
  func setupView() {
    backgroundColor = .black
    containerView.addSubviews([proguctImageView, stackView])
    addSubview(containerView)
  }

  func setupConstraints() {
    
    containerView.edgesToSuperview()
    
    NSLayoutConstraint.activate([
      proguctImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
      proguctImageView.heightAnchor.constraint(equalToConstant: 60),
      proguctImageView.widthAnchor.constraint(equalToConstant: 60),
      proguctImageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
    ])
    
    NSLayoutConstraint.activate([
      stackView.leadingAnchor.constraint(equalTo: proguctImageView.trailingAnchor, constant: 16),
      stackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
      stackView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
    ])
    
    NSLayoutConstraint.activate([
      priceButton.widthAnchor.constraint(equalToConstant: 80),
    ])
  }
}
