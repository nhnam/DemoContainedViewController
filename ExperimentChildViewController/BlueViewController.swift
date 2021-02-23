//
//  BlueViewController.swift
//  ExperimentChildViewController
//
//  Created by Nam Nguyen on 20/2/21.
//

import UIKit

class BlueViewController: UIViewController {
  private func calculatePreferredSize() {
    let targetSize = CGSize(width: view.bounds.width, height: UIView.layoutFittingCompressedSize.height)
    preferredContentSize = view.systemLayoutSizeFitting(targetSize)
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    calculatePreferredSize()
  }
}
