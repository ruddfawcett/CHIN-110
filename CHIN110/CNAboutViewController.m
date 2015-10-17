//
//  CNAboutViewController.m
//  CHIN110
//
//  Created by Rudd Fawcett on 4/27/15.
//  Copyright (c) 2015 Rudd Fawcett. All rights reserved.
//

#import "CNAboutViewController.h"

#import "UIView+CNExtensions.h"

@interface CNAboutViewController () <NSLayoutManagerDelegate>

@property (strong, nonatomic) UITextView *textView;

@end

@implementation CNAboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"About Your Trip";
    
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width-30, self.view.bounds.size.height-30)];
    [self.textView centerInView:self.view];
    self.textView.layoutManager.delegate = self;
    self.textView.font = [UIFont systemFontOfSize:22];
    self.textView.editable = NO;
    self.textView.textContainer.lineFragmentPadding = 10;
    
    int type = [[[NSUserDefaults standardUserDefaults] objectForKey:@"type"] intValue];
    
    switch (type) {
        case 4:
            
            NSLog(@"test");
            self.textView.text = @"Wow!  Look at you!  Since you are comfortable spending a little extra on your dream trip to China, we've made sure that you are in great hands.  Flying and riding first class, you'll be comfortable (literally) enjoy the itinerary of your trip, with visits to Hong Kong (香港), Hangzhou (杭州), Shanghai (上海), Beijing (北京时) and Chengdu (成都).  In Hong Kong you'll get to explore the bustling city, with delicious food and a magnificent waterfront, accessible via the Star Ferry (天星小輪有限公司) and also viewed from The Peak (太平山).  In Hangzhou you can relax by the serenity of the many lakes, such as West Lake (西湖) or spend some get away time in Xixi (嘻嘻) Wetland Park.  You're back in the city in Shanghai, with some of the tallest buildings in China and the world, such as the Pearl Tower (东方明珠塔) and the Shanghai World Financial Center (上海环球金融中心).  You can also pick up some souvenirs from the Yuyuan Garden (豫园).  In Chengdu you'll definitely want to check out the Great Panda Sightseeing (熊猫基地) and maybe take a hike up the beautiful Mount Qingcheng (倾城) in order to gasp your last breathes of fresh sacred mountain air before you're back to Hong Kong for your trip home.";
            break;
        case 3:
            self.textView.text = @"We hope that you enjoy the itinerary of your trip, with visits to Hong Kong (香港), Hangzhou (杭州), Shanghai (上海), Beijing (北京时) and Chengdu (成都).  In Hong Kong you'll get to explore the bustling city, with delicious food and a magnificent waterfront, accessible via the Star Ferry (天星小輪有限公司) and also viewed from The Peak (太平山).  In Hangzhou you can relax by the serenity of the many lakes, such as West Lake (西湖) or spend some get away time in Xixi (嘻嘻) Wetland Park.  You're back in the city in Shanghai, with some of the tallest buildings in China and the world, such as the Pearl Tower (东方明珠塔) and the Shanghai World Financial Center (上海环球金融中心).  You can also pick up some souvenirs from the Yuyuan Garden (豫园).  In Chengdu you'll definitely want to check out the Great Panda Sightseeing (熊猫基地) and maybe take a hike up the beautiful Mount Qingcheng (倾城) in order to gasp your last breathes of fresh sacred mountain air before you're back to Hong Kong for your trip home.";
            
            break;
        case 2:
            self.textView.text = @"We hope that you enjoy the itinerary of your trip, with  visits to Hong Kong (香港), Hangzhou (杭州), Shanghai (上海), Beijing (北京时), Xi’an (西安), Chengdu (成都), and Kunming (昆明).  In Hong Kong you'll get to explore the bustling city, with delicious food and a magnificent waterfront, accessible via the Star Ferry (天星小輪有限公司)  and also viewed from The Peak (太平山).  In Hangzhou you can relax by the serenity of the many lakes, such as West Lake (西湖) or spend some get away time in Xixi (嘻嘻) Wetland Park.  You go back to Beijing (北京时), where you can go shopping to your heart's delight.  You go to Xi’an(西安), where you listen to the infamous bell towers and enjoy yourself with the gardens and markets. You go and see giant pandas in Chengdu(成都). Then you finish your trip off in Kunming(昆明), where you get to explore Buddhism.";
            
            break;
        default:
            
            self.textView.text = @"We hope that you enjoy the itinerary of your trip, with  visits to Hong Kong (香港), Hangzhou (杭州), Shanghai (上海), Beijing (北京时), Xi’an (西安), Chengdu (成都), and Kunming (昆明).  In Hong Kong you'll get to explore the bustling city, with delicious food and a magnificent waterfront, accessible via the Star Ferry (天星小輪有限公司)  and also viewed from The Peak (太平山).  In Hangzhou you can relax by the serenity of the many lakes, such as West Lake (西湖) or spend some get away time in Xixi (嘻嘻) Wetland Park.  You go back to Beijing (北京时), where you can go shopping to your heart's delight.  You go to Xi’an(西安), where you listen to the infamous bell towers and enjoy yourself with the gardens and markets. You go and see giant pandas in Chengdu(成都). Then you finish your trip off in Kunming(昆明), where you get to explore Buddhism.";
            
            break;
    }
    
    [self.view addSubview:self.textView];
}

- (CGFloat)layoutManager:(NSLayoutManager *)layoutManager lineSpacingAfterGlyphAtIndex:(NSUInteger)glyphIndex withProposedLineFragmentRect:(CGRect)rect {
    return 10; // For really wide spacing; pick your own value
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
