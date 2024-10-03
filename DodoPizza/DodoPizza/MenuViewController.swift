//
//  MenuViewController.swift
//  DodoPizza
//
//  Created by Леонид Турко on 01.10.2024.
//

import UIKit

class MenuViewController: UIViewController {
  
  // MARK: - UIElements
  private lazy var tableView: UITableView = {
    let element = UITableView()
    element.delegate = self
    element.dataSource = self
    element.register(CustomCell.self, forCellReuseIdentifier: CustomCell.reuseIdentifier)
    element.rowHeight = CustomCell.rowHeight
    element.allowsSelection = false
    element.translatesAutoresizingMaskIntoConstraints = false
    return element
  }()
  

  override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
    setupConstraints()
  }
  
  func setupViews() {
    view.backgroundColor = .black
    view.addSubview(tableView)
    
  }
  
  func setupConstraints() {
    NSLayoutConstraint.activate([
      tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
      tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
    ])
  }
}

extension MenuViewController: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.reuseIdentifier, for: indexPath) as? CustomCell else { return UITableViewCell() }
    
    return cell
  }
}
