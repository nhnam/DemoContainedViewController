//
//  ViewController.swift
//  ExperimentChildViewController
//
//  Created by Nam Nguyen on 20/2/21.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var productInfoHeightConstraint: NSLayoutConstraint!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  override func preferredContentSizeDidChange(forChildContentContainer container: UIContentContainer) {
    super.preferredContentSizeDidChange(forChildContentContainer: container)
    if (container as? BlueViewController) != nil {
      productInfoHeightConstraint?.constant = container.preferredContentSize.height
    }
  }


}

