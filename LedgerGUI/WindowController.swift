//
//  WindowController.swift
//  LedgerGUI
//
//  Created by Florian on 06/07/16.
//  Copyright © 2016 objc.io. All rights reserved.
//

import Cocoa


class LedgerWindowController: NSWindowController {

    var didSearch: ((String) -> ())? = { _ in }

    @IBAction func search(_ sender: NSSearchField) {
        didSearch?(sender.stringValue)
    }
    var balanceViewController: BalanceViewController? {
        return contentViewController?.children.compactMap( { $0 as? BalanceViewController }).first
    }

    var registerViewController: RegisterViewController? {
        return contentViewController?.children.compactMap( { $0 as? RegisterViewController }).first
    }
}

