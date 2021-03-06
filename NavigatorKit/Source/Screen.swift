//
//  Screen.swift
//  NavigatorKit
//
//  Created by Rafael Bartolome on 21/03/2020.
//  Copyright © 2020 Rafael Bartolome. All rights reserved.
//

import Foundation
import UIKit

public typealias ScreenParams = [String: Any]

/// Screen is used to define a new scene that should be managed by the navigator
/// A secreen can me pushed, presented, render as a root ... etc
public protocol Screen {
    func viewController(with params: ScreenParams?) -> UIViewController
}

public extension Screen {
    func viewController() -> UIViewController {
        viewController(with: [:])
    }
}
