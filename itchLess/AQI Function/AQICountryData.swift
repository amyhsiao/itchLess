//
//  AQICountryData.swift
//  itchLess
//
//  Created by 張銘育 on 2024/7/13.
//

import Foundation

struct Country: Codable, Identifiable {
    var id = UUID()
    var country: String
    var sitenames: [String]
}

struct CountriesData {
    static let allCountries: [Country] = [
        Country(country: "基隆市", sitenames: ["基隆"]),
        Country(country: "新北市", sitenames: ["汐止", "萬里", "新店", "土城", "板橋", "新莊", "菜寮", "林口", "淡水", "三重", "永和", "富貴角", "新北(樹林)"]),
        Country(country: "臺北市", sitenames: ["士林", "中山", "萬華", "古亭", "松山", "大同", "陽明"]),
        Country(country: "桃園市", sitenames: ["桃園", "大園", "觀音", "平鎮", "龍潭", "中壢"]),
        Country(country: "新竹縣", sitenames: ["湖口", "竹東"]),
        Country(country: "新竹市", sitenames: ["新竹"]),
        Country(country: "苗栗縣", sitenames: ["頭份", "苗栗", "三義"]),
        Country(country: "臺中市", sitenames: ["豐原", "沙鹿", "大里", "忠明", "西屯", "大甲（日南國小）"]),
        Country(country: "彰化縣", sitenames: ["彰化", "線西", "二林", "大城", "彰化（員林）"]),
        Country(country: "南投縣", sitenames: ["南投", "竹山", "埔里"]),
        Country(country: "雲林縣", sitenames: ["斗六", "崙背", "臺西", "麥寮"]),
        Country(country: "嘉義縣", sitenames: ["新港", "朴子"]),
        Country(country: "嘉義市", sitenames: ["嘉義"]),
        Country(country: "臺南市", sitenames: ["新營", "善化", "安南", "臺南", "臺南（麻豆）"]),
        Country(country: "高雄市", sitenames: ["美濃", "橋頭", "仁武", "鳳山", "大寮", "林園", "楠梓", "左營", "前金", "前鎮", "小港", "復興", "高雄（湖內）"]),
        Country(country: "屏東縣", sitenames: ["屏東", "潮州", "恆春", "屏東（琉球）", "屏東(枋山)"]),
        Country(country: "臺東縣", sitenames: ["臺東", "關山"]),
        Country(country: "花蓮縣", sitenames: ["花蓮"]),
        Country(country: "宜蘭縣", sitenames: ["宜蘭", "冬山"]),
        Country(country: "連江縣", sitenames: ["馬祖"]),
        Country(country: "金門縣", sitenames: ["金門"]),
        Country(country: "澎湖縣", sitenames: ["馬公"])
    ]
}
