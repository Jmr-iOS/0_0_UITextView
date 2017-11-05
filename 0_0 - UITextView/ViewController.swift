//
//  ViewController.swift
//  0_1 - UITextView
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
 

    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.view.translatesAutoresizingMaskIntoConstraints = false;
        
        self.addTextView(self.view);
        self.addDelegate(
        
        return;
    }

    
    //todo - add passing the delegate
    func addTextView(view:UIView) {

        let sampleTextView = UITextView(frame: CGRectMake(20, 100, 290, 300));
        
        sampleTextView.textAlignment = .Left;
        
        sampleTextView.backgroundColor = UIColor.purpleColor();
        
        
        sampleTextView.text = "Enter the TextView text here \n many, many lines of it!";
        
        for i in 0...50 {
            sampleTextView.text = sampleTextView.text +  String("line[\(i)] - And then there is a lot of text next to it...! :)\n");
        }
        
        sampleTextView.font = UIFont.systemFontOfSize(11);
        sampleTextView.autocorrectionType = UITextAutocorrectionType.No;
        sampleTextView.keyboardType = UIKeyboardType.Default;
        sampleTextView.returnKeyType = UIReturnKeyType.Done;
        
//?     sampleTextView.clearButtonMode = UITextFieldViewMode.WhileEditing;
//?     sampleTextView.contentVerticalAlignment = UIControlContentVerticalAlignment.Center;
//?     sampleTextView.delegate = self;
        
        sampleTextView.translatesAutoresizingMaskIntoConstraints = true;
        
        view.addSubview(sampleTextView);
        
        sampleTextView.backgroundColor = UIColor.purpleColor();
        
        return;
    }
    
    
    //Delegate Methods
    // MARK:- ---> Textfield Delegates
    func textFieldDidBeginEditing(textField: UITextField) {
        print("TextField did begin editing method called")
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        print("TextField did end editing method called")
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        print("TextField should begin editing method called")
        return true;
    }
    
    func textFieldShouldClear(textField: UITextField) -> Bool {
        print("TextField should clear method called")
        return true;
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        print("TextField should snd editing method called")
        return true;
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        print("While entering the characters this method gets called")
        return true;
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print("TextField should return method called")
        textField.resignFirstResponder();
        return true;
    }
}

