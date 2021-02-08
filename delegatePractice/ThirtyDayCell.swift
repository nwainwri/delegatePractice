//
//  ThirtyDayCell.swift
//  delegatePractice
//
//  Created by Nathan Wainwright on 2021-02-07.
//

import UIKit

class ThirtyDayCell: UITableViewCell {

  let cellView: UIView  = {
    let view = UIView()
    view.backgroundColor = UIColor.red
    view.layer.cornerRadius = 10
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

  let dayLabel: UILabel = {
    let label = UILabel()
    label.text = "Day 1"
    label.textColor = UIColor.white
    label.font = UIFont.boldSystemFont(ofSize: 16)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  func setupView() {
    addSubview(cellView)
    cellView.addSubview(dayLabel)
    self.selectionStyle = .none

    NSLayoutConstraint.activate([
      cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
      cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
      cellView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
      cellView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10)
    ])

    dayLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
    dayLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
    dayLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
    dayLabel.leftAnchor.constraint(equalTo: cellView.leftAnchor, constant: 20).isActive = true

  }


  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupView()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
