//
//  ViewController.swift
//  week8
//
//  Created by 황재상 on 2023/05/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        checkTime {
//            DispatchQueue.global().async {
//                //task
//                for i in 1...10{
//                    print(i)
//                    sleep(1)
//                }
//            }
//        }
//        let globalQ = DispatchQueue.global()s
//        checkTime {
//            globalQ.async {
//                // task 1
//                sleep(1)
//            }
//
//            globalQ.async {
//                // task 2
//                sleep(2)
//            }
//        }
//
//
//        DispatchQueue.global().async {
//            // UI가 변경되어야 한다
//
//            DispatchQueue.main.async {
//                self.view.backgroundColor = UIColor.black
//            }
//        }
//
//
//        DispatchQueue.global(qos: .userInteractive)
//        DispatchQueue.global(qos: .userInitiated)
//
//        DispatchQueue.global(qos: .utility)
//        DispatchQueue.global(qos: .background)

        let sema = DispatchSemaphore(value: 1)

        var cnt: Int = 0
        
        DispatchQueue.global().async{
            sema.wait()
            for _ in 0...1000000{
                cnt += 1
            }
            sema.signal()
        }
        DispatchQueue.global().async{
            sema.wait()
            for _ in 0...1000000{
                cnt += 1
            }
            sema.signal()
        }
        DispatchQueue.global().async{
            sema.wait()
            for _ in 0...1000000{
                cnt += 1
            }
            sema.signal()
        }
        
        sleep(2)
        print(cnt)
    }
    
    func checkTime(_ Block: () -> Void){
        let startTime = DispatchTime.now()
        
        Block()
        
        let endTime = DispatchTime.now()
        let nanosec = endTime.uptimeNanoseconds - startTime.uptimeNanoseconds
        print("Excute time")
        print(Double(nanosec) / 1000000000.0)
    }


}

