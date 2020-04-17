




#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (cornerRadius)

//切四个角的圆角
+ (UIView *)clipAllCornerWithView:(UIView *)originView radius:(CGFloat)radius;

//切上面两个角的圆角
+ (UIView *)clipTopCornerWithView:(UIView *)originView radius:(CGFloat)radius;

//切左面两个角的圆角
+ (UIView *)clipLeftCornerWithView:(UIView *)originView radius:(CGFloat)radius;

//切下面两个角的圆角
+ (UIView *)clipBottomCornerWithView:(UIView *)originView radius:(CGFloat)radius;

//切右面两个角的圆角
+ (UIView *)clipRightCornerWithView:(UIView *)originView radius:(CGFloat)radius;

//切指定角的圆角
+ (UIView *)clipCornerWithView:(UIView *)originView
    andTopLeft:(BOOL)topLeft
   andTopRight:(BOOL)topRight
 andBottomLeft:(BOOL)bottomLeft
                andBottomRight:(BOOL)bottomRight radius:(CGFloat)radius;


@end

NS_ASSUME_NONNULL_END
