//
//  SwiftUIPDFView.swift
//  swifttutorial2
//
//  Created by Muhammed Essa on 13/05/2023.
//

import SwiftUI
import PDFKit

struct PDFKitView: UIViewRepresentable {
    let pdfDocument: PDFDocument
    init(showing pdfDocument: PDFDocument) {
        self.pdfDocument = pdfDocument
    }
    
    func makeUIView(context: Context)-> PDFView{
        let pdfView = PDFView()
        pdfView.document = pdfDocument
        pdfView.autoScales = true
        return pdfView
    }
    
    func updateUIView(_ pdfView: PDFView, context: Context) {
        pdfView.document = pdfDocument
    }
    
}


struct SwiftUIPDFView: View {
    
    let pdfDoc: PDFDocument
    
    init() {
        let url = Bundle.main.url(forResource: "Renewable Energy", withExtension: "pdf")!
        pdfDoc = PDFDocument(url: url)!
    }
    
    var body: some View {
        PDFKitView(showing: pdfDoc)
    }
}

struct SwiftUIPDFView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPDFView()
    }
}
