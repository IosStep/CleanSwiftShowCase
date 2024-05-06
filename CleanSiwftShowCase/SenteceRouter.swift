import Foundation

protocol SentenceRoutingLogic {
    
}

protocol SentenceDataPassing {
    var dataSource: SentencesDataSource? { get set }
}

class SentenceRouter: SentenceDataPassing {
    weak var vc : SentencesViewController?
    var dataSource: SentencesDataSource?
    
}

extension SentenceRouter: SentenceRoutingLogic {
    
}
