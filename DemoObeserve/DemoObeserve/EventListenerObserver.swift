//
//  EventListenerObserver.swift
//  DemoObeserve
//
//  Created by Duy Pham Viet on 2017/11/05.
//  Copyright © 2017 Duy Pham Viet. All rights reserved.
//

import Foundation

@objc protocol EventListenerObserver : NSObjectProtocol {
    
}

@objc protocol Event1Observer : EventListenerObserver {
    func descriptionObject();
}

@objc protocol Event2Observer : EventListenerObserver {
    func doSomething(userInfo : Any);
}

