//
//  ViewController.swift
//  Screen change
//
//  Created by 김민기 on 2022/01/13.
//

import UIKit

class ViewController: UIViewController, sendDelegate {
    func printLabel(text: String) {
        self.textLabel.text = text
    }
    
    var text : String?
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let segue = segue.destination as? segueViewController  {
        segue.text = "root에서 데이터 전달"
            segue.delegate = self }
        if let modal = segue.destination as? modalViewController  {
        modal.text = "root에서 데이터 전달"
            modal.delegate = self }
    }
    @IBAction func tapSugueButton(_ sender: UIButton) {
      
    }
    @IBAction func tapModalButton(_ sender: UIButton) {
        
    }
    @IBAction func tapCodepush(_ sender: UIButton) {
        if let codesegueview = self.storyboard?.instantiateViewController(withIdentifier: "codePushViewController") as? codePushViewController{
            codesegueview.delegate = self
            codesegueview.text = "root에서 전달"
        self.navigationController?.pushViewController(codesegueview, animated: true)
        }
    }
    @IBAction func tapPresentButton(_ sender: UIButton) {
        if let codepresentview = self.storyboard?.instantiateViewController(withIdentifier: "codepresentViewController") as? codepresentViewController{
            codepresentview.delegate = self
            codepresentview.text = "root에서 전달"
        self.present(codepresentview, animated: true, completion: nil)
        }
    }
}

