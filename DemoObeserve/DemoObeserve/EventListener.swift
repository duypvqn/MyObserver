//
//  EventListener.swift
//  DemoObeserve
//
//  Created by Duy Pham Viet on 2017/11/05.
//  Copyright © 2017 Duy Pham Viet. All rights reserved.
//

import Foundation

class EventListener{
    
    static let listener = EventListener();
    
    var event1Observers = NSHashTable<EventListenerObserver>.weakObjects()
    var event2Observers = NSHashTable<EventListenerObserver>.weakObjects()
    
    func addObserver(obsever:EventListenerObserver){
        if obsever is Event1Observer{
            event1Observers.add(obsever)
        }
        if obsever is Event2Observer{
            event2Observers.add(obsever)
        }
    }
    
    func removeObserver(observer: EventListenerObserver){
        event1Observers.remove(observer)
        event2Observers.remove(observer)
    }
    
    func postEvent(withProtocol protocolName: String, selector: Selector){
        self.postEvent(withProtocol: protocolName, selector: selector, userInfo: nil)
    }
    
    func postEvent(withProtocol protocolName: String, selector: Selector, userInfo:Any?){
        var listObserver : NSHashTable<EventListenerObserver>? = nil
        if protocolName == String(describing: Event1Observer.self) {
            listObserver = event1Observers
        }
        else{
            listObserver = event2Observers
        }
        
        for obs in (listObserver?.allObjects)!{
            obs.perform(selector, with:userInfo)
        }
    }
}

