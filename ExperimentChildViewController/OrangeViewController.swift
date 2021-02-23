//
//  OrangeViewController.swift
//  ExperimentChildViewController
//
//  Created by Nam Nguyen on 20/2/21.
//

import UIKit

class OrangeViewController: UIViewController {
  @IBOutlet weak var greenHeightConstraint: NSLayoutConstraint!
  override func preferredContentSizeDidChange(forChildContentContainer container: UIContentContainer) {
    super.preferredContentSizeDidChange(forChildContentContainer: container)
    if (container as? GreenViewController) != nil {
      greenHeightConstraint?.constant = container.preferredContentSize.height
    }
  }
}
