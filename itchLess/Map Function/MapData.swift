//
//  MapData.swift
//  itchLess
//
//  Created by 張銘育 on 2024/9/10.
//

import Foundation
import MapKit

struct Doctor {
    let name: String
    let link: URL
}

struct Location: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
    let name: String
    let address: String
    let phone: String
    let doctors: [Doctor]
    let clubMember: Bool
}

let locations = [
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.041852, longitude: 121.5178487),  // Taipei coordinates
        name: "臺大醫院皮膚科",
        address: "臺北市常德街 1 號 2 樓",
        phone: "(02) 2312 3456",
        doctors: [
            Doctor(name: "朱家瑜", link: URL(string: "https://www.ntuh.gov.tw/derm/Vcard.action?q_type=-1&q_itemCode=533")!),
            Doctor(name: "戴仰霞", link: URL(string: "https://www.ntuh.gov.tw/derm/Vcard.action?q_type=-1&q_itemCode=92")!),
            Doctor(name: "蔡呈芳", link: URL(string: "https://www.ntuh.gov.tw/derm/Vcard.action?q_type=-1&q_itemCode=91")!),
            Doctor(name: "烏惟新", link: URL(string: "https://www.ntuh.gov.tw/derm/Vcard.action?q_type=-1&q_itemCode=574")!),
            Doctor(name: "詹智傑", link: URL(string: "https://www.ntuh.gov.tw/derm/Vcard.action?q_type=-1&q_itemCode=574")!),
            Doctor(name: "卓雍哲", link: URL(string: "https://ssur.cc/aMtCjTzGd")!),
            Doctor(name: "葉陳璞", link: URL(string: "https://ssur.cc/aMtCjTzGd")!),
            Doctor(name: "許紹軒", link: URL(string: "https://ssur.cc/aMtCjTzGd")!)
        ],
        clubMember: true
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.042385, longitude: 121.516776),  // Taipei coordinates
        name: "臺大醫院小兒部",
        address: "臺北市常德街 1 號",
        phone: "(02) 2312 3456",
        doctors: [
            Doctor(name: "江伯倫", link: URL(string: "https://reg.ntuh.gov.tw/WebAdministration/DoctorServiceQueryByDrID.aspx?HospCode=T0&QueryID=006577")!),
            Doctor(name: "林于粲", link: URL(string: "https://reg.ntuh.gov.tw/WebAdministration/DoctorServiceQueryByDrID.aspx?HospCode=T0&QueryID=004548")!),
            Doctor(name: "楊曜旭", link: URL(string: "https://reg.ntuh.gov.tw/WebAdministration/DoctorServiceQueryByDrID.aspx?HospCode=T0&QueryID=005390")!),
            Doctor(name: "王麗潔", link: URL(string: "https://reg.ntuh.gov.tw/WebAdministration/DoctorServiceQueryByDrID.aspx?HospCode=T0&QueryID=009005")!),
            Doctor(name: "李志鴻", link: URL(string: "https://reg.ntuh.gov.tw/WebAdministration/DoctorServiceQueryByDrID.aspx?HospCode=T0&QueryID=018031")!),
            Doctor(name: "俞欣慧", link: URL(string: "https://reg.ntuh.gov.tw/WebAdministration/DoctorServiceQueryByDrID.aspx?HospCode=T0&QueryID=010072")!),
            Doctor(name: "胡雅喬", link: URL(string: "https://reg.ntuh.gov.tw/WebAdministration/DoctorServiceQueryByDrID.aspx?HospCode=T0&QueryID=109282")!)
        ],
        clubMember: true
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.042385, longitude: 121.516676),  // Taipei coordinates
        name: "臺大醫院免疫風濕過敏科",
        address: "臺北市常德街 1 號",
        phone: "(02) 2312 3456",
        doctors: [
            Doctor(name: "李克仁", link: URL(string: "https://reg.ntuh.gov.tw/webadministration/")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.0418183, longitude: 121.5035886),  // Taipei coordinates for Wanhua
        name: "臺大醫院北護分院皮膚科",
        address: "臺北市萬華區內江街 87 號",
        phone: "(02) 2381 6042",
        doctors: [
            Doctor(name: "烏惟新", link: URL(string: "https://www.bh.ntuh.gov.tw/?aid=51&pid=23&page_name=detail&iid=92")!),
            Doctor(name: "詹智傑", link: URL(string: "https://www.bh.ntuh.gov.tw/?aid=51&pid=23&page_name=detail&iid=129")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.026190, longitude: 121.522921),  // Coordinates for Zhonghua Road
        name: "台北市立聯合醫院和平院區皮膚科",
        address: "臺北市中華路二段 33 號",
        phone: "(02) 2388 9595",
        doctors: [
            Doctor(name: "李孟穗", link: URL(string: "https://webreg.tpech.gov.tw/RegOnline1_2.aspx?ZCode=H&DeptCode=1100&deptname=%E7%9A%AE%E8%86%9A%E7%A7%91")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.037512, longitude: 121.545224),  // Coordinates for Da'an District
        name: "台北市立聯合醫院和平院區小兒科",
        address: "臺北市大安區仁愛路四段10號",
        phone: "(02) 2388 9595",
        doctors: [
            Doctor(name: "張詠森", link: URL(string: "https://webreg.tpech.gov.tw/RegOnline1_2.aspx?ChaId=A104&tab=2&ZCode=F&DeptCode=0400&deptname=%E5%B0%8F%E5%85%92%E7%A7%91/%E5%81%A5%E5%85%92%E9%96%80%E8%A8%BA&thidname=%E4%BB%81%E6%84%9B%E9%99%A2%E5%8D%80&rom_dr=DAT75")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.0444575, longitude: 121.5167621),  // Coordinates for Zhongzheng District
        name: "好心肝診所皮膚科",
        address: "臺北市中正區公園路 30 號 2 樓",
        phone: "(02) 2370 0287",
        doctors: [
            Doctor(name: "王莉芳", link: URL(string: "https://www.glc.tw/register")!)
        ],
        clubMember: false
        
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.1206948, longitude: 121.7224004),
        name: "基隆長庚皮膚科",
        address: "基隆市安樂區麥金路 222 號",
        phone: "(02) 2431 3131",
        doctors: [
            Doctor(name: "鐘文宏", link: URL(string: "https://register.cgmh.org.tw/Department/2/23800A?id=3648&name=鐘文宏")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.1290848, longitude: 121.7387318),
        name: "三總基隆分院校二院區皮膚科",
        address: "基隆市仁愛區孝二路 39 號 2 樓",
        phone: "(02) 24231735",
        doctors: [
            Doctor(name: "陳奕先", link: URL(string: "https://gwebreg.ndmctsgh.edu.tw/webreg/calendar_type/9-eTR6ZuP8-WiVTha7VsIw%3D%3D")!)
        ],
        clubMember: false
    ),    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.1222532, longitude: 121.5222656),  // Coordinates for Beitou
        name: "北榮皮膚科",
        address: "臺北市北投區石牌路二段 201 號",
        phone: "(02) 2871 2121",
        doctors: [
            Doctor(name: "陳志強", link: URL(string: "https://www6.vghtpe.gov.tw/reg/opdTimetable.do?page=1&type=first&sec=008-108-208")!),
            Doctor(name: "張雲亭", link: URL(string: "https://www6.vghtpe.gov.tw/reg/opdTimetable.do?page=1&type=first&sec=008-108-208")!),
            Doctor(name: "李政源", link: URL(string: "https://www6.vghtpe.gov.tw/reg/opdTimetable.do?page=1&type=first&sec=008-108-208")!),
            Doctor(name: "李定達", link: URL(string: "https://www6.vghtpe.gov.tw/reg/opdTimetable.do?page=1&type=first&sec=008-108-208")!),
            Doctor(name: "吳貞宜", link: URL(string: "https://www6.vghtpe.gov.tw/reg/opdTimetable.do?page=1&type=first&sec=008-108-208")!),
            Doctor(name: "何翊芯", link: URL(string: "https://www6.vghtpe.gov.tw/reg/opdTimetable.do?page=1&type=first&sec=008-108-208")!),
            Doctor(name: "洪妙秋", link: URL(string: "https://www.vghtpe.gov.tw/Docpersnr.action?tno=DOC3989C")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.1222532, longitude: 121.5222656),  // Coordinates for Beitou
        name: "北榮醫院風濕免疫過敏科",
        address: "臺北市北投區石牌路二段 201 號",
        phone: "(02) 2871 2121",
        doctors: [
            Doctor(name: "曹彥博", link: URL(string: "https://www.vghtpe.gov.tw/Docpersnr.action?tno=DOC1352D")!),
            Doctor(name: "陳明翰", link: URL(string: "https://www.vghtpe.gov.tw/Docpersnr.action?tno=DOC1133G")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.0716466, longitude: 121.5924282),  // Coordinates for Neihu
        name: "三總皮膚科",
        address: "臺北市內湖區成功路二段 325 號",
        phone: "(02) 8792 3311",
        doctors: [
            Doctor(name: "陳奕先", link: URL(string: "https://www2.ndmctsgh.edu.tw/newwebreg/Register/Doctors?pos=B&DeptCode=303&DeptGroup=4")!),
            Doctor(name: "江建平", link: URL(string: "https://www2.ndmctsgh.edu.tw/newwebreg/Register/Doctors?pos=B&DeptCode=303&DeptGroup=4")!),
            Doctor(name: "王偉銘", link: URL(string: "https://www2.ndmctsgh.edu.tw/newwebreg/Register/Doctors?pos=B&DeptCode=303&DeptGroup=4")!),
            Doctor(name: "洪誌聰", link: URL(string: "https://www2.ndmctsgh.edu.tw/newwebreg/Register/Doctors?pos=B&DeptCode=303&DeptGroup=4")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.0716694, longitude: 121.5928527),  // Coordinates for Neihu
        name: "三總醫院內科部風濕免疫過敏科",
        address: "臺北市內湖區成功路二段 325 號",
        phone: "(02) 8792 3311",
        doctors: [
            Doctor(name: "盧俊吉", link: URL(string: "https://www2.ndmctsgh.edu.tw/NewWebReg/Register/Doctors?pos=B&DeptCode=112&DeptGroup=1&Filter=DOC10561")!),
            Doctor(name: "劉峰誠", link: URL(string: "https://www2.ndmctsgh.edu.tw/NewWebReg/Register/Doctors?pos=B&DeptCode=112&DeptGroup=1&Filter=DOC10399")!),
            Doctor(name: "黎亞綺", link: URL(string: "https://wwwv.tsgh.ndmctsgh.edu.tw/DocDet/191/10032/24980/3026")!),
            Doctor(name: "陳相成", link: URL(string: "https://wwwv.tsgh.ndmctsgh.edu.tw/DocDet/191/10032/24980/277")!),
            Doctor(name: "朱士傑", link: URL(string: "https://wwwv.tsgh.ndmctsgh.edu.tw/DocDet/191/10032/24980/279")!),
            Doctor(name: "郭三元", link: URL(string: "https://wwwv.tsgh.ndmctsgh.edu.tw/DocDet/191/10032/24980/278")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.0161331, longitude: 121.5295147),  // Coordinates for Zhongzheng
        name: "三總汀州分院皮膚科",
        address: "臺北市中正區汀州路三段 40 號",
        phone: "(02) 2365 9500",
        doctors: [
            Doctor(name: "江建平", link: URL(string: "https://wwwv.tsgh.ndmctsgh.edu.tw/DocDet/191/10016/25008/484")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.0364269, longitude: 121.5547681),  // Coordinates for Ren'ai Road
        name: "台北國泰皮膚科",
        address: "臺北市仁愛路四段 280 號",
        phone: "(02) 2708 2121",
        doctors: [
            Doctor(name: "林鳳玲", link: URL(string: "https://reg.cgh.org.tw/tw/reg/main_08.jsp?dr=09656")!),
            Doctor(name: "羅陽", link: URL(string: "https://reg.cgh.org.tw/tw/reg/main.jsp")!),
            Doctor(name: "俞佑", link: URL(string: "https://reg.cgh.org.tw/tw/reg/main_08.jsp?dr=09656")!),
            Doctor(name: "陳怡安", link: URL(string: "https://reg.cgh.org.tw/tw/reg/main_02.jsp")!),
            Doctor(name: "楊哲文", link: URL(string: "https://reg.cgh.org.tw/tw/reg/main_02.jsp")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.0368806, longitude: 121.553594),  // Coordinates for Ren'ai Road
        name: "國泰醫院小兒科",
        address: "臺北市仁愛路四段 280 號",
        phone: "(02) 2708 2121",
        doctors: [
            Doctor(name: "洪詩萍", link: URL(string: "https://reg.cgh.org.tw/tw/reg/main_02.jsp")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.0541858, longitude: 121.5141512),  // Coordinates for Datong District
        name: "志勛皮膚科診所",
        address: "臺北市大同區重慶北路二段 2 號",
        phone: "(02) 2552 2717",
        doctors: [
            Doctor(name: "陳偉迪", link: URL(string: "https://netreg.realsun.com.tw/m/3501093977?subject=11&doctor=%E9%99%B3%E5%81%89%E8%BF%AA")!),
            Doctor(name: "李勇毅", link: URL(string: "https://netreg.realsun.com.tw/m/3501093977?subject=11&doctor=%E6%9D%8E%E5%8B%87%E6%AF%85")!)
        ],
        clubMember: false
    ),
    //MARK: No link
    //    Location(
    //        coordinate: CLLocationCoordinate2D(latitude: 25.065123, longitude: 121.519634),  // Coordinates for Datong District
    //        name: "林仲皮膚科診所",
    //        address: "臺北市大同區延平北路 2 段 20 號",
    //        phone: "(02) 2552 5138",
    //        doctors: [
    //            Doctor(name: "林仲", link: nil)  // No URL available for this doctor
    //        ],
    //        clubMember: false
    //    )
    //    ,
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.0272445, longitude: 121.5631515),  // Coordinates for Xinyi District
        name: "北醫附醫皮膚科",
        address: "臺北市信義區吳興街 252 號",
        phone: "(02) 2737 2181",
        doctors: [
            Doctor(name: "林明秀", link: URL(string: "https://www.tmuh.org.tw/service/regist/11")!),
            Doctor(name: "李宗儒", link: URL(string: "https://www.tmuh.org.tw/service/regist/11")!),
            Doctor(name: "李采暹", link: URL(string: "https://www.tmuh.org.tw/service/regist/11")!),
            Doctor(name: "蔡秀欣", link: URL(string: "https://www.tmuh.org.tw/service/regist/11")!),
            Doctor(name: "張華景", link: URL(string: "https://www.tmuh.org.tw/service/regist/11")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.0272445, longitude: 121.5631515),  // Coordinates for Xinyi District
        name: "北醫附醫風濕過敏免疫科",
        address: "臺北市信義區吳興街 252 號",
        phone: "(02) 2737 2181",
        doctors: [
            Doctor(name: "林子閔", link: URL(string: "https://www.tmuh.org.tw/service/regist/AE")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.0588457, longitude: 121.5223977),  // Coordinates for Zhongshan District
        name: "馬偕醫院皮膚科",
        address: "臺北市中山區中山北路二段 92 號",
        phone: "(02) 2543 3535",
        doctors: [
            Doctor(name: "蕭百芬", link: URL(string: "https://www.mmh.org.tw/register_divide.php?depid=50")!),
            Doctor(name: "吳南霖", link: URL(string: "https://www.mmh.org.tw/register_divide.php?depid=50")!),
            Doctor(name: "林揚志", link: URL(string: "https://www.mmh.org.tw/register_divide.php?depid=50")!),
            Doctor(name: "王仁佑", link: URL(string: "https://www.mmh.org.tw/register_divide.php?depid=50")!),
            Doctor(name: "呂柏萱", link: URL(string: "https://www.mmh.org.tw/register_divide.php?depid=50")!),
            Doctor(name: "陳秀琴", link: URL(string: "https://www.mmh.org.tw/register_divide.php?depid=50")!),
            Doctor(name: "王研人", link: URL(string: "https://www.mmh.org.tw/register_divide.php?depid=50")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.0964041, longitude: 121.5201549),  // Coordinates for Shilin District
        name: "新光醫院小兒科",
        address: "臺北市士林區文昌路 95 號",
        phone: "(02) 2833 2211",
        doctors: [
            Doctor(name: "王怜人", link: URL(string: "https://www.skh.org.tw/skh/19dcc04115.html?id=M000689&division_id=2500&regs=ND0019")!),
            Doctor(name: "朱宮瑤", link: URL(string: "https://www.skh.org.tw/skh_regis/#/register/step")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.999925, longitude: 121.5581444),  // Coordinates for Wenshan District
        name: "萬芳醫院皮膚科",
        address: "臺北市文山區興隆路三段 111 號",
        phone: "(02) 2930 7930",
        doctors: [
            Doctor(name: "江盈儀", link: URL(string: "https://www.wanfang.gov.tw/p3_register_e3.aspx?deptcode=3400&depttype=B&deptdesc=%E7%9A%AE%E8%86%9A%E7%A7%91&depttype2=T")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.077801, longitude: 121.5756048),  // Coordinates for Neihu District
        name: "內湖國泰診所皮膚科",
        address: "台北市內湖區瑞光路 337 號",
        phone: "(02) 8797 2121",
        doctors: [
            Doctor(name: "羅陽", link: URL(string: "https://reg.cgh.org.tw/tw/reg/main_02.jsp")!),
            Doctor(name: "廖澤源", link: URL(string: "https://reg.cgh.org.tw/tw/reg/main_08.jsp")!),
            Doctor(name: "鄭煜彬", link: URL(string: "https://neihu.cgh.org.tw/ec99/rwd1309A/product_doct.asp?prodid=14504&category_id=77")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.0555049, longitude: 121.5496029),  // Coordinates for Songshan District
        name: "台北長庚醫院皮膚科",
        address: "臺北市松山區敦化北路 199 號",
        phone: "(02) 2713 5211",
        doctors: [
            Doctor(name: "施一新", link: URL(string: "https://register.cgmh.org.tw/Department/1/13800A138A0A138B0A")!),
            Doctor(name: "李華恩", link: URL(string: "https://register.cgmh.org.tw/Department/1/13800A138A0A138B0A")!),
            Doctor(name: "林靜怡", link: URL(string: "https://register.cgmh.org.tw/Department/1/13800A138A0A138B0A")!),
            Doctor(name: "楊靜宜", link: URL(string: "https://register.cgmh.org.tw/Department/1/13800A138A0A138B0A")!),
            Doctor(name: "紀敏慧", link: URL(string: "https://register.cgmh.org.tw/Department/1/13800A138A0A138B0A")!),
            Doctor(name: "許仲瑤", link: URL(string: "https://register.cgmh.org.tw/Department/1/13800A138A0A138B0A")!),
            Doctor(name: "陳俊賓", link: URL(string: "https://register.cgmh.org.tw/Department/1/13800A138A0A138B0A")!),
            Doctor(name: "黃毓惠", link: URL(string: "https://register.cgmh.org.tw/Department/1/13800A138A0A138B0A")!),
            Doctor(name: "鐘文宏", link: URL(string: "https://register.cgmh.org.tw/Department/1/13800A138A0A138B0A")!),
            Doctor(name: "盧俊瑋", link: URL(string: "https://register.cgmh.org.tw/Department/1/13800A138A0A138B0A")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.9761498, longitude: 121.4487246),  // Coordinates for Tucheng District
        name: "長庚醫院土城皮膚科",
        address: "新北市土城區金城路二段 6 號",
        phone: "(02) 2263 0588",
        doctors: [
            Doctor(name: "楊靜宜", link: URL(string: "https://register.cgmh.org.tw/Department/V/V3800A")!),
            Doctor(name: "施一新", link: URL(string: "https://register.cgmh.org.tw/Department/V/V3800A")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.9759891, longitude: 121.4487425),  // Coordinates for Tucheng District
        name: "長庚土城醫院小兒風濕過敏免疫科",
        address: "新北市土城區金城路二段 6 號",
        phone: "(02) 2263 0588",
        doctors: [
            Doctor(name: "黃璟隆", link: URL(string: "https://cghdpt.cgmh.org.tw/branch/cht/doctor/detail/0254")!),
            Doctor(name: "葉育欣", link: URL(string: "https://cghdpt.cgmh.org.tw/branch/cht/doctor/detail/1685")!),
            Doctor(name: "陳力振", link: URL(string: "https://cghdpt.cgmh.org.tw/dept/VA100/team/detail/2226")!)
        ],
        clubMember: false
    ),
    //    Location(
    //        coordinate: CLLocationCoordinate2D(latitude: 25.058043, longitude: 121.430535),  // Coordinates for Taishan District
    //        name: "輔大醫院皮膚科",
    //        address: "新北市泰山區貴子路 69 號",
    //        phone: "(02) 2312 3456",
    //        doctors: [
    //            Doctor(name: "羅婉心", link: nil)  // No valid URL provided
    //        ],
    //        clubMember: false
    //    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.997236, longitude: 121.4532954),  // Coordinates for Banqiao District
        name: "亞東醫院皮膚科",
        address: "新北市板橋區南雅南路二段 21 號",
        phone: "(02) 8966 9000",
        doctors: [
            Doctor(name: "陳宥嘉", link: URL(string: "https://www.femh.org.tw/webregs/RegSec1?mtypes=1&ttypes=0&ptypes=-1&id=0240&uid=")!),
            Doctor(name: "蔡雅竹", link: URL(string: "https://www.femh.org.tw/webregs/RegSec1?mtypes=1&ttypes=0&ptypes=-1&id=0240&uid=")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.9926232, longitude: 121.4935872),  // Coordinates for Zhonghe District
        name: "雙和醫院皮膚科",
        address: "新北市中和區中正路 291 號",
        phone: "(02) 2249 0088",
        doctors: [
            Doctor(name: "李婉若", link: URL(string: "https://www.shh.org.tw/page/Shhreg.aspx?deptCode=91")!),
            Doctor(name: "劉洋豪", link: URL(string: "https://www.shh.org.tw/page/Shhreg.aspx?deptCode=91")!),
            Doctor(name: "施怡賢", link: URL(string: "https://www.shh.org.tw/page/Shhreg.aspx?deptCode=91")!),
            Doctor(name: "鄒嘉倫", link: URL(string: "https://www.shh.org.tw/page/Shhreg.aspx?deptCode=91")!)
        ],
        clubMember: true
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.0726989, longitude: 121.6611849),  // Coordinates for Xizhi District
        name: "汐止國泰皮膚科",
        address: "新北市汐止區建成路 59 巷 2 號",
        phone: "(02) 2648 2121",
        doctors: [
            Doctor(name: "俞佑", link: URL(string: "https://reg.cgh.org.tw/tw/reg/main_08.jsp?dr=12491")!),
            Doctor(name: "林鳳玲", link: URL(string: "https://reg.cgh.org.tw/tw/reg/main_08.jsp?dr=09656")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.219501, longitude: 121.628784),  // Coordinates for Jinshan District
        name: "臺大醫院金山分院皮膚科",
        address: "新北市金山區五湖里 11 鄰玉爐路 7 號",
        phone: "(02) 2356 0857",
        doctors: [
            Doctor(name: "卓雍哲", link: URL(string: "https://www.js.ntuh.gov.tw/DoctorContent.aspx?id=25104&type=402")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.9375933, longitude: 121.3621403),  // Coordinates for Sanxia District
        name: "恩主公醫院皮膚科",
        address: "新北市三峽區中山路 258 號",
        phone: "(02) 2671 9595",
        doctors: [
            Doctor(name: "王綺嫻", link: URL(string: "https://www.eck.org.tw/guide/outpatient/registered/%e6%88%91%e8%a6%81%e6%8e%9b%e8%99%9f/?getDiv=GetDivDoctorListInfoWeb&DivNo=5700")!)
        ],
        clubMember: true
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.061042, longitude: 121.3679272),  // Coordinates for Gueishan District
        name: "林口長庚醫院皮膚科",
        address: "桃園市龜山區復興街 5 號",
        phone: "(03) 328 1200",
        doctors: [
            Doctor(name: "黃毓惠", link: URL(string: "https://register.cgmh.org.tw/Department/3/33800A338A0A338B0A")!),
            Doctor(name: "許仲瑤", link: URL(string: "https://register.cgmh.org.tw/Department/3/33800A338A0A338B0A")!),
            Doctor(name: "陳冠伃", link: URL(string: "https://register.cgmh.org.tw/Department/3/33800A338A0A338B0A")!),
            Doctor(name: "張耀宇", link: URL(string: "https://register.cgmh.org.tw/Department/3/33800A338A0A338B0A")!),
            Doctor(name: "鐘文宏", link: URL(string: "https://register.cgmh.org.tw/Department/3/33800A338A0A338B0A")!),
            Doctor(name: "盧俊瑋", link: URL(string: "https://register.cgmh.org.tw/Department/3/33800A338A0A338B0A")!),
            Doctor(name: "楊靜宜", link: URL(string: "https://register.cgmh.org.tw/Department/3/33800A338A0A338B0A")!),
            Doctor(name: "李華恩", link: URL(string: "https://register.cgmh.org.tw/Department/3/33800A338A0A338B0A")!),
            Doctor(name: "陳俊賓", link: URL(string: "https://www.cgmh.org.tw/tw/Services/DoctorInfo/4008")!),
            Doctor(name: "施一新", link: URL(string: "https://www.cgmh.org.tw/tw/Services/DoctorInfo/1606")!)
        ],
        clubMember: true
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.061042, longitude: 121.3679272),  // Coordinates for Gueishan District
        name: "林口長庚醫院兒童氣喘風濕科",
        address: "桃園市龜山區復興街 5 號",
        phone: "(03) 328 1200",
        doctors: [
            Doctor(name: "姚宗杰", link: URL(string: "https://www.cgmh.org.tw/tw/Services/DoctorInfo/3537")!),
            Doctor(name: "黃璟隆", link: URL(string: "https://www.cgmh.org.tw/tw/Services/DoctorInfo/0254")!),
            Doctor(name: "葉國偉", link: URL(string: "https://www.cgmh.org.tw/tw/Services/DoctorInfo/2285")!),
            Doctor(name: "林思偕", link: URL(string: "https://www.cgmh.org.tw/tw/Services/DoctorInfo/2462")!),
            Doctor(name: "吳昭儀", link: URL(string: "https://www.cgmh.org.tw/tw/Services/DoctorInfo/0333")!),
            Doctor(name: "歐良修", link: URL(string: "https://www.cgmh.org.tw/tw/Services/DoctorInfo/3115")!),
            Doctor(name: "李文益", link: URL(string: "https://www.cgmh.org.tw/tw/Services/DoctorInfo/2707")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 25.029841, longitude: 121.3666034),  // Coordinates for Taoyuan
        name: "桃園長庚醫院皮膚科",
        address: "桃園市龜山區頂湖路 123 號",
        phone: "(03) 319 6200",
        doctors: [
            Doctor(name: "黃昭瑜", link: URL(string: "https://register.cgmh.org.tw/Department/5/53800A")!),
            Doctor(name: "張學倫", link: URL(string: "https://register.cgmh.org.tw/Department/5/53800A")!),
            Doctor(name: "盧俊瑋", link: URL(string: "https://register.cgmh.org.tw/Department/5/53800A")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.9822258, longitude: 121.3123763),  // Coordinates for Taoyuan District
        name: "桃園聖保祿醫院皮膚科",
        address: "桃園市桃園區建新街 123 號",
        phone: "(03) 361 3141",
        doctors: [
            Doctor(name: "鐘文宏", link: URL(string: "https://rms.sph.org.tw/RMSTimeTable.aspx?dpt=S3800A")!),
            Doctor(name: "陳俊賓", link: URL(string: "https://rms.sph.org.tw/RMSTimeTable.aspx?dpt=S3800A")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.7982737, longitude: 120.9652672),  // Coordinates for Hsinchu City
        name: "新竹國泰醫院皮膚科",
        address: "新竹市東區中華路二段 678 號",
        phone: "(03) 527 8999",
        doctors: [
            Doctor(name: "陳怡安", link: URL(string: "https://reg.cgh.org.tw/tw/reg/main_01.jsp")!),
            Doctor(name: "鄭煜彬", link: URL(string: "https://reg.cgh.org.tw/tw/reg/main_01.jsp")!),
            Doctor(name: "朱建和", link: URL(string: "https://reg.cgh.org.tw/tw/reg/main_08.jsp?dr=13259")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.8001138, longitude: 120.9906792),  // Coordinates for Mackay Memorial Hospital Hsinchu
        name: "新竹馬偕醫院皮膚科",
        address: "新竹市東區光復路二段 690 號",
        phone: "(03) 688 9595",
        doctors: [
            Doctor(name: "吳南霖", link: URL(string: "https://hcreg.mmh.org.tw/Dept.aspx?dept=24&Lang=C")!),
            Doctor(name: "謝雅如", link: URL(string: "https://hcreg.mmh.org.tw/Dept.aspx?dept=24&Lang=C")!),
            Doctor(name: "李幼華", link: URL(string: "https://hcreg.mmh.org.tw/Dept.aspx?dept=24&Lang=C")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.8158871, longitude: 120.9806124),  // Coordinates for National Taiwan University Hospital Hsinchu Branch
        name: "臺大新竹分院皮膚科",
        address: "新竹市北區經國路一段442巷25號",
        phone: "(03) 532 6151",
        doctors: [
            Doctor(name: "邱顯鎰", link: URL(string: "https://reg.ntuh.gov.tw/WebAdministration/NewDoctorTableForSpecificDept.aspx?x=SABvAHMAcAA9AFQANAAmAFIAZQBnAD0AJgBEAGUAcAB0AD0ARABFAFIATQAmAFMAdQBiAEQAZQBwAHQAQwBvAGQAZQA9ACYAaQBzAFMAdQBiAEQAZQBwAHQAPQBOACYAdwBlAGUAawA9ADEAJgBTAG8AcgB0AD0A0")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.8237272, longitude: 121.0139935),  // Coordinates for Zhubei City
        name: "東元綜合醫院",
        address: "新竹縣竹北市縣政二路69 號",
        phone: "(03) 553 4545",
        doctors: [
            Doctor(name: "陳偉迪", link: URL(string: "https://w3.tyh.com.tw/WebRegList_Dept.aspx?d=19")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.6870676, longitude: 120.9073661),  // Coordinates for Miaoli County
        name: "為恭紀念醫院過敏風濕免疫科",
        address: "苗栗縣頭份市信義路 128 號",
        phone: "(037) 676 811",
        doctors: [
            Doctor(name: "楊凱介", link: URL(string: "https://www.cmuh.cmu.edu.tw/BrandHome/PageDetail/1272")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.1306043, longitude: 120.6490878),  // Coordinates for Nantun District, Taichung
        name: "美之道皮膚科診所",
        address: "臺中市南屯區文心南六路 175 號",
        phone: "(04) 2475 5998",
        doctors: [
            Doctor(name: "邱品齊", link: URL(string: "https://reg.cgh.org.tw/tw/reg/main_01.jsp")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.1214624, longitude: 120.6501091),  // Coordinates for South District, Taichung
        name: "臺中中山附醫皮膚科",
        address: "臺中市南區建國北路一段 110 號",
        phone: "(04) 2473 9595",
        doctors: [
            Doctor(name: "邱足滿", link: URL(string: "https://www.csh.org.tw/DoctorIntro/aboutDoctorsDet.aspx?department=20220711161923032&departmentName=%e7%9a%ae%e8%86%9a%e7%a7%91&doctor=20220711161923032")!),
            Doctor(name: "賴柏如", link: URL(string: "https://www.csh.org.tw/DoctorIntro/aboutDoctorsDet.aspx?department=20180530095649359&departmentName=%E7%9A%AE%E8%86%9A%E7%A7%91&doctor=20180530095649359")!),
            Doctor(name: "蕭玉屏", link: URL(string: "https://www.csh.org.tw/DoctorIntro/aboutDoctorsDet.aspx?department=20130307092541670&departmentName=%e7%9a%ae%e8%86%9a%e7%a7%91&doctor=20130307092541670")!),
            Doctor(name: "洪琡茹", link: URL(string: "https://www.csh.org.tw/DoctorIntro/aboutDoctorsDet.aspx?department=20200803143220205&departmentName=%e7%9a%ae%e8%86%9a%e7%a7%91&doctor=20200803143220205")!),
            Doctor(name: "鄭人榕", link: URL(string: "https://www.csh.org.tw/DoctorIntro/aboutDoctorsDet.aspx?department=20180530095910083&departmentName=%e7%9a%ae%e8%86%9a%e7%a7%91&doctor=20180530095910083")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.1572247, longitude: 120.6804919),  // Coordinates for North District, Taichung
        name: "中醫大附醫皮膚科",
        address: "臺中市北區育德路 2 號",
        phone: "(04) 2205 6631",
        doctors: [
            Doctor(name: "張廖年峰", link: URL(string: "https://hcreg.mmh.org.tw/Dept.aspx?dept=24&Lang=C")!),
            Doctor(name: "吳伯元", link: URL(string: "https://hcreg.mmh.org.tw/Dept.aspx?dept=24&Lang=C")!),
            Doctor(name: "方心禹", link: URL(string: "https://www.cmuh.cmu.edu.tw/Department/Team?detail=77&current=12&source=dep")!),
            Doctor(name: "謝雅惠", link: URL(string: "https://www.cmuh.cmu.edu.tw/Department/Team?detail=77&current=12&source=dep")!)
        ],
        clubMember: false
    ),
    //                Location(
    //                    coordinate: CLLocationCoordinate2D(latitude: 24.182494, longitude: 120.609579),  // Coordinates for Shalu District, Taichung
    //                    name: "沙鹿童綜合醫院皮膚科",
    //                    address: "臺中市沙鹿區成功西街 8 號",
    //                    phone: "(04) 2662 6161",
    //                    doctors: [
    //                        Doctor(name: "邱瑩明", link: URL(string: "https://zh-tw.sltung.com.tw/tung/OPD/108_1.htm")!),
    //                        Doctor(name: "方毓涵", link: nil)  // Check the correct URL
    //                    ],
    //                    clubMember: false
    //                ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.1091162, longitude: 120.6804973),  // Coordinates for Dali District, Taichung
        name: "大里仁愛醫院皮膚科",
        address: "臺中市大里區東榮路 483 號",
        phone: "(03) 2481 9900",
        doctors: [
            Doctor(name: "黃昭瑜", link: URL(string: "https://www.jah.org.tw/JCHReg/Query/J")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.0712254, longitude: 120.5445125),  // Coordinates for Changhua City
        name: "彰基皮膚科",
        address: "彰化市南校街 135 號",
        phone: "(04) 723 8595",
        doctors: [
            Doctor(name: "許修誠", link: URL(string: "https://www1.cch.org.tw/opd/service_e_1.aspx?regdate=20220926&mday=1&shift=2&dr_no=0145900&d_name=%e8%a8%b1%e4%bf%ae%e8%aa%a0&loc=0065&floor=02")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 23.962824, longitude: 120.5672136),  // Coordinates for Yuanlin City
        name: "員基皮膚科",
        address: "彰化縣員林市莒光路 456 號",
        phone: "(04) 838 3900",
        doctors: [
            Doctor(name: "許修誠", link: URL(string: "https://bc.cch.org.tw/BCRG/opd/service_e_1.aspx?regdate=20220930&mday=5&shift=3&dr_no=0145900&d_name=%e8%a8%b1%e4%bf%ae%e8%aa%a0&loc=0201")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 23.9681666, longitude: 120.9564424),  // Coordinates for Puli Township, Nantou
        name: "中榮埔里分院皮膚科",
        address: "南投縣埔里鎮中山路三段 339 號",
        phone: "(049) 299 0833",
        doctors: [
            Doctor(name: "翁毓菁", link: URL(string: "https://registry.pulivh.gov.tw/register/")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 23.6973798, longitude: 120.5258575),  // Coordinates for Douliu City, Yunlin
        name: "臺大雲林分院皮膚科",
        address: "雲林縣斗六市雲林路二段 579 號",
        phone: "(05) 532 3911",
        doctors: [
            Doctor(name: "何冠頤", link: URL(string: "https://reg.ntuh.gov.tw/webadministration/ClinicListUnderSpecificTemplateIDSE.aspx?ServiceIDSE=5488497")!),
            Doctor(name: "葉陳璞", link: URL(string: "https://reg.ntuh.gov.tw/webadministration/ClinicListUnderSpecificTemplateIDSE.aspx?ServiceIDSE=5485787")!),
            Doctor(name: "許紹軒", link: URL(string: "https://reg.ntuh.gov.tw/webadministration/ClinicListUnderSpecificTemplateIDSE.aspx?ServiceIDSE=5493250")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 23.4685808, longitude: 120.2828844),  // Coordinates for Chiayi
        name: "嘉義長庚醫院皮膚科",
        address: "嘉義縣朴子市嘉朴路西段 8 號",
        phone: "(05) 362 1000",
        doctors: [
            Doctor(name: "何宜承", link: URL(string: "https://register.cgmh.org.tw/Checkin/6/63800A/20220927/0554/1")!),
            Doctor(name: "張詠為", link: URL(string: "https://cghdpt.cgmh.org.tw/branch/jia/doctor/detail/6809")!),
            Doctor(name: "曾涵琪", link: URL(string: "https://cghdpt.cgmh.org.tw/branch/jia/doctor/detail/6809")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 23.020866, longitude: 120.2220927),  // Coordinates for Tainan
        name: "奇美醫院皮膚科",
        address: "臺南市永康區中華路 901 號",
        phone: "(06) 281 2811",
        doctors: [
            Doctor(name: "鄭百珊", link: URL(string: "https://www.chimei.org.tw/opdschedule/register.aspx?ihosp=10&lang=CH&idept=777&ndept=%E7%9A%AE%E8%86%9A%E7%A7%91")!),
            Doctor(name: "林旻憲", link: URL(string: "https://www.chimei.org.tw/opdschedule/register.aspx?ihosp=10&lang=CH&idept=777&ndept=%E7%9A%AE%E8%86%9A%E7%A7%91")!),
            Doctor(name: "賴豐傑", link: URL(string: "https://www.chimei.org.tw/opdschedule/register.aspx?ihosp=10&lang=CH&idept=777&ndept=%E7%9A%AE%E8%86%9A%E7%A7%91")!)
        ],
        clubMember: false
    ),Location(
        coordinate: CLLocationCoordinate2D(latitude: 23.020866, longitude: 120.2220927), // Coordinates for 奇美醫院
        name: "奇美醫院皮膚科",
        address: "臺南市永康區中華路 901 號",
        phone: "(06) 281 2811",
        doctors: [
            Doctor(name: "鄭百珊", link: URL(string: "https://www.chimei.org.tw/opdschedule/register.aspx?ihosp=10&lang=CH&idept=777&ndept=%E7%9A%AE%E8%86%9A%E7%A7%91")!),
            Doctor(name: "林旻憲", link: URL(string: "https://www.chimei.org.tw/opdschedule/register.aspx?ihosp=10&lang=CH&idept=777&ndept=%E7%9A%AE%E8%86%9A%E7%A7%91")!),
            Doctor(name: "賴豐傑", link: URL(string: "https://www.chimei.org.tw/opdschedule/register.aspx?ihosp=10&lang=CH&idept=777&ndept=%E7%9A%AE%E8%86%9A%E7%A7%91")!)
        ],
        clubMember: true
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 23.289918, longitude: 120.32924), // Coordinates for 柳營奇美皮膚科
        name: "柳營奇美皮膚科",
        address: "臺南市柳營區太康里太康 201 號",
        phone: "(06) 622 6999",
        doctors: [
            Doctor(name: "林旻憲", link: URL(string: "https://www.chimei.org.tw/opdschedule/index.aspx?ihosp=13&lang=CH")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 23.181671, longitude: 120.183728), // Coordinates for 佳里奇美皮膚科
        name: "佳里奇美皮膚科",
        address: "台南市佳里區佳興里佳里興 606 號",
        phone: "(06) 726 3333",
        doctors: [
            Doctor(name: "鄭百珊", link: URL(string: "https://www.chimei.org.tw/opdschedule/index.aspx?ihosp=14&lang=CH")!),
            Doctor(name: "賴豐傑", link: URL(string: "https://www.chimei.org.tw/opdschedule/index.aspx?ihosp=14&lang=CH")!)
        ],
        clubMember: true
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 23.002347, longitude: 120.2193717),  // Coordinates for 成大醫院
        name: "成大醫院皮膚科",
        address: "臺南市勝利路 138 號",
        phone: "(06) 235 3535",
        doctors: [
            Doctor(name: "趙曉秋", link: URL(string: "https://tandem.hosp.ncku.edu.tw/Tandem/MainUI.aspx?Lang=&skv=ax2i0%2Bu9%2BGx3YNSsMcvwa2JqtiDPIULOGzUPaRcYRhc%3D")!),
            Doctor(name: "廖怡貞", link: URL(string: "https://tandem.hosp.ncku.edu.tw/tandem/MainUI.aspx?Lang=&skv=ax2i0%2bu9%2bGx3YNSsMcvwa2JqtiDPIULOGzUPaRcYRhc%3d")!),
            Doctor(name: "杜威廷", link: URL(string: "https://tandem.hosp.ncku.edu.tw/tandem/MainUI.aspx?Lang=&skv=ax2i0%2bu9%2bGx3YNSsMcvwa2JqtiDPIULOGzUPaRcYRhc%3d")!),
            Doctor(name: "楊朝鈞", link: URL(string: "https://tandem.hosp.ncku.edu.tw/tandem/MainUI.aspx?Lang=&skv=ax2i0%2bu9%2bGx3YNSsMcvwa2JqtiDPIULOGzUPaRcYRhc%3d")!),
            Doctor(name: "王德華", link: URL(string: "https://tandem.hosp.ncku.edu.tw/tandem/MainUI.aspx?Lang=&skv=ax2i0%2bu9%2bGx3YNSsMcvwa2JqtiDPIULOGzUPaRcYRhc%3d")!),
            Doctor(name: "許釗凱", link: URL(string: "https://tandem.hosp.ncku.edu.tw/tandem/MainUI.aspx?Lang=&skv=ax2i0%2bu9%2bGx3YNSsMcvwa2JqtiDPIULOGzUPaRcYRhc%3d")!)
        ],
        clubMember: true
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 23.1808032, longitude: 120.2329263),  // Coordinates for 麻豆新樓醫院
        name: "麻豆新樓醫院皮膚科",
        address: "臺南市麻豆區麻佳路一段 207 號",
        phone: "(06) 570 2228",
        doctors: [
            Doctor(name: "李幸娟", link: URL(string: "https://class.sinlau.org.tw/mode02.asp?m=201104141322301&t=sub&da=2")!)
        ],
        clubMember: false
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 23.0648363, longitude: 120.222761),  // Coordinates for 中國安南醫院
        name: "中國安南醫院皮膚科",
        address: "臺南市安南區長和路二段 66 號",
        phone: "(06) 355 6131",
        doctors: [
            Doctor(name: "羅子焜", link: URL(string: "https://www.tmanh.org.tw/OnlineAppointment/DymSchedule?table=37000A")!),
            Doctor(name: "陳郁蓁", link: URL(string: "https://www.tmanh.org.tw/Doctor/DoctorInfo?empNo=D74171")!)
        ],
        clubMember: true
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 22.64962, longitude: 120.3561418), // Placeholder for coordinates
        name: "高雄長庚醫院皮膚科",
        address: "高雄市鳥松區大埤路 123 號",
        phone: "(07) 731 7123",
        doctors: [
            Doctor(name: "李志宏", link: URL(string: "https://register.cgmh.org.tw/Department/8/83800A")!),
            Doctor(name: "鄭裕文", link: URL(string: "https://register.cgmh.org.tw/Department/8/83800A")!),
            Doctor(name: "黃麗珊", link: URL(string: "https://register.cgmh.org.tw/Department/8/83800A")!),
            Doctor(name: "曾涵琪", link: URL(string: "https://register.cgmh.org.tw/Department/8/83800A")!),
            Doctor(name: "林尚宏", link: URL(string: "https://register.cgmh.org.tw/Department/8/83800A")!)
        ],
        clubMember: false // Placeholder for club membership status
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 22.6794032, longitude: 120.323305), // Placeholder for coordinates
        name: "高雄榮總醫院皮膚科",
        address: "高雄市左營區大中一路 386 號",
        phone: "(07) 342 2288",
        doctors: [
            Doctor(name: "洪千惠", link: URL(string: "https://webreg.vghks.gov.tw/wps/portal/web/onlinereg/!ut/p/b1/hY7JDoIwGIQf6S8FWY6IlcWWTRJKLwSDIRAWNQQDTy94F-c2yTcLCMgkbOgYY0WWgYPoi6muirEe-qLdvFBzi8VhcLElZBNTRa7vhpqpB0hJ0ApkOwDV_uVT4EjJr43-YPPI6WJNSbNE0rEiNFtYwubQ4KQ8x9HpaZDyBR6Iqh1u67UUxG75tv0F0A-ZCHxn6O7QiZYePOf9Aeqyi5E!/dl4/d5/L0lDU0lKSmdwcGlRb0tVUWtnQSEhL29Pb2dBRUlRaGpFQ1VJZ0FJQUl5RkFNaHdVaFM0TFVFQVVvIS80RzNhRDJnanZ5aERVd3BNaFQ5VUl5RkVFQSEhL1o3X0NNUlBPS0cxMEdFQTYwSU5JUDdBOE8wNFQxLzAvNTMzNTk3MTg5MDAxL3NlbGVjdENsaW5pYw!!/?dtlid=43&amp;ptitle=獨立專科&amp;dtletitl=Dermatology&amp;dtltitle=皮膚科&amp;dtlcontent=&amp;dtlecontent=")!),
            Doctor(name: "曾慧文", link: URL(string: "https://webreg.vghks.gov.tw/wps/portal/web/onlinereg/!ut/p/b1/hY7JDoIwGIQf6S8FWY6IlcWWTRJKLwSDIRAWNQQDTy94F-c2yTcLCMgkbOgYY0WWgYPoi6muirEe-qLdvFBzi8VhcLElZBNTRa7vhpqpB0hJ0ApkOwDV_uVT4EjJr43-YPPI6WJNSbNE0rEiNFtYwubQ4KQ8x9HpaZDyBR6Iqh1u67UUxG75tv0F0A-ZCHxn6O7QiZYePOf9Aeqyi5E!/dl4/d5/L0lDU0lKSmdwcGlRb0tVUWtnQSEhL29Pb2dBRUlRaGpFQ1VJZ0FJQUl5RkFNaHdVaFM0TFVFQVVvIS80RzNhRDJnanZ5aERVd3BNaFQ5VUl5RkVFQSEhL1o3X0NNUlBPS0cxMEdFQTYwSU5JUDdBOE8wNFQxLzAvNTMzNTk3MTg5MDAxL3NlbGVjdENsaW5pYw!!/?dtlid=43&amp;ptitle=獨立專科&amp;dtletitl=Dermatology&amp;dtltitle=皮膚科&amp;dtlcontent=&amp;dtlecontent=")!),
            Doctor(name: "張喬勝", link: URL(string: "https://webreg.vghks.gov.tw/wps/portal/web/onlinereg/!ut/p/b1/hY7JDoIwGIQf6S8FWY6IlcWWTRJKLwSDIRAWNQQDTy94F-c2yTcLCMgkbOgYY0WWgYPoi6muirEe-qLdvFBzi8VhcLElZBNTRa7vhpqpB0hJ0ApkOwDV_uVT4EjJr43-YPPI6WJNSbNE0rEiNFtYwubQ4KQ8x9HpaZDyBR6Iqh1u67UUxG75tv0F0A-ZCHxn6O7QiZYePOf9Aeqyi5E!/dl4/d5/L0lDU0lKSmdwcGlRb0tVUWtnQSEhL29Pb2dBRUlRaGpFQ1VJZ0FJQUl5RkFNaHdVaFM0TFVFQVVvIS80RzNhRDJnanZ5aERVd3BNaFQ5VUl5RkVFQSEhL1o3X0NNUlBPS0cxMEdFQTYwSU5JUDdBOE8wNFQxLzAvNTMzNTk3MTg5MDAxL3NlbGVjdENsaW5pYw!!/?dtlid=43&amp;ptitle=獨立專科&amp;dtletitl=Dermatology&amp;dtltitle=皮膚科&amp;dtlcontent=&amp;dtlecontent=")!),
            Doctor(name: "魏楷哲", link: URL(string: "https://webreg.vghks.gov.tw/wps/portal/web/onlinereg/!ut/p/b1/hY7JDoIwGIQf6S8FWY6IlcWWTRJKLwSDIRAWNQQDTy94F-c2yTcLCMgkbOgYY0WWgYPoi6muirEe-qLdvFBzi8VhcLElZBNTRa7vhpqpB0hJ0ApkOwDV_uVT4EjJr43-YPPI6WJNSbNE0rEiNFtYwubQ4KQ8x9HpaZDyBR6Iqh1u67UUxG75tv0F0A-ZCHxn6O7QiZYePOf9Aeqyi5E!/dl4/d5/L0lDU0lKSmdwcGlRb0tVUWtnQSEhL29Pb2dBRUlRaGpFQ1VJZ0FJQUl5RkFNaHdVaFM0TFVFQVVvIS80RzNhRDJnanZ5aERVd3BNaFQ5VUl5RkVFQSEhL1o3X0NNUlBPS0cxMEdFQTYwSU5JUDdBOE8wNFQxLzAvNTMzNTk3MTg5MDAxL3NlbGVjdENsaW5pYw!!/?dtlid=43&amp;ptitle=獨立專科&amp;dtletitl=Dermatology&amp;dtltitle=皮膚科&amp;dtlcontent=&amp;dtlecontent=")!)
        ],
        clubMember: false // Placeholder for club membership status
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 22.64727, longitude: 120.3107468), // Placeholder for coordinates
        name: "高醫附醫皮膚科",
        address: "高雄市三民區自由一路 100 號",
        phone: "(07) 312 1101",
        doctors: [
            Doctor(name: "藍政哲", link: URL(string: "https://www.kmuh.org.tw/KMUHInterWeb/InterWeb/InnerPage/1001124056")!),
            Doctor(name: "陳泱伊", link: URL(string: "https://www.kmuh.org.tw/KMUHInterWeb/InterWeb/InnerPage/1001124056")!),
            Doctor(name: "陳盈君", link: URL(string: "https://www.kmuh.org.tw/KMUHInterWeb/InterWeb/InnerPage/1001124056")!)
        ],
        clubMember: false // Placeholder for club membership status
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 22.7659067, longitude: 120.3643555), // Placeholder for coordinates
        name: "義大醫院皮膚科",
        address: "高雄市燕巢區義大路 1 號",
        phone: "(07) 615 0022",
        doctors: [
            Doctor(name: "劉懿珊", link: URL(string: "https://www.chimei.org.tw/opdschedule/register.aspx?ihosp=10&amp;lang=CH&amp;idept=777&amp;ndept=%E7%9A%AE%E8%86%9A%E7%A7%91")!),
            Doctor(name: "陳國熏", link: URL(string: "https://webreg.edah.org.tw/Register/ChooseDoctorTime/2777")!)
        ],
        clubMember: false // Placeholder for club membership status
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 22.7660453, longitude: 120.3654197), // Placeholder for coordinates
        name: "義大癌治療醫院皮膚科",
        address: "高雄市燕巢區義大路 21 號",
        phone: "(07) 615 0022",
        doctors: [
            Doctor(name: "詹智傑", link: URL(string: "https://webreg.edah.org.tw/Register/ChooseDoctorTime/3360")!),
            Doctor(name: "張菀渝", link: URL(string: "https://webreg.edah.org.tw/Register/ChooseDoctorTime/1961")!)
        ],
        clubMember: false // Placeholder for club membership status
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 22.5674212, longitude: 120.3633487), // Placeholder for coordinates
        name: "高雄小港醫院皮膚科",
        address: "高雄市小港區山明路 482 號",
        phone: "(07) 8059 152",
        doctors: [
            Doctor(name: "楊翔宇", link: URL(string: "https://www.kmsh.org.tw/pro/search_data2.asp?pno=301")!)
        ],
        clubMember: false // Placeholder for club membership status
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 22.6609826, longitude: 120.3037359), // Placeholder for coordinates
        name: "馨蕙馨醫院兒童氣喘過敏科",
        address: "高雄市左營區明誠二路 541 號",
        phone: "(07) 5586 080",
        doctors: [
            Doctor(name: "馮文彬", link: URL(string: "https://shs-h.com.tw/page.php?mid=35&pid=42")!)
        ],
        clubMember: false // Placeholder for club membership status
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 22.6629212, longitude: 120.4752551), // Placeholder for coordinates
        name: "屏東榮總醫院皮膚科",
        address: "屏東市榮總東路1號",
        phone: "(08) 755 7885",
        doctors: [
            Doctor(name: "吳介山", link: URL(string: "https://www.ptvgh.gov.tw/cp.aspx?n=ACFCEB2D8EDE7101")!)
        ],
        clubMember: false // Placeholder for club membership status
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 22.6734734, longitude: 120.4955887), // Placeholder for coordinates
        name: "部立屏東醫院皮膚科",
        address: "屏東縣屏東市自由路 270 號",
        phone: "(08) 737 7452",
        doctors: [
            Doctor(name: "曾慧文", link: URL(string: "https://netreg.pntn.mohw.gov.tw/OINetReg.WebRwd/Reg/DeptCalendar?DeptId=11")!)
        ],
        clubMember: false // Placeholder for club membership status
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.6717602, longitude: 121.7729317), // Placeholder for coordinates
        name: "羅東博愛醫院皮膚科",
        address: "宜蘭縣羅東鎮南昌街 83 號",
        phone: "(03) 954 3131",
        doctors: [
            Doctor(name: "張景皓", link: URL(string: "https://www.pohai.org.tw/register_login.php?deptSysCode=9&deptCode=11&docCode=1132&opdDate=2022-09-26&shiftNo=1&deptRoom=655")!)
        ],
        clubMember: false // Placeholder for club membership status
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 23.995658, longitude: 121.5926225), // Placeholder for coordinates
        name: "花蓮慈濟醫院皮膚科",
        address: "花蓮市中央路三段 707 號",
        phone: "(03) 856 1825",
        doctors: [
            Doctor(name: "張中興", link: URL(string: "https://app.tzuchi.com.tw/tchw/opdreg/RegNo.aspx?data=mhalASMxyap9qyk%2bDyWA%2bSyvZawU7uVDDla4xQSC6a4%3d&sLoc=3")!),
            Doctor(name: "洪崧壬", link: URL(string: "https://app.tzuchi.com.tw/tchw/opdreg/RegNo.aspx?data=G3bXNtILhLJDwj2cw6c5sh%2bq2V5yImnz5IFwst8uogc%3d&sLoc=3")!),
            Doctor(name: "林子凱", link: URL(string: "https://app.tzuchi.com.tw/tchw/opdreg/OpdTimeShow.aspx?Depart=%E7%9A%AE%E8%86%9A%E7%A7%91&HospLoc=3")!),
            Doctor(name: "許漢銘", link: URL(string: "https://app.tzuchi.com.tw/tchw/opdreg/OpdTimeShow.aspx?Depart=%E7%9A%AE%E8%86%9A%E7%A7%91&HospLoc=3")!),
            Doctor(name: "詹榮華", link: URL(string: "https://app.tzuchi.com.tw/tchw/opdreg/OpdTimeShow.aspx?Depart=%E7%9A%AE%E8%86%9A%E7%A7%91&HospLoc=3")!)
        ],
        clubMember: false // Placeholder for club membership status
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 22.7478747, longitude: 121.1436032), // Placeholder for coordinates
        name: "台東馬偕醫院過敏免疫風濕科",
        address: "台東市長沙街 30 巷 1 號",
        phone: "(03) 310 150",
        doctors: [
            Doctor(name: "黃奕帆", link: URL(string: "https://ttw3.mmh.org.tw/departmain.php?id=9")!)
        ],
        clubMember: false // Placeholder for club membership status
    ),
    Location(
        coordinate: CLLocationCoordinate2D(latitude: 24.4405865, longitude: 118.4178936), // Placeholder for coordinates
        name: "部立金門醫院皮膚科",
        address: "金門縣金湖鎮復興路 2 號",
        phone: "(082) 332 546",
        doctors: [
            Doctor(name: "張雲亭", link: URL(string: "https://netreg.kmhp.mohw.gov.tw/OINetReg.WebRwd/Reg/DeptCalendar?DeptId=1120")!),
            Doctor(name: "李政源", link: URL(string: "https://netreg.kmhp.mohw.gov.tw/OINetReg.WebRwd/Reg/DeptCalendar?DeptId=1120")!)
        ],
        clubMember: false // Placeholder for club membership status
    )
    
    
]

//MARK: Hospitals Without link
//    Location(
//        coordinate: CLLocationCoordinate2D(latitude: 25.065123, longitude: 121.519634),  // Coordinates for Datong District
//        name: "林仲皮膚科診所",
//        address: "臺北市大同區延平北路 2 段 20 號",
//        phone: "(02) 2552 5138",
//        doctors: [
//            Doctor(name: "林仲", link: nil)  // No URL available for this doctor
//        ],
//        clubMember: false
//    )
//    ,

//Location(
//    coordinate: CLLocationCoordinate2D(latitude: 25.058043, longitude: 121.430535),  // Coordinates for Taishan District
//    name: "輔大醫院皮膚科",
//    address: "新北市泰山區貴子路 69 號",
//    phone: "(02) 2312 3456",
//    doctors: [
//        Doctor(name: "羅婉心", link: nil)  // No valid URL provided
//    ],
//    clubMember: false
//),

//Location(
//                    coordinate: CLLocationCoordinate2D(latitude: 24.182494, longitude: 120.609579),  // Coordinates for Shalu District, Taichung
//                    name: "沙鹿童綜合醫院皮膚科",
//                    address: "臺中市沙鹿區成功西街 8 號",
//                    phone: "(04) 2662 6161",
//                    doctors: [
//                        Doctor(name: "邱瑩明", link: URL(string: "https://zh-tw.sltung.com.tw/tung/OPD/108_1.htm")!),
//                        Doctor(name: "方毓涵", link: nil)  // Check the correct URL
//                    ],
//                    clubMember: false
//                ),

