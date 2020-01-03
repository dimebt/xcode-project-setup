//
//  PopUpMessages.swift
//  Love a frenchie
//
//  Created by Dimitar Stefanovski on 6/26/19.
//  Copyright © 2019 Dimitar Stefanovski. All rights reserved.
//

import UIKit

struct PopUpMessages {
    static let confirmDeletion = PopUpMessage(title: "Confirm deletion",
                                              subtitle: "Are you sure you want to delete the device?",
                                              icon: UIImage(named: "warning")!, buttons: .yes)
    static let deviceAlreadyExists = PopUpMessage(title: "Check SIM number",
                                              subtitle: "Device with the same SIM number already exist in the app!",
                                              icon: UIImage(named: "warning")!, buttons: .okbtn)
    static let messageUINotAvailable = PopUpMessage(title: "Error!",
    subtitle: "SMS services are not available!",
    icon: UIImage(named: "warning")!, buttons: .okbtn)
}
