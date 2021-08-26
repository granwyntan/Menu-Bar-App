//
//  AppDelegate.swift
//  MenuBarAppSwift
//
//  Created by Granwyn Tan on 26/8/21.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        statusItem.button?.title = "🙂"
        statusItem.button?.target = self
        statusItem.button?.action = #selector(showSettings)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @objc func showSettings() {
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        guard let viewController = storyboard.instantiateController(withIdentifier: "ViewController") as? ViewController else {
            fatalError("Unable to find ViewController in Storyboard")
        }
        let popoverView = NSPopover()
        popoverView.contentViewController = viewController
        popoverView.behavior = .transient
        popoverView.show(relativeTo: statusItem.button!.bounds, of: statusItem.button!, preferredEdge: .maxY)
    }
}


