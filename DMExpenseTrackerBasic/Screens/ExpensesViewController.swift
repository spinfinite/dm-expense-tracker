//
//  ExpensesViewController.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/28/23.
//

import UIKit

class ExpensesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let expenses = Expense.expenses
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.expenseReuseID, for: indexPath)
        cell.textLabel?.text = "\(expenses[indexPath.row])"
        //print(cell)
        return cell
    }
    
    /**
     6.1 Connect the UITableView and UILabel to the code.
     */
    
    @IBOutlet weak var expensesTableView: UITableView!
    
    /**
     7.1 Create a String variable for the category and an `[Expense]` variable for the expenses.
    **/
    var category: String = ""
    var expense: [Expense] = []
    /**
     7.2 Create an initializer to initialize the two variables. You may find the following article helpful: https://www.hackingwithswift.com/example-code/uikit/how-to-use-dependency-injection-with-storyboards.
     */
    
    /**
     12.1 Call the `configureViewController` and `configureTableView` functions.
     */
    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewController()
        configureTableView()
        
    }
    
    /**
     9.1 Have the UILabel display the amount of money the user spent for the selected category. For example, "You spent $25 on entertainment.".
     */
    func configureViewController() {
        
        
    }
    
    /**
     10.1 We **will** be using a custom cell for this UITableView. Follow the steps in the `ExpenseCell` file.
     10.2 Configure the tableview to display the correct data.
     */
    func configureTableView() {
//        expensesTableView.dataSource = self
//        expensesTableView.delegate = self
    }
}
