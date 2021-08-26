//
//  ViewController.swift
//  MenuBarAppSwift
//
//  Created by Granwyn Tan on 26/8/21.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var label: NSTextField!
    @IBOutlet weak var button: NSButton!
    @IBOutlet weak var quit: NSButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func okButtonClick(_ sender: Any) {
        label.stringValue = "Your Name is \(textField.stringValue)"
    }
    
    @IBAction func quitButtonClick(_ sender: Any) {
        NSApplication.shared.terminate(self)
    }
    
    @IBAction func copyToPasteboard(_ sender: Any) {
        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
        pasteboard.setString(label.stringValue, forType: .string)
    }
    
}

