//
//  CNItineraryTableViewController.m
//  CHIN110
//
//  Created by Rudd Fawcett on 4/27/15.
//  Copyright (c) 2015 Rudd Fawcett. All rights reserved.
//

#import "CNItineraryTableViewController.h"

@interface CNItineraryTableViewController ()

@property (strong, nonatomic) NSDictionary *tourHeaders;
@property (strong, nonatomic) NSDictionary *eduHeaders;

@property (strong, nonatomic) NSArray *tourArrayHeaders;
@property (strong, nonatomic) NSArray *eduArrayHeaders;

@end

@implementation CNItineraryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Itinerary";
    
    self.tourArrayHeaders = @[@"Day One: Hong Kong (香港)",
                                @"Day Two: Hong Kong (香港)",
                                @"Day Three: Hangzhou (杭州)",
                                @"Day Four: Hangzhou (杭州)",
                                @"Day Five: Hangzhou (杭州)",
                                @"Day Six: Shanghai (上海)",
                                @"Day Seven: Shanghai (上海)",
                                @"Day Eight: Shanghai (上海)",
                                @"Day Nine: Beijing (北京市)",
                                @"Day Ten: Beijing (北京市)",
                                @"Day Eleven: Beijing (北京市)",
                                @"Day Twelve: Chengdu (成都)",
                                @"Day Thirteen: Chengdu (成都)",
                                @"Day Fourteen: Hong Kong (香港)"];

    self.eduArrayHeaders = @[@"Day One: Hong Kong (香港)",
                             @"Day Two: Hong Kong (香港)",
                             @"Day Three: Hangzhou (杭州)",
                             @"Day Four: Hangzhou (杭州)",
                             @"Day Five: Hangzhou (杭州)",
                             @"Day Six: Beijing (北京市)",
                             @"Day Seven: Beijing (北京市)",
                             @"Day Eight: Xi'an (西安)",
                             @"Day Nine: Xi'an (西安)",
                             @"Day Ten: Chengdu (成都)",
                             @"Day Eleven: Chengdu (成都)",
                             @"Day Twelve: Kunming (昆明)",
                             @"Day Thirteen: Kunming (昆明)",
                             @"Day Fourteen: Hong Kong (香港)"];
    
    self.tourHeaders =  @{@"Day One: Hong Kong (香港)":@[
                                  @"Star Ferry (天星小輪有限公司)",
                                  @"Avenue of Stars"
                                  ],
                          @"Day Two: Hong Kong (香港)":@[
                                  @"The Peak (太平山)",
                                  @"Depart for Hangzhou."
                                  ],
                          @"Day Three: Hangzhou (杭州)":@[
                                  @"West Lake (西湖)"
                                  ],
                          @"Day Four: Hangzhou (杭州)":@[
                                  @"Xixi (嘻嘻) Wetland Park"
                                  ],
                          @"Day Five: Hangzhou (杭州)":@[
                                  @"National Tea Museum and Solitary Hill",
                                  @"Depart for Shanghai."
                                  ],
                          @"Day Six: Shanghai (上海)":@[
                                  @"The Bund (外滩)"
                                  ],
                          @"Day Seven: Shanghai (上海)":@[
                                  @"The Underground Market (“科技馆边的地铁站”)"
                                  ],
                          @"Day Eight: Shanghai (上海)":@[
                                  @"Yuyuan Garden (豫园)",
                                  @"Shanghai World Financial Center (上海环球金融中心)",
                                  @"Depart for Beijing."
                                  ],
                          @"Day Nine: Beijing (北京市)":@[
                                  @"The Forbidden City (紫禁城)"
                                  ],
                          @"Day Ten: Beijing (北京市)":@[
                                  @"Olympic Water Cube (北京国家游泳中心)",
                                  @"Beijing National Stadium (鸟巢)"
                                  ],
                          @"Day Eleven: Beijing (北京市)":@[
                                  @"The Temple of Heaven (天坛)",
                                  @"Summer Palace(颐和园)"
                                  ],
                          @"Day Twelve: Chengdu (成都)":@[
                                  @"Giant Panda Sightseeing (熊猫基地)"
                                  ],
                          @"Day Thirteen: Chengdu (成都)":@[
                                  @"Mount Qingcheng (倾城)"
                                  ],
                          @"Day Fourteen: Hong Kong (香港)":@[
                                  @"Stanley Market (尖沙咀)",
                                  @"Tsim Sha Tsui (赤柱)."
                                  ]};
    
    self.eduHeaders = @{@"Day One: Hong Kong (香港)":@[
                                @"Hong Kong Museum of Art (香港藝術館)"
                                ],
                        @"Day Two: Hong Kong (香港)":@[
                                @"Hong Kong Heritage Museum (香港文化博物館)",
                                @"Depart for Hangzhou."
                                ],
                        @"Day Three: Hangzhou (杭州)":@[
                                @"Arrive on plane.",
                                @"National Tea Museum"
                                ],
                        @"Day Four: Hangzhou (杭州)":@[
                                @"Zhejiang University (浙江高中)",
                                @"Lingyin Temple (灵隐寺)"
                                ],
                        @"Day Five: Hangzhou (杭州)":@[
                                @"Lingyin Temple (灵隐寺)",
                                @"Depart for Beijing."
                                ],
                        @"Day Six: Beijing (北京市)":@[
                                @"Arrive on train.",
                                @"Tiananmen Square"
                                ],
                        @"Day Seven: Beijing (北京市)":@[
                                @"The Forbidden City (紫禁城)",
                                @"Depart for Xi'an"
                                ],
                        @"Day Eight: Xi'an (西安)":@[
                                @"The Terracotta Army"
                                ],
                        @"Day Nine: Xi'an (西安)":@[
                                @"Shaanxi History Museum (陕西历史博物馆)",
                                @"Stele Forest (碑林)",
                                @"Depart to Chengdu."
                                ],
                        @"Day Ten: Chengdu (成都)":@[
                                @"Arrive on plane.",
                                @"Dujiangyan Irrigation System, (都江堰)"
                                ],
                        @"Day Eleven: Chengdu (成都)":@[
                                @"Giant Panda Sightseeing (熊猫基地)",
                                @"Depart for Kunming."
                                ],
                        @"Day Twelve: Kunming (昆明)":@[
                                @"Arrive on plane.",
                                @"Yunnan Nationalities Museum (云南民族博物馆)"
                                ],
                        @"Day Thirteen: Kunming (昆明)":@[
                                @"Yunnan Provincial Museum (云南省博物馆)",
                                @"Kunming City Museum (昆明市博物馆)",
                                @"Depart to Hong Kong."
                                ],
                        @"Day Fourteen: Hong Kong (香港)":@[
                                @"Dr Sun Yat-sen Museum (孫中山紀念館)",
                                @"Stanley Market (赤柱)"
                                ]};
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return self.tourArrayHeaders.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    // TOURISM
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 4 || [[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 3) {
        return self.tourArrayHeaders[section];
    }
    else {
        return self.eduArrayHeaders[section];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 4 || [[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 3) {
        return [self.tourHeaders[self.tourArrayHeaders[section]] count];
    }
    
    return [self.eduHeaders[self.eduArrayHeaders[section]] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    // Configure the cell...
    
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 4 || [[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 3) {
        
        cell.textLabel.text = self.tourHeaders[self.tourArrayHeaders[indexPath.section]][indexPath.row];
    }
    else {
        cell.textLabel.text = self.eduHeaders[self.eduArrayHeaders[indexPath.section]][indexPath.row];
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
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
