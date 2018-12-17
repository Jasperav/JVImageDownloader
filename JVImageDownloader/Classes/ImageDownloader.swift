import UIKit
import NVActivityIndicatorView
import JVConstraintEdges

open class ImageDownloader: UIView {
    
    private let contentType = NVActivityIndicatorType.ballScaleMultiple
    private let loader = NVActivityIndicatorView(frame: frame, type: contentType, color: .black, padding: 0)
    private let imageView = UIImageView()
    
    public init(NVActivityIndicatorType: NVActivityIndicatorType){
        super.init(frame: CGRect.zero)

        loader.fill(toSuperview: self)
        loader.type = NVActivityIndicatorType
        loader.startAnimating()
        
        imageView.fill(toSuperview: self)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    public func animateLoading(){
        loader.startAnimating()
        
        imageView.image = nil
    }
    
    public func setImage(image: UIImage){
        imageView.image = image
        
        loader.stopAnimating()
    }
    
}

