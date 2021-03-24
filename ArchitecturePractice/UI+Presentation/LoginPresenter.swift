//
//  LoginPresenter.swift
//  ArchitecturePractice
//
//  Created by Prudhvi Gadiraju on 3/23/21.
//

import Foundation

class LoginPresenter {
    var view: LoginView

    init(view: LoginView) {
        self.view = view
    }
}

extension LoginPresenter: LoginUseCaseDelegate {
    func loginSucceeded(with message: String) {
        print("Presenter")
        view.display(message: message)
    }

    func loginFailed(with message: String) {
        view.display(message: message)
    }
}
