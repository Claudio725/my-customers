import Foundation
import UIKit
import MyCustomersCore

class CreateCustomerInputPresenterApp: CreateCustomerInputPresenter {

    var newCustomerForm: NewCustomerForm
    var createCustomerOutputPresenter: CreateCustomerOutputPresenterApp

    init(newCustomerForm: NewCustomerForm) {
        self.newCustomerForm = newCustomerForm
        createCustomerOutputPresenter = CreateCustomerOutputPresenterApp()
    }

    func createCustomer() {
        CreateCustomerInteractor(
            customerRepository: customerRepositoryStore,
            createCustomerOutputPresenter: createCustomerOutputPresenter
        ).create(
            customer: generateCustomerEntity()
        )
    }

    func generateCustomerEntity() -> Customer {
        return CustomerEntity(
            name: newCustomerForm.enteredName,
            phone: newCustomerForm.enteredPhone,
            email: newCustomerForm.enteredEmail,
            address: newCustomerForm.enteredAddress
        )
    }

}
