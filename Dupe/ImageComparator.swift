import Vision
import UIKit

class ImageComparator {
    let threshold: Float = 0.9  // NOTE: Arbitrary threshold. Wil;l be changed once more testing is done
    
    func compareImages(_ image1: UIImage, _ image2: UIImage) -> Bool {
        guard let cgImage1 = image1.cgImage, let cgImage2 = image2.cgImage else {
            return false
        }
        
        let requestHandler1 = VNImageRequestHandler(cgImage: cgImage1, options: [:])
        let requestHandler2 = VNImageRequestHandler(cgImage: cgImage2, options: [:])
        
        let request = VNGenerateImageFeaturePrintRequest()
        
        do {
            try requestHandler1.perform([request])
            guard let featurePrint1 = request.results?.first as? VNFeaturePrintObservation else {
                return false
            }
            
            try requestHandler2.perform([request])
            guard let featurePrint2 = request.results?.first as? VNFeaturePrintObservation else {
                return false
            }
            
            var distance = Float(0)
            try featurePrint1.computeDistance(&distance, to: featurePrint2)
            
            return distance < threshold
            
        } catch {
            return false
        }
    }
}
