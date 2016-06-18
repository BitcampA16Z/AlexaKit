//
//  AlexaKitSendMessageIntentHandler.swift
//  AlexaKit
//
//  Created by Colin King on 6/18/16.
//  Copyright © 2016 Colin King. All rights reserved.
//

import Foundation
import Intents

class AlexaKitSendMessageIntentHandler: INExtension, INSendMessageIntentHandling {
    func handle(sendMessage intent: INSendMessageIntent, completion: (INSendMessageIntentResponse) -> Void) {
        print("Message intent is being handled.")
        let userActivity = NSUserActivity(activityType: NSStringFromClass(INSendMessageIntent))
        let response = INSendMessageIntentResponse(code: .success, userActivity: userActivity)
        completion(response)
    }
}
