//
//  StoreListViewController.swift
//  baemin
//
//  Created by 황재상 on 2023/05/02.
//

import UIKit

class StoreListViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    var dataModel: [[MenuDataModel]] = []
    @IBOutlet weak var storeListCollectionView: UICollectionView!
    @IBOutlet weak var tabbarBtn1: UIButton!
    @IBOutlet weak var tabbarBtn2: UIButton!
    @IBOutlet weak var tabbarBtn3: UIButton!
    @IBOutlet weak var tabbarBtn4: UIButton!
    @IBOutlet weak var tabbarBtn5: UIButton!
    @IBOutlet weak var tabbarBtn6: UIButton!
    @IBOutlet weak var tabbarBtn7: UIButton!
    @IBOutlet weak var tabbarBtn8: UIButton!
    @IBOutlet weak var tabbarBtn9: UIButton!
    @IBOutlet weak var tabbarBtn10: UIButton!
    @IBOutlet weak var tabbarBtn11: UIButton!
    @IBOutlet weak var tabbarBtn12: UIButton!
    @IBOutlet weak var tabbarBtn13: UIButton!
    @IBOutlet weak var tabbarBtn14: UIButton!
    @IBOutlet weak var tabbarBtn15: UIButton!
    
    @IBOutlet weak var barWidth: NSLayoutConstraint!
    @IBOutlet weak var barLeading: NSLayoutConstraint!
    let menuList: [String] = ["치킨","크로아상","컵케익","햄버거","햇반","핫도그","한식","족발",
                                  "도시락","야식","피자","컵라면","밥","간식","초밥" ]
    var btnList: [UIButton] = []
    var curPage: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeDummyData()
        tapbarInit()
        
        storeListCollectionView.delegate = self
        storeListCollectionView.dataSource = self
    }
    
    func tapbarInit(){
        var i: Int = 0
        btnList = [ tabbarBtn1, tabbarBtn2, tabbarBtn3, tabbarBtn4, tabbarBtn5, tabbarBtn6, tabbarBtn7, tabbarBtn8, tabbarBtn9, tabbarBtn10,tabbarBtn11,tabbarBtn12,tabbarBtn13,tabbarBtn14,tabbarBtn15 ]
        btnList.forEach{
            $0.setTitle(menuList[i], for: .normal)
            $0.addTarget(self, action: #selector(tabbarBtnTap(btn: )), for: .touchUpInside)
            i += 1
        }
        
        btnList[curPage].setTitleColor(.black, for: .normal)
        self.view.layoutIfNeeded()
        barWidth.constant = btnList[curPage].frame.width
        barLeading.constant = btnList[curPage].frame.minX
    }
    
    @objc func tabbarBtnTap(btn sender: UIButton){
        btnList[curPage].setTitleColor(.gray, for: .normal)
        for i in 0...btnList.count {
            if sender == btnList[i]{
                curPage = i
                break
            }
        }
        btnList[curPage].setTitleColor(.black, for: .normal)
        barWidth.constant = btnList[curPage].frame.width
        barLeading.constant = btnList[curPage].frame.minX
        
        storeListCollectionView.setContentOffset(CGPoint(x: CGFloat(curPage) * storeListCollectionView.frame.width, y: 0), animated: true)
        }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoreList", for: indexPath) as? StoreListCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.dataModel = self.dataModel[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height )
    }
    
    func makeDummyData(){
        var i: Int = 0
        while i < 15 {
            var tmpList: [MenuDataModel] = []
            tmpList.append(MenuDataModel(storeImage: "", storeName: "지코바치킨 수유1호점", starScore: 5.0, starCount: 110, menuInfo: "순살 양념구이치킨, 순살 소금구이치킨", coupon: false, coupon2: true, minDeliveryTime: 28, maxDeliveryTime: 43, minDeliveryPay: 0, maxDeliveryPay: 2000, minOrderValue: 16000, packaging: true, reservation: false))
            tmpList.append(MenuDataModel(storeImage: "", storeName: "BBQ 강북스타점", starScore: 4.9, starCount: 99, menuInfo: "황금올리브치킨™", coupon: true, coupon2: false, minDeliveryTime: 23, maxDeliveryTime: 38, minDeliveryPay: 0, maxDeliveryPay: 1900, minOrderValue: 8000, packaging: true, reservation: false))
            tmpList.append(MenuDataModel(storeImage: "", storeName: "후라이드 참 잘하는집 미아점", starScore: 5.0, starCount: 80, menuInfo: "후라이드치킨, 양념치킨", coupon: false, coupon2: false, minDeliveryTime: 40, maxDeliveryTime: 55, minDeliveryPay: 3000, maxDeliveryPay: 3000, minOrderValue: 15000, packaging: false, reservation: false))
            tmpList.append(MenuDataModel(storeImage: "", storeName: "지코바 미아역점", starScore: 4.7, starCount: 78, menuInfo: "[치밥원조,밥도둑]순살양념치킨", coupon: false, coupon2: true, minDeliveryTime: 23, maxDeliveryTime: 38, minDeliveryPay: 0, maxDeliveryPay: 2000, minOrderValue: 18000, packaging: true, reservation: false))
            tmpList.append(MenuDataModel(storeImage: "", storeName: "BBQ 장위뉴타운점", starScore: 4.2, starCount: 66, menuInfo: "BBQ황금올리브후라이드™", coupon: false, coupon2: true, minDeliveryTime: 29, maxDeliveryTime: 44, minDeliveryPay: 0, maxDeliveryPay: 1900, minOrderValue: 11900, packaging: true, reservation: false))
            tmpList.append(MenuDataModel(storeImage: "", storeName: "오늘통닭 수유본점", starScore: 4.2, starCount: 54, menuInfo: "(얼음컵드려요)오늘통닭1977", coupon: true, coupon2: false, minDeliveryTime: 26, maxDeliveryTime: 41, minDeliveryPay: 0, maxDeliveryPay: 2500, minOrderValue: 9900, packaging: true, reservation: false))
            tmpList.append(MenuDataModel(storeImage: "", storeName: "네네치킨 번동점", starScore: 4.5, starCount: 32, menuInfo: "순살 양념구이치킨, 순살 소금구이치킨", coupon: true, coupon2: false, minDeliveryTime: 28, maxDeliveryTime: 43, minDeliveryPay: 0, maxDeliveryPay: 2000, minOrderValue: 9900, packaging: true, reservation: false))
            i += 1
            dataModel.append(tmpList)
        }
    }
    
}
