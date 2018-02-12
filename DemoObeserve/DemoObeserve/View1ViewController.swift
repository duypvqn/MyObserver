//
//  View1ViewController.swift
//  DemoObeserve
//
//  Created by Duy Pham Viet on 2017/11/05.
//  Copyright © 2017 Duy Pham Viet. All rights reserved.
//

import UIKit

class View1ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        EventListener.listener.addObserver(obsever: self)
    }

    deinit{
        EventListener.listener.removeObserver(observer: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goToView2(){
        self.performSegue(withIdentifier: "V12V2", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension View1ViewController : Event2Observer{
    func doSomething(userInfo: Any) {
        let dictUserInfo = userInfo as! [String:String]
        self.label.text = "Event2Observer: value \(dictUserInfo["text"] ?? "")"
    }
}
