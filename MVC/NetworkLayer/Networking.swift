

protocol NetworkingDelegate : class{
    func didReceiveResponse(string: String)
    func didReceiveResponseFail(bool: Bool)

}


import UIKit

class Networking: NSObject {
    
    weak var delegate : NetworkingDelegate?
    
    func requestData(){
        passSuccessResponse(value: "Success")
    }
    
    
    
    func passSuccessResponse(value: String){
        delegate?.didReceiveResponse(string: value)
        
    }
    

}
