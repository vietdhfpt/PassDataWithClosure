//
//  OtherViewController.swift
//  PassDataWithClosure
//
//  Created by Đỗ Việt on 4/26/17.
//  Copyright © 2017 Do Viet. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    //khởi tạo closure với tham sớ name
    var closure: ((_ name: String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func saveAndPassData(_ sender: UIBarButtonItem) {
        // truyền dữ liệu qua closure
        if let closure = closure {
            closure(nameTextField.text ?? "")
        }
        
        _ = navigationController?.popViewController(animated: true)
    }

}
