//
//  CNPlacesToVisitTableViewController.m
//  CHIN110
//
//  Created by Rudd Fawcett on 4/27/15.
//  Copyright (c) 2015 Rudd Fawcett. All rights reserved.
//

#import "CNPlacesToVisitTableViewController.h"

@interface CNPlacesToVisitTableViewController ()

@property (strong, nonatomic) NSArray *tourPlaces;
@property (strong, nonatomic) NSArray *eduPlaces;

@end

@implementation CNPlacesToVisitTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Places to Visit";
    
    self.tourPlaces = @[
                        @[
                            @{
                                @"name" : @"The Peak (太平山)",
                                @"cost" : @"$",
                                @"address" : @"Hong Kong, 香港島太平山頂",
                                @"notes" : @"Take the tram up to the top, fastest and best way."
                                },
                            @{
                                @"name" : @"Avenue of Stars (星光大道)",
                                @"cost" : @"FREE",
                                @"address" : @"Tsim Sha Tsui, Hong",
                                @"notes" : @"Honours celebrities of the Hong Kong film industry."
                                },
                            @{
                                @"name" : @"Tsim Sha Tsui (尖沙咀)",
                                @"cost" : @"$ - $$$",
                                @"address" : @"Tsim Sha Tsui, Hong Kong",
                                @"notes" : @"Great for shopping.  Market area."
                                },
                            @{
                                @"name" : @"Star Ferry (天星小輪有限公司)",
                                @"cost" : @"$",
                                @"address" : @"Tsim Sha Tsui, Hong Kong",
                                @"notes" : @"Take a harbor tour to see the city from the sea."
                                },
                            @{
                                @"name" : @"Stanley Market (赤柱)",
                                @"cost" : @"$ - $$$",
                                @"address" : @"Hong Kong, 赤柱赤柱大街",
                                @"notes" : @"Huge market, great for picking up little things."
                                },
                            @{
                                @"name" : @"Ngong Ping 360 (昂坪三六零)",
                                @"cost" : @"$",
                                @"address" : @"Lantau Island, Hong Kong",
                                @"notes" : @"Cable car that takes you to a cool lookout."
                                }
                            ],
                        @[
                            @{
                                @"name" : @"West Lake (西湖)",
                                @"cost" : @"$$",
                                @"address" : @"West Lake, Hangzhou, Zhejiang, China ",
                                @"notes" : @"A must see if in Hangzhou."
                                },
                            @{
                                @"name" : @"Prince Bay Park ",
                                @"cost" : @"$",
                                @"address" : @"Prince Bay Park, Hangzhou, Zhejiang, China",
                                @"notes" : @"Beautiful oasis to contrast busy walkways"
                                },
                            @{
                                @"name" : @"Xixi (嘻嘻) Wetland Park",
                                @"cost" : @"FREE",
                                @"address" : @"登选坊61号XiXi China",
                                @"notes" : @"Breathing spot away from city buzz."
                                },
                            @{
                                @"name" : @"National Tea Museum",
                                @"cost" : @"FREE",
                                @"address" : @"China National Tea Museum, 88 Longjing Road, Xihu, Hangzhou, Zhejiang, China",
                                @"notes" : @"Informative in more than just tea."
                                },
                            @{
                                @"name" : @"Solitary Hill",
                                @"cost" : @"FREE",
                                @"address" : @"Solitary Hill, Hangzhou, Zhejiang, China",
                                @"notes" : @"A scenic detour."
                                }

                            ],
                        @[
                            @{
                                @"name" : @"Pearl Tower (东方明珠塔)",
                                @"cost" : @"$",
                                @"address" : @"1 Century Ave, Pudong, Shanghai, China",
                                @"notes" : @"Supertall TV and Radio Tower, tallest in China."
                                },
                            @{
                                @"name" : @"Shanghai World Financial Center (上海环球金融中心)",
                                @"cost" : @"$",
                                @"address" : @"100 Century Ave, Pudong, Shanghai, China",
                                @"notes" : @"Second tallest building in China!"
                                },
                            @{
                                @"name" : @"The Underground Market (“科技馆边的地铁站”)",
                                @"cost" : @"$ - $$$",
                                @"address" : @"2000 Century Ave, Pudong, Shanghai, China",
                                @"notes" : @"You have to bargain or you will be ripped off."
                                },
                            @{
                                @"name" : @"Yuyuan Garden (豫园)",
                                @"cost" : @"$ - $$$",
                                @"address" : @"218 Anren St, Huangpu, Shanghai, China",
                                @"notes" : @"Great for trinkets, and souvenirs."
                                },
                            @{
                                @"name" : @"The Bund “Waitan” (外滩)",
                                @"cost" : @"$ - $$$",
                                @"address" : @"Zhongshan East 1st Rd, Huangpu, Shanghai",
                                @"notes" : @"Ferry ride and walk along river."
                                }
                            ],
                        @[@{
                              @"name" : @"Forbidden City (紫禁城)",
                              @"cost" : @"$",
                              @"address" : @"4 Jing Shan Qian Jie, Dongcheng, Beijing",
                              @"notes" : @"Get audio guide/tour for about 7 RMB if interested in the history of the buildings and the emperors of China."
                              },
                          @{
                              @"name" : @"Temple of Heaven (天坛)",
                              @"cost" : @"$",
                              @"address" : @"1 Tian Tan Dong Lu, Dongcheng, Beijing",
                              @"notes" : @"Relaxing walk and can hang out at the courtyard."
                              },
                          @{
                              @"name" : @"Summer Palace (颐和园)",
                              @"cost" : @"$",
                              @"address" : @"19 Xin Jian Gong Men Lu, Haidian, Beijing",
                              @"notes" : @"For relaxed walking and there is a lake where you can rent boats (manual or auto) and just explore."
                              },
                          @{
                              @"name" : @"Beijing 798 Art Zone (798艺术区)",
                              @"cost" : @"$",
                              @"address" : @"Chaoyang, 酒仙桥路4号 邮政编码: 100015",
                              @"notes" : @"For artists or people interested in art. Little studios and rooms rented by artists who give classes there or just draw, can buy artwork too."
                              },
                          @{
                              @"name" : @"Tiananmen Square (天安门广场)",
                              @"cost" : @"$",
                              @"address" : @"West Changan Street, Dongcheng District",
                              @"notes" : @"Place to take a picture, just walk around, iconic place, learn about the history"
                              },
                          @{
                              @"name" : @"Beijing National Stadium (鸟巢)",
                              @"cost" : @"$",
                              @"address" : @"1 National Stadium S Rd, Chaoyang",
                              @"notes" : @"Great for pictures."
                              },
                          @{
                              @"name" : @"Olympic Water Cube (北京国家游泳中心)",
                              @"cost" : @"$",
                              @"address" : @"11 Tianchen E Rd, Chaoyang",
                              @"notes" : @"May have shows available, great for pictures."
                              }
                          ],
                        @[@{
                              @"name" : @"Mount Qingcheng (倾城)",
                              @"cost" : @"$",
                              @"address" : @"Mt Qingcheng, Chongzhou , Chengdu, China",
                              @"notes" : @"Popular attraction for hiking the sacred mountains."
                              },
                          @{
                              @"name" : @"Wenshu Yuan Monastery (文殊院)",
                              @"cost" : @"$",
                              @"address" : @"Wenshu Monastery, Qingyang, Chengdu, Sichuan, China",
                              @"notes" : @"A nice escape from the city."
                              },
                          @{
                              @"name" : @"Opera House",
                              @"cost" : @"$$$",
                              @"address" : @"Sichuan Opera Theater, 27 Hongzhaobi Street, Jinjiang, Chengdu, Sichuan, China, 610041 ",
                              @"notes" : @"Includes fire eating."
                              },
                          @{
                              @"name" : @"Giant Panda Sightseeing (熊猫基地)",
                              @"cost" : @"$$",
                              @"address" : @"Chengdu Research Base of Giant Panda Breeding, 1375 Xiongmao Avenue, Chenghua, Chengdu, Sichuan, China, 610081",
                              @"notes" : @"Probably the best place to go see giant pandas."
                              },
                          @{
                              @"name" : @"Happy valley (跑馬地)",
                              @"cost" : @"$$",
                              @"address" : @"Chengdu, 西华大道6号 Jinniu, Chengdu, Sichuan, China, 610036",
                              @"notes" : @"Good place to walk around, have fun, and try out the food outlets."
                              }
]
                        ];

    self.eduPlaces = @[
                       @[
                           @{
                               @"name" : @"Hong Kong Museum of Art (香港藝術館)",
                               @"cost" : @"$10",
                               @"address" : @"10 Salisbury Road, Tsim Sha Tsui, Kowloon",
                               @"notes" : @""
                               },
                           @{
                               @"name" : @"Dr Sun Yat-sen Museum (孫中山紀念館)",
                               @"cost" : @"$1.30",
                               @"address" : @"7 Castle Road, Mid-Levels, Central, Hong Kong",
                               @"notes" : @""
                               },
                           @{
                               @"name" : @"Hong Kong Heritage Museum (香港文化博物館)",
                               @"cost" : @"$1.30",
                               @"address" : @"1 Man Lam Road, Sha Tin, Hong Kong",
                               @"notes" : @""
                               }
                           ],
                       @[
                           @{
                               @"name" : @"Zhejiang University (浙江高中)",
                               @"cost" : @"FREE",
                               @"address" : @"Zhejiang University, 38 Zheda Road, Xihu, Hangzhou, Zhejiang, China, 310027",
                               @"notes" : @""
                               },
                           @{
                               @"name" : @"Lingyin Temple (灵隐寺)",
                               @"cost" : @"$",
                               @"address" : @"1 灵隐路法云弄 Xihu, Hangzhou, Zhejiang, China ",
                               @"notes" : @""
                               },
                           @{
                               @"name" : @"Su Causeway (蘇堤)",
                               @"cost" : @"$",
                               @"address" : @"Su Causeway, Hangzhou, Zhejiang, China ",
                               @"notes" : @""
                               }],
                       @[
                           @{
                               @"name" : @"Forbidden City (紫禁城)",
                               @"cost" : @"$",
                               @"address" : @"4 Jing Shan Qian Jie, Dongcheng, Beijing",
                               @"notes" : @"Get audio guide/tour for about 7 RMB if interested in the history of the buildings and the emperors of China."
                               },
                           @{
                               @"name" : @"Temple of Heaven (天坛)",
                               @"cost" : @"$",
                               @"address" : @"1 Tian Tan Dong Lu, Dongcheng, Beijing",
                               @"notes" : @"Relaxing walk and can hang out at the courtyard."
                               },
                           @{
                               @"name" : @"Summer Palace (颐和园)",
                               @"cost" : @"$",
                               @"address" : @"19 Xin Jian Gong Men Lu, Haidian, Beijing",
                               @"notes" : @"For relaxed walking and there is a lake where you can rent boats (manual or auto) and just explore."
                               },
                           @{
                               @"name" : @"Beijing 798 Art Zone (798艺术区)",
                               @"cost" : @"$",
                               @"address" : @"Chaoyang, 酒仙桥路4号 邮政编码: 100015",
                               @"notes" : @"For artists or people interested in art. Little studios and rooms rented by artists who give classes there or just draw, can buy artwork too."
                               },
                           @{
                               @"name" : @"Tiananmen Square (天安门广场)",
                               @"cost" : @"$",
                               @"address" : @"West Changan Street, Dongcheng District",
                               @"notes" : @"Place to take a picture, just walk around, iconic place, learn about the history"
                               }
                           ],
                       @[
                           @{
                               @"name" : @"Terracotta Army (兵马俑)",
                               @"cost" : @"$24",
                               @"address" : @"Lintong, Xi'an, Shaanxi, China",
                               @"notes" : @"The most prominent attraction  of Xi’An, it is a must see for everyone who visits."
                               },
                           @{
                               @"name" : @"Shaanxi History Museum (陕西历史博物馆）",
                               @"cost" : @"FREE Admission",
                               @"address" : @"91 Xiaozhai E Rd, Yanta, Xi'an, Shaanxi, China",
                               @"notes" : @"Great museum for the history of China."
                               },
                           @{
                               @"name" : @"Stele Forest (碑林)",
                               @"cost" : @"$12",
                               @"address" : @"Sanxuejie St, Wenyi Bei Lu 18, Xi'an, China",
                               @"notes" : @"Museum that has stele and stone sculptures. Opened in 962 A.D. and has been growing their collection ever since."
                               }
                           ],
                       @[
                           @{
                               @"name" : @"Dujiangyan Irrigation System (都江堰)",
                               @"cost" : @"$$",
                               @"address" : @"Dujiangyan, Chengdu, Sichuan, China",
                               @"notes" : @""
                               },
                           @{
                               @"name" : @"Jinsha Site Museum (金沙博物馆)",
                               @"cost" : @"$",
                               @"address" : @"Jinsha Site Museum, Qingyang, Chengdu, Sichuan, China",
                               @"notes" : @""
                               },
                           @{
                               @"name" : @"Wuhou Memorial Temple (武侯包公祠)",
                               @"cost" : @"$",
                               @"address" : @"Southeast Gate, 231 Wuhouci Street, Wuhou, Chengdu, Sichuan, China",
                               @"notes" : @""
                               },
                           @{
                               @"name" : @"Giant Panda Sightseeing (熊猫基地)",
                               @"cost" : @"$$",
                               @"address" : @"Chengdu Research Base of Giant Panda Breeding, 1375 Xiongmao Avenue, Chenghua, Chengdu, Sichuan, China, 610081",
                               @"notes" : @""
                               }
                           ],
                       @[
                           @{
                               @"name" : @"Yunnan Nationalities Museum (云南民族博物馆)",
                               @"cost" : @"$1.50",
                               @"address" : @"Dianchi Rd, Xishan, Kunming, Yunnan, China",
                               @"notes" : @"Museum focusing on ethnology."
                               },
                           @{
                               @"name" : @"Yunnan Provincial Museum (云南省博物馆)",
                               @"cost" : @"FREE",
                               @"address" : @"118 Wuyi Rd, Wuhua, Kunming, Yunnan, China",
                               @"notes" : @"Museum centered around Yunnan’s ethnic minorities."
                               },
                           @{
                               @"name" : @"Kunming City Museum (昆明市博物馆)",
                               @"cost" : @"FREE",
                               @"address" : @"Tuodong Lu 120, Kunming, China",
                               @"notes" : @"Museum that explains the history of Kunming"
                               }
                           ]
                       ];
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
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 3 || [[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 4) {
        if (section == 0) {
            return 6;
        }
        else if (section == 1) {
            return 5;
        }
        else if (section == 2) {
            return 5;
        }
        else if (section == 3) {
            return 7;
        }
        else {
            return 5;
        }
    }
    else {
        if (section == 0) {
            return 3;
        }
        else if (section == 1) {
            return 3;
        }
        else if (section == 2) {
            return 5;
        }
        else if (section == 3) {
            return 3;
        }
        else if (section == 4) {
            return 4;
        }
        else {
            return 3;
        }
    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    NSDictionary *info;
    
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 3 || [[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 4) {
        info = self.tourPlaces[indexPath.section][indexPath.row];
    }
    else {
        info = self.eduPlaces[indexPath.section][indexPath.row];
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
