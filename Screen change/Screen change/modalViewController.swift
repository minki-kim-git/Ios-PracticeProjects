//
//  modalViewController.swift
//  Screen change
//
//  Created by 김민기 on 2022/01/13.
//

import UIKit

class modalViewController: UIViewController {

    var delegate : sendDelegate?
    var text : String?
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textLabel.text = text
        
    }
    

    @IBAction func tapbackbutton(_ sender: UIButton) {
        self.delegate?.printLabel(text: "모달에서 전달")
        self.dismiss(animated: true, completion: nil)
        
    }
    

}
