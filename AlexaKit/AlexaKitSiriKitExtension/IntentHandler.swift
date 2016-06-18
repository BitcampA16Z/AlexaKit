//
//  IntentHandler.swift
//  AlexaKitSiriKitExtension
//
//  Created by Colin King on 6/18/16.
//  Copyright © 2016 Colin King. All rights reserved.
//

import Intents

// 
// Handler that delegates to other classes to handle different intents.
//

class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> AnyObject? {
        if intent is INSendMessageIntent {
            return AlexaKitSendMessageIntentHandler()
        }
        
        print("ERROR: The registered intent is not currently handled by AlexaKit.")
        
        return nil
    }
}

