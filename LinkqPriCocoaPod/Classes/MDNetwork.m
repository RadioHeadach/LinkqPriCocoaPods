//
//  MDNetwork.m
//  
//
//  Created by ROOSTERLIN on 2018/7/17.
//

#import "MDNetwork.h"

@interface MDNetwork ()
- (void)getURLWith:(NSString *)urlString;
@end

@implementation MDNetwork

/** 输出文字*/
- (void)logOneWord {
    NSLog(@"RAPE ME!");
}

- (UIView *)returnOneBlueView {
    UIView * tempView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    tempView.backgroundColor = [UIColor blueColor];
    
    return tempView;
}

- (void)getURLWith:(NSString *)urlString {
    NSURL *url = [NSURL URLWithString: urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url cachePolicy:(0) timeoutInterval:15];
    
    //设置请求头
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
        
        //错误处理
        if (!connectionError) {
            //1. 判断HTTP状态码，判断是否正常接收数据
            
            //response内部没有状态码，在它的子类NSHTTPURLResponse里才有
            NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;//强转类型
            if (httpResponse.statusCode == 200 || httpResponse.statusCode == 304) {
                NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                NSLog(@"%@", str);
            } else {
                NSLog(@"服务器内部错误");
            }
        } else {
            NSLog(@"error: %@", connectionError);
            
        }
        
    }];
}

- (UIImage *)addOneImage {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSURL *url = [bundle URLForResource:@"LinkqPriCocoaPod" withExtension:@"bundle"];
    NSBundle *targetBundle = [NSBundle bundleWithURL:url];
    UIImage *image = [UIImage imageNamed:@"david bowie1@3x.jpg"
                                              inBundle:targetBundle
                         compatibleWithTraitCollection:nil];
    return image;
}

- (UIButton *)addOneButton {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSURL *url = [bundle URLForResource:@"LinkqPriCocoaPod" withExtension:@"bundle"];
    //NSBundle *targetBundle = [NSBundle bundleWithURL:url];
    UIButton *btnView = [[[NSBundle bundleWithURL:url] loadNibNamed:@"MDView" owner:self options:nil] firstObject];
    [btnView addTarget:self action:@selector(logOneWord) forControlEvents:UIControlEventTouchUpInside];
    return btnView;
}

@end
