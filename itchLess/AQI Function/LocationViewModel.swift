//
//  LocationViewModel.swift
//  AQIFunctionTest
//
//  Created by 張銘育 on 2024/9/26.
//

import SwiftUI

class LocationViewModel: ObservableObject {
    @Published var selectedCountryIndex: Int = 0
    @Published var selectedSiteIndex: Int = 0
    
    var selectedCountry: String {
        CountriesData.allCountries[selectedCountryIndex].country
    }
    
    var selectedSite: String {
        CountriesData.allCountries[selectedCountryIndex].sitenames[selectedSiteIndex]
    }
}
