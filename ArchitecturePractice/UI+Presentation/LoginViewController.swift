//
//  LoginViewController.swift
//  ArchitecturePractice
//
//  Created by Prudhvi Gadiraju on 3/23/21.
//

import UIKit

final class LoginViewController: UIViewController {

    var loginUseCase: LoginUseCase?

    private lazy var messageLabel: UILabel = {
        let l = UILabel()
        l.text = "Nothing Yet"
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()

    private lazy var loginButton: UIButton = {
        let b = UIButton()
        b.setTitle("Login", for: .normal)
        b.addTarget(self, action: #selector(handleLoginTapped), for: .touchUpInside)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupLabel()
        setupButton()
    }

    private func setupView() {
        view.backgroundColor = .systemPink
    }

    private func setupLabel() {
        view.addSubview(messageLabel)
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            messageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    private func setupButton() {
        view.addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    @objc func handleLoginTapped() {
        print("button tapped")
        loginUseCase?.login()
    }
}

extension LoginViewController: LoginView {
    func display(message: String) {
        messageLabel.text = message
    }
}
