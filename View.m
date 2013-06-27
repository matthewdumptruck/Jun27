//
//  View.m
//  BrBa
//
//  Created by matthewdumptruck on 6/27/13.
//  Copyright (c) 2013 matthewdumptruck. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor yellowColor];
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
	// Drawing code
	CGFloat w = self.bounds.size.width;
	CGFloat h = self.bounds.size.height;
	CGContextRef c = UIGraphicsGetCurrentContext();
    
	//green stripes
	for (int i = 0; i <= 12; i = i + 4) {
		CGContextAddRect(c, CGRectMake(i * w / 5, 0, w / 5, h));
	}
    
	CGContextSetRGBFillColor(c, .0, .45, 0.0, 1.0);
	CGContextFillPath(c);
    
    
    
    
    
	//Breaking Bad is the best show ever.
    
	UIImage *image = [UIImage imageNamed: @"brba.png"];	//100 by 100
	if (image == nil) {
		NSLog(@"could not find the image");
		return;
	}
    
	//upper left corner of image
	CGPoint point = CGPointMake(
                                (w - image.size.width) / 2,
                                h - image.size.height - 350
                                );
    
	[image drawAtPoint: point];
}


@end
