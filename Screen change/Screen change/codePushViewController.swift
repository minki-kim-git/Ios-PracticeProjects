//
//  codePushViewController.swift
//  Screen change
//
//  Created by 김민기 on 2022/01/14.
//

import UIKit

class codePushViewController: UIViewController {


    @IBOutlet weak var textLabel: UILabel!
    var text : String?
    var delegate : sendDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textLabel.text = text
     
    }
    

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.printLabel(text: "code로 전달")
        self.navigationController?.popViewController(animated: true)
    }
    

}
