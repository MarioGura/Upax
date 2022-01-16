//
//  ServiceManager.swift
//  UpaxTest
//
//  Created by Mario on 16/01/22.
//

import Foundation

typealias ServiceModelResponse = APIResult<ServiceResponseModel?>

struct ServicesManager {
    // MARK: - Private properties
    private let networking = Networking()

    // MARK: - Inits
    init() { }

    func getGraphsInfo(completion: @escaping ServiceModelResponse) {
        let service = ServiceRequest.getInfoGraphs
        networking.fetchService(service: service) { result in
            completion(result)
        }
    }
}
