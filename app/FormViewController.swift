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

class FormViewController: UIViewController, View {

    typealias Reactor = FormViewReactor
    var disposeBag = DisposeBag()

    func bind(reactor: FormViewReactor) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
