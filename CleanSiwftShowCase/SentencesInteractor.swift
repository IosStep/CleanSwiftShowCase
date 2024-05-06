import Foundation


protocol SentencesBusinessLogic {
    func viewDidLoad()
}

protocol SentencesDataSource {
    var sentence: SentenceData? { get set }
}

class SentencesInteractor: SentencesDataSource {
    var sentence: SentenceData?
    
    let manager = NetworkManager.shared
    
    var presenter: SentencesPresentationLogic?

    private func getSentence() {
        manager.getText { data in
            self.sentence = data
            self.presenter?.presentSentence(data)
        }
    }
    
}

extension SentencesInteractor: SentencesBusinessLogic {
    func viewDidLoad() {
        getSentence()
    }
    
    
}
