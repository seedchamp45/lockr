//
//  mainViewController.swift
//  
//
//  Created by Kittipol Munkatitum on 10/7/2560 BE.
//
//

import UIKit

class mainViewController: UIViewController {

    @IBOutlet weak var disclamerLabel: UILabel!
    @IBOutlet weak var showLabel: UILabel!
    
    @IBOutlet weak var learnMoreButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    
    
    let legal = "Legal and enforceable Non-Disclosure Agreements \nfor any circumstance in 60 seconds"
    let showWord = "Protect yourself\nProtect your business\nProtect your inventions\nProtect your loved ones"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.
    }

    func setupView()  {
        disclamerLabel.text = legal
        showLabel.text = showWord
        
        learnMoreButton.layer.borderWidth = 0.5
        learnMoreButton.layer.borderColor = UIColor.white.cgColor
        learnMoreButton.layer.cornerRadius = 5
        
        signInButton.layer.borderWidth = 0.5
        signInButton.layer.borderColor = UIColor.white.cgColor
        signInButton.layer.cornerRadius = 5
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
