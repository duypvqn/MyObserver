//
//  CustomSegue.swift
//  DemoObeserve
//
//  Created by Duy Pham Viet on 2017/11/05.
//  Copyright © 2017 Duy Pham Viet. All rights reserved.
//

import Foundation
import UIKit

class CustomSegue : UIStoryboardSegue{
    override func perform() {
        let nav = self.source.navigationController
        let des = self.destination
        nav?.show(des, sender: self)
    }
}
