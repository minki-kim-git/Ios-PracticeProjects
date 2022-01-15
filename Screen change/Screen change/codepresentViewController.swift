//
//  codepresentViewController.swift
//  Screen change
//
//  Created by 김민기 on 2022/01/13.
//

import UIKit

class codepresentViewController: UIViewController {

    var delegate : sendDelegate?
    var text : String?
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textLabel.text = text
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.printLabel(text: "code로 present")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }

}
