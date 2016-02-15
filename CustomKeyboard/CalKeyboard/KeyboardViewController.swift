//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var returnKeyboardButton: UIButton!
    @IBOutlet var deleteKeyboardButton: UIButton!
    @IBOutlet var helloButton: UIButton!
    @IBOutlet var whatsUpButton: UIButton!
    @IBOutlet var howAreYouButton: UIButton!
    @IBOutlet var wtfButton: UIButton!
    @IBOutlet var letsEatButton: UIButton!
    @IBOutlet var hahaButton: UIButton!
    @IBOutlet var yesButton: UIButton!
    @IBOutlet var imBoredButton: UIButton!
    @IBOutlet var lolButton: UIButton!
    @IBOutlet var seeYouLater: UIButton!
    @IBOutlet var dudeButton: UIButton!
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func hello(){
        textDocumentProxy.insertText("ahoy ")
    }
    
    func whatsUp(){
        textDocumentProxy.insertText("what ye be doing? ")
    }
    
    func howAreYou(){
        textDocumentProxy.insertText("how be ye? ")
    }
    
    func dude(){
        textDocumentProxy.insertText("bucko ")
    }
    
    func seeYou(){
        textDocumentProxy.insertText("spy wit' ye eye ye later ")
    }
    
    func imBored(){
        textDocumentProxy.insertText("i be keal hauled ")
    }
    
    func lol() {
        textDocumentProxy.insertText("yo-ho-ho and a bottle of rum ")
    }
    
    func yes(){
        textDocumentProxy.insertText("yarr" )
    }
    
    func haha(){
        textDocumentProxy.insertText("harrharr ")
    }
    
    func letsEat(){
        textDocumentProxy.insertText("let's put grub in me gullet ")
    }
    
    func wtf(){
        textDocumentProxy.insertText("what th' muck ")
    }
    
    @IBAction func deleteBackward () {
        textDocumentProxy.deleteBackward()
    }
    
    @IBAction func insertNewLine() {
        textDocumentProxy.insertText("\r\n")
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        helloButton.addTarget(self, action: "hello", forControlEvents: .TouchUpInside)
        whatsUpButton.addTarget(self, action: "whatsUp", forControlEvents: .TouchUpInside)
        lolButton.addTarget(self, action: "lol", forControlEvents: .TouchUpInside)
        howAreYouButton.addTarget(self, action: "howAreYou", forControlEvents: .TouchUpInside)
        dudeButton.addTarget(self, action: "dude", forControlEvents: . TouchUpInside)
        yesButton.addTarget(self, action: "yes", forControlEvents: . TouchUpInside)
        letsEatButton.addTarget(self, action: "letsEat", forControlEvents: . TouchUpInside)
        hahaButton.addTarget(self, action: "haha", forControlEvents: .TouchUpInside)
        seeYouLater.addTarget(self, action: "seeYou", forControlEvents: .TouchUpInside)
        imBoredButton.addTarget(self, action: "imBored", forControlEvents: .TouchUpInside)
        wtfButton.addTarget(self, action: "wtf", forControlEvents: .TouchUpInside)
    }


}
