//
//  ViewController.swift
//  ScrollView_test
//
//  Created by 이병훈 on 2021/05/13.
//

import UIKit

class scrollVC: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    var i = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.scroll.delegate = self
        
    }


}
extension scrollVC: UIScrollViewDelegate {

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        i += 1
        print("scroll~\(i)")
    }
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        i += 1
        print("will Scroll~ \(i)")
    }
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        print(velocity, targetContentOffset)
    }
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if decelerate == true {
            print("true")
        } else if decelerate == false {
            print("false")
        }
   }
    func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool {
        return true
    }
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        print("정상이다~!")
    }
//    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
//        print("스크롤 시작한다.")
//    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("스크롤 끝난다.")
    }
}
