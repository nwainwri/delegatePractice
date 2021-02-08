//
//  ViewController.swift
//  delegatePractice
//
//  Created by Nathan Wainwright on 2021-02-07.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  let tableView: UITableView = {
    let tv = UITableView()
    tv.backgroundColor = UIColor.red
    tv.translatesAutoresizingMaskIntoConstraints = false
    return tv
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    setupTableView()

  }

  func setupTableView() {
    tableView.delegate = self
    tableView.dataSource = self
    tableView.register(ThirtyDayCell.self, forCellReuseIdentifier: "cellId")
    view.addSubview(tableView)

    NSLayoutConstraint.activate([
      tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
      tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
      tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
      tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor)
    ])
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //1
    return 100
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //2
    let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! ThirtyDayCell
    cell.backgroundColor = UIColor.blue
    return cell
  }







}

