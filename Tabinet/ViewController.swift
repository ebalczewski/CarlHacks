//
//  ViewController.swift
//  Tabinet
//
//  Created by Emily Balczewski on 4/23/15.
//  Copyright (c) 2015 ebal. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTableViewDataSource, NSTableViewDelegate{
    @IBOutlet weak var tableView: NSTableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.setDelegate(self)
        tableView.setDataSource(self)
        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    //MARK: Table Stuff
    
    func tableView(tableView: NSTableView, viewForTableColumn tableColumn: NSTableColumn?, row: Int) -> NSView? {
        var viewCell : NSTableCellView = NSTableCellView(frame: NSMakeRect(0,0,tableView.bounds.size.width,tableView.rowHeight))
        var text : NSTextView = NSTextView(frame: NSMakeRect(0, 0, tableColumn!.width, viewCell.bounds.size.height))
        viewCell.addSubview(text)
        text.string = "Hello"
        text.editable = false
        
        var dropShadow = NSShadow()
        dropShadow.shadowColor = NSColor.redColor()
        dropShadow.shadowOffset = NSMakeSize(0,-10)
        dropShadow.shadowBlurRadius = 10
        viewCell.wantsLayer = true
        viewCell.shadow = dropShadow
        
        return viewCell
    }
    func numberOfRowsInTableView(tableView: NSTableView) -> Int {
        return 3
    }

}

