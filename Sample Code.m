#import <UIKit/UIKit.h>


@interface LegendLabel : UILabel
@property (nonatomic, retain) UILabel *textLabel;
@property (nonatomic, assign) CGSize legendSize;
@property (nonatomic, retain) UIColor *legendColor;
@end
@implementation LegendLabel
@end


@interface UIColor (Additions)
+ (UIColor *)darkBlueColor;
+ (UIColor *)barColorWorst;
@end


@interface UIFont (Additions)
+ (UIFont *)plainFontWithSize:(CGFloat)size;
@end


@interface SomeClass : UIView
@property (nonatomic, retain) LegendLabel *worstWorkout;
@end
@implementation SomeClass

























- (LegendLabel*)labelWithTitle:(NSString*)title
                    legendColor:(UIColor*)color {
	
	LegendLabel *label = [[LegendLabel alloc] init];
	label.textLabel.textColor = [UIColor darkBlueColor];
	label.textLabel.font = [UIFont plainFontWithSize: 15.0f];
	label.legendSize = CGSizeMake(10, 10);
	label.textLabel.text = title;
	label.legendColor = color;
	return label;
}

- (LegendLabel*)worstWorkout {
	if (_worstWorkout == nil) {
		_worstWorkout = [self labelWithTitle: NSLocalizedString(@"chart. legend.worst", nil)
		                         legendColor: [UIColor barColorWorst ]];
		[self addSubview:_worstWorkout];
	}
	return _worstWorkout;
}


























@end
