//
//  ViewController.m
//  ReadMasonry
//
//  Created by Bryant Reyn on 2020/3/5.
//  Copyright © 2020 Bryant Reyn. All rights reserved.
//

#import "ViewController.h"

#import "Masonry/Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *yellowV = [[UIView alloc] init];
    [yellowV setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:yellowV];
    
    /**
     * 采用了block中调用了maker 制造者
     */
    [yellowV mas_makeConstraints:^(MASConstraintMaker *make) {
        
        /**
         * 链式方法使用block()方法
         * make.left返回值为maker，这样才能继续使用点语法
         */
        make.left.top.equalTo(@10).with.mas_offset(10);
    }];
    
}


@end
