//
//  DetailViewController.swift
//  DodoPizza
//
//  Created by Леонид Турко on 02.10.2024.
//

import UIKit

final class DetailViewController: UIViewController {
  
  private lazy var pizzaImageView: UIImageView = {
    let element = UIImageView()
    let image = UIImage(named: "pizza")
    element.image = image
    element.contentMode = .scaleAspectFit
    element.clipsToBounds = true
    element.layer.cornerRadius = 10
    element.translatesAutoresizingMaskIntoConstraints = false
    return element
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
}
