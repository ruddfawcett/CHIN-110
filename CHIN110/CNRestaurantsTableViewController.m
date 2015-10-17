//
//  CNRestaurantsTableViewController.m
//  CHIN110
//
//  Created by Rudd Fawcett on 4/27/15.
//  Copyright (c) 2015 Rudd Fawcett. All rights reserved.
//

#import "CNRestaurantsTableViewController.h"

@interface CNRestaurantsTableViewController ()

@property (strong, nonatomic) NSArray *restaurantsTourism;
@property (strong, nonatomic) NSArray *restaurantsEducation;

@end

@implementation CNRestaurantsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.restaurantsTourism = @[
                                @[
                                    @{
                                        @"name" : @"Lan Kwai Fong (蘭桂坊)",
                                        @"address" : @"Central Hong Kong",
                                        @"cost" : @"$ - $$$",
                                        @"notes" : @"THE premier nightlife scene, great alcohol and food."},
                                    @{
                                        @"name" : @"Luk Yu Tea House (陸羽茶室)",
                                        @"address" : @"24-26 Stanley Street, Hong Kong",
                                        @"cost" : @"$ - $$",
                                        @"notes" : @"We recommend the dimsum & tea."},
                                    @{
                                        @"name" : @"Yung Kee Restaurant (香港鏞記酒家)",
                                        @"address" : @"Hong Kong, 威靈頓街32號",
                                        @"cost" : @"$$",
                                        @"notes" : @"The goose is delicious."},
                                    @{
                                        @"name" : @"Tsui Wah Restaurant (翠华餐厅)",
                                        @"address" : @"Chain (multiple locations)",
                                        @"cost" : @"$",
                                        @"notes" : @"The milk tea is EXCELLENT."}
                                    ],
                                @[
                                    @{
                                        @"name" : @"Haidilao Hotpot (海底捞火锅)",
                                        @"address" : @"Golden Square, Hangzhou, China",
                                        @"cost" : @"$$",
                                        @"notes" : @"Great for hot pot style of eating."},
                                    @{
                                        @"name" : @"Le Restaurant",
                                        @"address" : @"87 Manjuelong Rd Xihu, Hangzhou, Zhejiang China",
                                        @"cost" : @"$$$",
                                        @"notes" : @"Romantic Restaurant"},
                                    @{
                                        @"name" : @"Green Tea Restaurant (绿茶)",
                                        @"address" : @"No.83 Longjing Road, Hangzhou, China ",
                                        @"cost" : @"$",
                                        @"notes" : @"Offers classic Hangzhou cuisine."},
                                    @{
                                        @"name" : @"Sawasdee Thai Restaurant (萨瓦省的额)",
                                        @"address" : @"Fengqi Road 555 | Wyndham Grand Plaza Royale Hotel - 2nd Floor, Hangzhou, China",
                                        @"cost" : @"$$",
                                        @"notes" : @"Great soups."},
                                    @{
                                        @"name" : @"Jin Sha (金沙)",
                                        @"address" : @"Four Seasons Hotel Hangzhou at West Lake",
                                        @"cost" : @"$$$",
                                        @"notes" : @"Good for dimsum lunch."}
                                    ],

                                @[
                                    @{
                                      @"name" : @"Ding Tai Fung (鼎泰豐)",
                                      @"address" : @"NanJing West Road 1376 , ShangHai ShangCheng 1 Floor a104, Shanghai, China",
                                      @"cost" : @"$",
                                      @"notes" : @"Excellent quality, very good service, fast, good prices."},
                                  @{
                                      @"name" : @"Fortune Cookie (陸羽茶室)",
                                      @"address" : @"83 Changshu Lu | 4th Floor, Shanghai 200040, China",
                                      @"cost" : @"$",
                                      @"notes" : @"Great authentic American Chinese Food."},
                                  @{
                                        @"name" : @"Jia Jia Tang Bao (佳家汤包)",
                                      @"address" : @"Huanghe Lu (near Nanjing Xilu), Shanghai, China",
                                      @"cost" : @"$$",
                                        @"notes" : @"Delicious soup dumplings."}],
                                
                                @[
                                    @{
                                        @"name" : @"Li Qun Roast Duck Restaurant (利群烤鸭店)",
                                        @"address" : @"11 Beixiangfeng Hutong, Dongcheng",
                                        @"cost" : @"$ - $$",
                                        @"notes" : @"Get the Peking Duck!"},
                                    @{
                                        @"name" : @"Quanjude (全聚德)",
                                        @"address" : @"北京市东城区帅府园胡同9号 邮政编码: 100005",
                                        @"cost" : @"$ - $$",
                                        @"notes" : @"Order the Peking Duk!"},
                                    @{
                                        @"name" : @"Haidilao hot Pot (海底捞火锅)",
                                        @"address" : @"甲2 Baijiazhuang Road Chaoyang",
                                        @"cost" : @"$ - $$$",
                                        @"notes" : @"Go for dinner and get the hotpot. Get the spicy/plain one, like half half soup base."}],
                                
                                @[
                                    @{
                                        @"name" : @"FLAIR Restaurant and Bar",
                                        @"address" : @"25/F, Ritz-Carlton Chengdu, No.269 Shuncheng,  Main Street, Qingyang District, Chengdu 610017, China",
                                        @"cost" : @"$$",
                                        @"notes" : @"Excellent Lunch in Chengdu, great atmosphere."},
                                    @{
                                        @"name" : @"Xiaojing Sifangcai (小景私房菜)",
                                        @"address" : @"Room 902 Unit 2 Building 11 2 Qi of Luofu Shijia, Gao Sheng Qiao Road, Wuhou District, Chengdu 610041, China",
                                        @"cost" : @"$ - $$",
                                        @"notes" : @"Nice establishment with quick dining and service."},
                                    @{
                                        @"name" : @"Din Tai Fung (鼎泰豐)",
                                        @"address" : @"F2 Raffles City, No.3 4th Section of Renmin South Road, Wuhou District, Chengdu, Chin",
                                        @"cost" : @"$$",
                                        @"notes" : @"Best dumplings in town."},
                                    @{
                                        @"name" : @"Chenmapo DouFu (陈麻婆豆腐)",
                                        @"address" : @"197 Xi Yu Long St | West Jade Dragon St, Chengdu 610015, China ",
                                        @"cost" : @"$",
                                        @"notes" : @"Very spicy restaurant, perfect for szechuan cuisine. "},
                                    @{
                                        @"name" : @"Shu Nine Incense Pot Restaurant (雨淋)",
                                        @"address" : @"Wu Hou District Yu Lin Community Ni Jia Qiao Road 11-2, Chengdu, China",
                                        @"cost" : @"$$",
                                        @"notes" : @"A must try, szechuan food."}]
                                ];
    
    self.restaurantsEducation = @[
                                @[
                                    @{
                                        @"name" : @"Lan Kwai Fong (蘭桂坊)",
                                        @"address" : @"Central Hong Kong",
                                        @"cost" : @"$ - $$$",
                                        @"notes" : @"THE premier nightlife scene, great alcohol and food."},
                                    @{
                                        @"name" : @"Luk Yu Tea House (陸羽茶室)",
                                        @"address" : @"24-26 Stanley Street, Hong Kong",
                                        @"cost" : @"$ - $$",
                                        @"notes" : @"We recommend the dimsum & tea."},
                                    @{
                                        @"name" : @"Yung Kee Restaurant (香港鏞記酒家)",
                                        @"address" : @"Hong Kong, 威靈頓街32號",
                                        @"cost" : @"$$",
                                        @"notes" : @"The goose is delicious."},
                                    @{
                                        @"name" : @"Tsui Wah Restaurant (翠华餐厅)",
                                        @"address" : @"Chain (multiple locations)",
                                        @"cost" : @"$",
                                        @"notes" : @"The milk tea is EXCELLENT."}
                                    ],
                                @[
                                    @{
                                        @"name" : @"Haidilao Hotpot (海底捞火锅)",
                                        @"address" : @"Golden Square, Hangzhou, China",
                                        @"cost" : @"$$",
                                        @"notes" : @"Great for hot pot style of eating."},
                                    @{
                                        @"name" : @"Le Restaurant",
                                        @"address" : @"87 Manjuelong Rd Xihu, Hangzhou, Zhejiang China",
                                        @"cost" : @"$$$",
                                        @"notes" : @"Romantic Restaurant"},
                                    @{
                                        @"name" : @"Green Tea Restaurant (绿茶)",
                                        @"address" : @"No.83 Longjing Road, Hangzhou, China ",
                                        @"cost" : @"$",
                                        @"notes" : @"Offers classic Hangzhou cuisine."},
                                    @{
                                        @"name" : @"Sawasdee Thai Restaurant (萨瓦省的额)",
                                        @"address" : @"Fengqi Road 555 | Wyndham Grand Plaza Royale Hotel - 2nd Floor, Hangzhou, China",
                                        @"cost" : @"$$",
                                        @"notes" : @"Great soups."},
                                    @{
                                        @"name" : @"Jin Sha (金沙)",
                                        @"address" : @"Four Seasons Hotel Hangzhou at West Lake",
                                        @"cost" : @"$$$",
                                        @"notes" : @"Good for dimsum lunch."}
                                    ],
                                @[
                                    @{
                                        @"name" : @"Li Qun Roast Duck Restaurant (利群烤鸭店)",
                                        @"address" : @"11 Beixiangfeng Hutong, Dongcheng",
                                        @"cost" : @"$ - $$",
                                        @"notes" : @"Get the Peking Duck!"},
                                    @{
                                        @"name" : @"Quanjude (全聚德)",
                                        @"address" : @"北京市东城区帅府园胡同9号 邮政编码: 100005",
                                        @"cost" : @"$ - $$",
                                        @"notes" : @"Order the Peking Duk!"},
                                    @{
                                        @"name" : @"Haidilao hot Pot (海底捞火锅)",
                                        @"address" : @"甲2 Baijiazhuang Road Chaoyang",
                                        @"cost" : @"$ - $$$",
                                        @"notes" : @"Go for dinner and get the hotpot. Get the spicy/plain one, like half half soup base."}],
                                @[
                                    @{
                                        @"name" : @"Hai Di Lao Hot Pot City (海底捞)",
                                        @"address" : @"11, South of Yanta Lu, Xi’An",
                                        @"cost" : @"$$ - $$$",
                                        @"notes" : @"Where the locals go to eat Hot Pot. Best Hot Pot in Xi’An."},
                                    @{
                                        @"name" : @"Shangri-La Hotel Restaurant (香格里拉餐厅）",
                                        @"address" : @"KeJi Road 38 B, Xi'an, China",
                                        @"cost" : @"$$ - $$$",
                                        @"notes" : @"Authentic Thai/Chinese Cuisine. One of the must eats in Xi’An."},
                                  @{
                                        @"name" : @"Tang Dynasty Music and Dance Show",
                                        @"address" : @"No. 165, Wenyi Road, Xi'an, China",
                                        @"cost" : @"$$$",
                                        @"notes" : @"Very good Chinese food. There is also a show to watch while you eat. It displays traditional music and dance of China."}],
                                
                                @[
                                    @{
                                        @"name" : @"FLAIR Restaurant and Bar",
                                        @"address" : @"25/F, Ritz-Carlton Chengdu, No.269 Shuncheng,  Main Street, Qingyang District, Chengdu 610017, China",
                                        @"cost" : @"$$",
                                        @"notes" : @"Excellent Lunch in Chengdu, great atmosphere."},
                                    @{
                                        @"name" : @"Xiaojing Sifangcai (小景私房菜)",
                                        @"address" : @"Room 902 Unit 2 Building 11 2 Qi of Luofu Shijia, Gao Sheng Qiao Road, Wuhou District, Chengdu 610041, China",
                                        @"cost" : @"$ - $$",
                                        @"notes" : @"Nice establishment with quick dining and service."},
                                    @{
                                        @"name" : @"Din Tai Fung (鼎泰豐)",
                                        @"address" : @"F2 Raffles City, No.3 4th Section of Renmin South Road, Wuhou District, Chengdu, Chin",
                                        @"cost" : @"$$",
                                        @"notes" : @"Best dumplings in town."},
                                    @{
                                        @"name" : @"Chenmapo DouFu (陈麻婆豆腐)",
                                        @"address" : @"197 Xi Yu Long St | West Jade Dragon St, Chengdu 610015, China ",
                                        @"cost" : @"$",
                                        @"notes" : @"Very spicy restaurant, perfect for szechuan cuisine. "},
                                    @{
                                        @"name" : @"Shu Nine Incense Pot Restaurant (雨淋)",
                                        @"address" : @"Wu Hou District Yu Lin Community Ni Jia Qiao Road 11-2, Chengdu, China",
                                        @"cost" : @"$$",
                                        @"notes" : @"A must try, szechuan food."}],
                                @[
                                    @{
                                        @"name" : @"Yidong Yanglou Restaurant (苦菜绿豆)",
                                        @"address" : @"No.7-9 Huashan East Road, Wuhua District, Kunming, China",
                                        @"cost" : @"$$ - $$$",
                                        @"notes" : @"Very good authentic Chinese food."},
                                    @{
                                        @"name" : @"Jianxinyuan (建新园)",
                                        @"address" : @"No.195 Baoshan Street, Wuhua District, Kunming 650021, China",
                                        @"cost" : @"$$",
                                        @"notes" : @"Authentic noodles and noodle soup."},
                                    @{
                                        @"name" : @"Yikeyin Lao Fangzi (一颗印老房子) (Old House Restaurant)",
                                        @"address" : @"18-19 Jixiang Xiang, Dongfeng Xi Lu, Kunming, China",
                                        @"cost" : @"$",
                                        @"notes" : @"Authentic Chinese food with a lake park on the premises."}]
                                ];

    
    self.navigationItem.title = @"Restaurants";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return @"Hong Kong (香港)";
    }
    
    if (section == 1) {
        return @"Hangzhou (杭州)";
    }
    
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 3 || [[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 4) {
        if (section == 2) {
            return @"Shanghai (上海)";
        }
        else if (section == 3) {
            return @"Beijing (北京市)";
        }
        else {
            return @"Chengdu (成都)";
        }
    }
    else {
        if (section == 2) {
            return @"Beijing (北京市)";
        }
        else if (section == 3) {
            return @"Xi'an (西安)";
        }
        else if (section == 4) {
            return @"Chengdu (成都)";
        }
        else {
            return @"Kunming (昆明)";
        }
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 3 || [[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 4) {
        return 5;
    }
    else return 6;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 4;
    }
    
    if (section == 1) {
        return 5;
    }
    
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 3 || [[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 4) {
        if (section == 2) {
            return 3;
        }
        else if (section == 3) {
            return 3;
        }
        else {
            return 5;
        }
    }
    else {
        if (section == 2) {
            return 3;
        }
        else if (section == 3) {
            return 3;
        }
        else if (section == 4) {
            return 5;
        }
        else {
            return 3;
        }
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    NSDictionary *info;
    
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 3 || [[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 4) {
        info = self.restaurantsTourism[indexPath.section][indexPath.row];
    }
    else {
        info = self.restaurantsEducation[indexPath.section][indexPath.row];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@: %@",info[@"name"], info[@"cost"]];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ | %@", info[@"address"], info[@"notes"]];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
