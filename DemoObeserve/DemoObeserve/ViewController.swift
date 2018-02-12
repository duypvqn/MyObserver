//
//  ViewController.swift
//  DemoObeserve
//
//  Created by Duy Pham Viet on 2017/11/03.
//  Copyright © 2017 Duy Pham Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        EventListener.listener.addObserver(obsever: self)
    }
    
    deinit{
        EventListener.listener.removeObserver(observer: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goToView1(_ sender: Any) {
        self.performSegue(withIdentifier: "VC2V1", sender: self)
    }
    
}

extension ViewController : Event1Observer
{
    func descriptionObject() {
        self.label.text = "Event1Observer: description object"
    }
}

extension ViewController : Event2Observer{
    func doSomething(userInfo: Any) {
        let dictUserInfo = userInfo as! [String:String]
        self.label.text = "Event2Observer: value \(dictUserInfo["text"] ?? "")"
    }
}

