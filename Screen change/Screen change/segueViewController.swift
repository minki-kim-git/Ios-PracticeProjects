//
//  segueViewController.swift
//  Screen change
//
//  Created by 김민기 on 2022/01/13.
//

import UIKit

protocol sendDelegate{
    func printLabel(text :String)
}

class segueViewController: UIViewController {

    var text : String?
     var delegate : sendDelegate?
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textLabel.text = text
    }
    

 
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.printLabel(text: "세그로 전달")
        self.navigationController?.popViewController(animated: true)
    }
    
}
