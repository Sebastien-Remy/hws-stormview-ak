//
//  ViewController.swift
//  stormview-ak
//
//  Created by Sebastien REMY on 23/11/2022.
//

import Cocoa

class ViewController: NSSplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func shareClicked(_ sender: NSView) {
        guard let detail = children[1] as? DetailViewController else { return }
        guard let image = detail.imageView.image else { return }
        
        let picker = NSSharingServicePicker(items: [image])
        picker.show(relativeTo: .null, of: sender, preferredEdge: .minY)
    }


}

