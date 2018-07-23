//
//  MDNetwork.h
//  
//
//  Created by ROOSTERLIN on 2018/7/17.
//

#import <Foundation/Foundation.h>

@interface MDNetwork : NSObject

/** 输出文字 */
- (void)logOneWord;

/** 输出一个view */
- (UIView *)returnOneBlueView;

/** get url*/
- (void)getURLWith:(NSString *)urlString;

/** 添加一个图片 */
- (UIImage *)addOneImage;

/** 添加一个button */
- (UIButton *)addOneButton;

@end
