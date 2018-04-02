//
//  ViewController.swift
//  swift-practice-form
//
//  Created by anton van eechaute on 2018/04/03.
//  Copyright © 2018 anton van eechaute. All rights reserved.
//

import UIKit
import ReactorKit
import RxSwift
import RxCocoa
import SnapKit

class FormViewController: UIViewController, View {

    typealias Reactor = FormViewReactor
    var disposeBag = DisposeBag()

    private lazy var stackView: UIStackView = {
        let subviews = [self.nameFieldView]
        let view = UIStackView(arrangedSubviews: subviews)
        view.axis = .vertical
        view.distribution = .fill
        return view
    }()

    private lazy var nameFieldView: UIView = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = .black

        let subviews: [UIView] = [label, nameTextField]
        let view = UIStackView(arrangedSubviews: subviews)
        view.axis = .horizontal
        view.distribution = .fill

        return view
    }()

    private lazy var nameTextField: UITextField = {
        let field = UITextField()
        field.backgroundColor = .red
        return field
    }()

    func bind(reactor: FormViewReactor) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow

        view.addSubview(stackView)

        setupConstraints()
    }

    private func setupConstraints() {
        stackView.snp.makeConstraints {
            $0.width.height.equalToSuperview().offset(-20)
            $0.center.equalTo(view.snp.center)
        }

        nameFieldView.snp.makeConstraints {
            $0.height.equalTo(44)
        }

        nameTextField.snp.makeConstraints {
            $0.width.equalTo(stackView.snp.width).offset(-50)
        }
    }


}
