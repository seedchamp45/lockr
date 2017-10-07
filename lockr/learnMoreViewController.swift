//
//  learnMoreViewController.swift
//  lockr
//
//  Created by Kittipol Munkatitum on 10/7/2560 BE.
//  Copyright © 2560 Kittipol Munkatitum. All rights reserved.
//

import UIKit

class learnMoreViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var learnMoreCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let slidenib = UINib(nibName: "learnMoreCollectionViewCell", bundle: nil)
        learnMoreCollectionView.register(slidenib, forCellWithReuseIdentifier: "learnMoreCollectionViewCell")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell:UICollectionViewCell?;
        let slideCell = collectionView.dequeueReusableCell(withReuseIdentifier: "learnMoreCollectionViewCell", for: indexPath) as! learnMoreCollectionViewCell;
        
        if indexPath.row == 0
        {
            slideCell.descriptionLabel.text = "Answer few questions"
        }
        else if indexPath.row == 1
        {
            slideCell.descriptionLabel.text = "Obtain video signature"
        }
        else
        {
            slideCell.descriptionLabel.text = "Save to vault"
        }
        
        cell = slideCell
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout {
        let layout = UICollectionViewFlowLayout()
        // The size of each item. Pick a suitable height so that the items do not get stacked:
        layout.itemSize = CGSize(width: view.frame.width / 2, height: view.frame.height)
        // The most important part:
        layout.scrollDirection = .horizontal
        // Then initialize collectionView
        let collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: self.view.frame.height);
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
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
