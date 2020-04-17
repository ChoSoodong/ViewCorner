






#import "UIView+cornerRadius.h"



@implementation UIView (cornerRadius)

//切四个角的圆角
+ (UIView *)clipAllCornerWithView:(UIView *)originView radius:(CGFloat)radius{
    
    return [self clipCornerWithView:originView andTopLeft:YES andTopRight:YES andBottomLeft:YES andBottomRight:YES radius:radius];
}

//切上面两个角的圆角
+ (UIView *)clipTopCornerWithView:(UIView *)originView radius:(CGFloat)radius{
    return [self clipCornerWithView:originView andTopLeft:YES andTopRight:YES andBottomLeft:NO andBottomRight:NO radius:radius];
}

//切左面两个角的圆角
+ (UIView *)clipLeftCornerWithView:(UIView *)originView radius:(CGFloat)radius{
    
    return [self clipCornerWithView:originView andTopLeft:YES andTopRight:NO andBottomLeft:YES andBottomRight:NO radius:radius];
}

//切下面两个角的圆角
+ (UIView *)clipBottomCornerWithView:(UIView *)originView radius:(CGFloat)radius{
    
    return [self clipCornerWithView:originView andTopLeft:NO andTopRight:NO andBottomLeft:YES andBottomRight:YES radius:radius];
}

//切右面两个角的圆角
+ (UIView *)clipRightCornerWithView:(UIView *)originView radius:(CGFloat)radius{
    
    return [self clipCornerWithView:originView andTopLeft:NO andTopRight:YES andBottomLeft:NO andBottomRight:YES radius:radius];
}

//切指定角的圆角
+ (UIView *)clipCornerWithView:(UIView *)originView
                    andTopLeft:(BOOL)topLeft
                   andTopRight:(BOOL)topRight
                 andBottomLeft:(BOOL)bottomLeft
                andBottomRight:(BOOL)bottomRight radius:(CGFloat)radius{
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:originView.bounds
                                                   byRoundingCorners:(topLeft==YES ? UIRectCornerTopLeft : 0) |
                                                                     (topRight==YES ? UIRectCornerTopRight : 0) |
                                                                     (bottomLeft==YES ? UIRectCornerBottomLeft : 0) |
                                                                     (bottomRight==YES ? UIRectCornerBottomRight : 0)
                                                         cornerRadii:CGSizeMake(radius, radius)];
    // 创建遮罩层
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = originView.bounds;
    maskLayer.path = maskPath.CGPath;   // 轨迹
    originView.layer.mask = maskLayer;

    return originView;
}




@end
