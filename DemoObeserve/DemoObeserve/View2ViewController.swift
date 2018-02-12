//
//  View2ViewController.swift
//  DemoObeserve
//
//  Created by Duy Pham Viet on 2017/11/05.
//  Copyright © 2017 Duy Pham Viet. All rights reserved.
//

import UIKit

class View2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func postDescription(){
        EventListener.listener.postEvent(withProtocol:String(describing: Event1Observer.self), selector:#selector(Event1Observer.descriptionObject))
    }
    
    @IBAction func postDoSomething(){
        EventListener.listener.postEvent(withProtocol: String(describing: Event2Observer.self), selector:#selector(Event2Observer.doSomething(userInfo:)), userInfo:["text":"value"])
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
