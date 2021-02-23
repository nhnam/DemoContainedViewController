//
//  GreenViewController.swift
//  ExperimentChildViewController
//
//  Created by Nam Nguyen on 22/2/21.
//

import UIKit

class GreenViewController: UIViewController {
  private func calculatePreferredSize() {
    let targetSize = CGSize(width: view.bounds.width, height: UIView.layoutFittingCompressedSize.height)
    preferredContentSize = view.systemLayoutSizeFitting(targetSize)
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    calculatePreferredSize()
  }
  
  @IBOutlet weak var stackView: UIStackView!
  @IBOutlet weak var firstButton: UIButton!
  @IBOutlet weak var secondButton: UIButton!
  
  private func stateChanged() {
    stackView.removeArrangedSubview(firstButton)
  }
  
  override func viewDidLoad() {
    stateChanged()
    stackView.addArrangedSubview(firstButton)
  }
}
