//
//  CNTransportationTableViewController.m
//  CHIN110
//
//  Created by Rudd Fawcett on 4/27/15.
//  Copyright (c) 2015 Rudd Fawcett. All rights reserved.
//

#import "CNTransportationTableViewController.h"

@interface CNTransportationTableViewController ()

@property (strong, nonatomic) NSArray *transportEDU;
@property (strong, nonatomic) NSArray *transportTOUR;

@end

@implementation CNTransportationTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.transportEDU = @[
                          @{
                              @"from" : @"Hong Kong (香港)",
                              @"to" : @"Hangzhou (杭州)",
                              @"first" : @"No First Class, $177",
                              @"econ" : @"$177",
                              @"type" : @"plane"},
                          @{
                              @"from" : @"Hangzhou (杭州)",
                              @"to" : @"Beijing (北京市)",
                              @"first" : @"$146.34",
                              @"econ" : @"$87",
                              @"type" : @"train"},
                          @{
                              @"from" : @"Beijing (北京市)",
                              @"to" : @"Xi’an (西安)",
                              @"first" : @"$132.71",
                              @"econ" : @"$82.85",
                              @"type" : @"train"},
                          @{
                              @"from" : @"Xi’an (西安)",
                              @"to" : @"Chengdu (成都)",
                              @"first" : @"$342",
                              @"econ" : @"$120",
                              @"type" : @"plane"},
                          @{
                              @"from" : @"Chengdu (成都)",
                              @"to" : @"Kunming (昆明)",
                              @"first" : @"$455",
                              @"econ" : @"$120",
                              @"type" : @"plane"},
                          @{
                              @"from" : @"Kunming (昆明)",
                              @"to" : @"Hong Kong (香港)",
                              @"first" : @"No First Class, $107",
                              @"econ" : @"$107",
                              @"type" : @"plane"},
                          ];
    
    self.transportTOUR = @[
                           @{
                               @"from" : @"Hong Kong (香港)",
                               @"to" : @"Hangzhou (杭州)",
                               @"first" : @"No First Class, $177",
                               @"econ" : @"$177",
                               @"type" : @"plane"},
                           @{
                               @"from" : @"Hangzhou (杭州)",
                               @"to" : @"Shanghai (上海)",
                               @"first" : @"$18.87",
                               @"econ" : @"$11",
                               @"type" : @"train"},
                           @{
                               @"from" : @"Shanghai (上海)",
                               @"to" : @"Beijing (北京市)",
                               @"first" : @"$150.50",
                               @"econ" : @"$87",
                               @"type" : @"train"},
                           @{
                               @"from" : @"Beijing (北京市)",
                               @"to" : @"Chengdu (成都)",
                               @"first" : @"$722",
                               @"econ" : @"$188",
                               @"type" : @"plane"},
                           @{
                               @"from" : @"Chengdu (成都)",
                               @"to" : @"Hong Kong (香港)",
                               @"first" : @"No First Class, $126",
                               @"econ" : @"$126",
                               @"type" : @"plane"}
                           ];
    
    self.title = @"Transportation";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 3 || [[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 4) {
        return 5;
    }
    else return 6;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    
    
    NSDictionary *info;
    
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 3 || [[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 4) {
        info = self.transportTOUR[indexPath.row];
    }
    else {
        info = self.transportEDU[indexPath.row];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ → %@", info[@"from"], info[@"to"]];
    
    NSString *key;
    
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 4 || [[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue] == 2) {
        key = @"first";
    }
    else {
        key = @"econ";
    }
    
    cell.detailTextLabel.text = info[key];
    
    cell.imageView.image = [UIImage imageNamed:info[@"type"]];
    
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
