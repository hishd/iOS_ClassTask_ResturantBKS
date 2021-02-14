//
//  AllFoodItemViewController.swift
//  ResturantBKS
//
//  Created by Hishara Dilshan on 2021-02-14.
//

import UIKit

class AllFoodItemViewController: UIViewController {
    
    
    @IBOutlet weak var tblFoodItems: UITableView!
    
    let foodItem: [FoodItem] = [
        FoodItem(foodImage: #imageLiteral(resourceName: "burger2"), foodName: "Burger 1", foodDescription: "Burger 1 Description", foodPrice: 150, distance: 10),
        FoodItem(foodImage: #imageLiteral(resourceName: "burger1"), foodName: "Burger 2", foodDescription: "Burger 2 Description", foodPrice: 250, distance: 40),
        FoodItem(foodImage: #imageLiteral(resourceName: "burger3"), foodName: "Burger 3", foodDescription: "Burger 3 Description", foodPrice: 350, distance: 25)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tblFoodItems.register(UINib(nibName: XIBIdentifiers.XIB_FOOD, bundle: nil), forCellReuseIdentifier: XIBIdentifiers.XIB_FOOD_CELL)
        // Do any additional setup after loading the view.
    }

}

extension AllFoodItemViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblFoodItems.dequeueReusableCell(withIdentifier: XIBIdentifiers.XIB_FOOD_CELL, for: indexPath) as! FoodItemCell
           cell.selectionStyle = .none
        cell.setupView(food: foodItem[indexPath.row])
        return cell
    }
}
