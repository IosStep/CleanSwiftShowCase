//
//  ViewController.swift
//  CleanSiwftShowCase
//
//  Created by Aldiyar Aitpayev on 04.05.2024.
//

import UIKit
import SnapKit

protocol SentencesView {
    func showSentence(_ text: String?)
    func showError(_ message: String)
}

class SentencesViewController: UIViewController {
    var interactor: SentencesBusinessLogic?
    var router: (SentenceDataPassing & SentenceRoutingLogic)?
    lazy var sentenceLabel: UILabel = {
        let label = UILabel()
        label.text = "some text"
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.numberOfLines = 0
        return label
    }()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        interactor?.viewDidLoad()
    }
    
    private func setupViews() {
        view.addSubview(sentenceLabel)
        sentenceLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(12)
            make.centerY.equalToSuperview()
        }
    }
    
    private func setup() {
        let vc = self
        let interactor = SentencesInteractor()
        let presenter = SentencesPresenter()
        let router = SentenceRouter()
        vc.interactor = interactor
        interactor.presenter = presenter
        presenter.view = vc
        vc.router = router
        router.dataSource = interactor
        router.vc = vc
    }


}

extension SentencesViewController: SentencesView {
    func showError(_ message: String) {
        print(message)
    }
    
    func showSentence(_ text: String?) {
        sentenceLabel.text = text
    }
    
    
}
