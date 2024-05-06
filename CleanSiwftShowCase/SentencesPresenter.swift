import Foundation


protocol SentencesPresentationLogic {
    func presentSentence(_ sentence: SentenceData?)
}

class SentencesPresenter {
    var view: SentencesView?
}

extension SentencesPresenter: SentencesPresentationLogic {
    func presentSentence(_ sentence: SentenceData?) {
        guard let sentence = sentence else {
            view?.showError("Error while gettin sentence")
            return
        }
        view?.showSentence(sentence.sentence)
    }
    
    
}
