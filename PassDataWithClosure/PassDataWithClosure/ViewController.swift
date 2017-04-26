//
//  ViewController.swift
//  PassDataWithClosure
//
//  Created by Đỗ Việt on 4/26/17.
//  Copyright © 2017 Do Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // kết nối giữa 2 VC và xử lý closure
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let otherVC = segue.destination as? OtherViewController
        
        //xử lý dữ liệu
        otherVC?.closure = {(name: String) -> Void in
        
            self.nameLabel.text = name
            
        }
    }
}

