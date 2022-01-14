//
//  ViewController.swift
//  UIViewcontroller-ex
//
//  Created by 김민기 on 2022/01/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("뷰가 로드 되었다.")
        
    }
    override func viewWillAppear(_: Bool) {
        super.viewWillAppear(true)
        print("뷰가 나타날 것이다.")
        
    }
    override func viewWillDisappear(_: Bool){
        super.viewWillDisappear(true)
        print("뷰가 사라 질 것이다.")
    }
    override func viewDidAppear(_: Bool){
        super.viewDidAppear(true)
        print("뷰가 나타났다")
        
    }
    override func viewDidDisappear(_: Bool){
        super.viewDidDisappear(true)
        print("뷰가 사라졌다.")
    }


}

