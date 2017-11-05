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
        //!!!self.addDelegate(
        
        return;
    }

    
    //todo - add passing the delegate
    @objc func addTextView(_ view:UIView) {

        let sampleTextView = UITextView(frame: CGRect(x: 20, y: 100, width: 290, height: 300));
        
        sampleTextView.textAlignment = .left;
        
        sampleTextView.backgroundColor = UIColor.purple;
        
        
        sampleTextView.text = "Enter the TextView text here \n many, many lines of it!";
        
        for i in 0...50 {
            sampleTextView.text = sampleTextView.text +  String("line[\(i)] - And then there is a lot of text next to it...! :)\n");
        }
        
        sampleTextView.font = UIFont.systemFont(ofSize: 11);
        sampleTextView.autocorrectionType = UITextAutocorrectionType.no;
        sampleTextView.keyboardType = UIKeyboardType.default;
        sampleTextView.returnKeyType = UIReturnKeyType.done;
        
//?     sampleTextView.clearButtonMode = UITextFieldViewMode.WhileEditing;
//?     sampleTextView.contentVerticalAlignment = UIControlContentVerticalAlignment.Center;
//?     sampleTextView.delegate = self;
        
        sampleTextView.translatesAutoresizingMaskIntoConstraints = true;
        
        view.addSubview(sampleTextView);
        
        sampleTextView.backgroundColor = UIColor.purple;
        
        return;
    }
    
    
    //Delegate Methods
    // MARK:- ---> Textfield Delegates
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("TextField did begin editing method called")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("TextField did end editing method called")
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("TextField should begin editing method called")
        return true;
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("TextField should clear method called")
        return true;
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("TextField should snd editing method called")
        return true;
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("While entering the characters this method gets called")
        return true;
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("TextField should return method called")
        textField.resignFirstResponder();
        return true;
    }
}

