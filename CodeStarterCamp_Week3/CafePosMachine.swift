//
//  CoffeePosMachine.swift
//  CodeStarterCamp_Week3
//
//  Created by minsong kim on 2023/03/06.
//

import Foundation


struct Person {
    var money: Int
    var nickname: String
    
    mutating func orderCofffee(menu: String, price: Int) {
        if price == 0 {
            print("\(nickname)님, 주문하신 \(menu)는 품절이라 구매하실 수 없습니다. 남은 잔액은 \(money)원 입니다.")
        }else if money > price {
            self.money = self.money - price
            print("\(nickname)님, \(menu) 한 잔을 구매하였습니다. 남은 잔액은 \(money)원 입니다." )
        }else {
            print("금액이 부족합니다.")
        }
    }
}

enum Coffee: String {
    case americano = "아메리카노", decaffeine = "디카페인"
    case latte = "라떼", vanilla = "바닐라라떼", caramel = "카라멜 마끼아또", cappuccino = "카푸치노"
}

struct CoffeeShop {
    var barista: Person
    var sales: Int
    var pickUpTable: Array<String>
    var menu: [Coffee: Int]

    mutating func takeOrder(nickname: String, menu: String, totalPrice: Int) {
        sales = sales + totalPrice
        if totalPrice == 0 {
            print("죄송하지만 주문하신 \(menu)는 오늘 품절입니다.")
        } else {
            print("\(nickname)님 주문하신 받았습니다. 지불하실 금액은 \(totalPrice)원 입니다.")
        }
    }
    
    mutating func processOrder(nickname: String, menu: String) {
        pickUpTable.append(menu)
        print("\(nickname)님, 주문하신 \(menu) 나왔습니다.")
    }
    
    func checkSales() {
        print("현재까지 총 매출액은 \(sales)원 입니다.")
    }
}
