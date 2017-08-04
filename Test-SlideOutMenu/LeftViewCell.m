//
//  LeftViewCell.m
//  Test-SlideOutMenu
//
//  Created by Uber on 03/08/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "LeftViewCell.h"

@implementation LeftViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier];
    if (self) {
        /*
         // Adding separators
         
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor darkGrayColor];
        
        self.textLabel.font = [UIFont boldSystemFontOfSize:16.0];
        self.textLabel.textColor = [UIColor lightGrayColor];
        
        self.separatorView = [UIView new];
        self.separatorView.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.4];
        [self addSubview:self.separatorView];
         */
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGRect textLabelFrame = self.textLabel.frame;
    textLabelFrame.origin.x = 8.0;
    textLabelFrame.size.width = CGRectGetWidth(self.frame) - 16.0;
    self.textLabel.frame = textLabelFrame;
    
    CGFloat height = UIScreen.mainScreen.scale == 1.0 ? 1.0 : 0.5;
    
    self.separatorView.frame = CGRectMake(0.0,
                                          CGRectGetHeight(self.frame)-height,
                                          CGRectGetWidth(self.frame)*0.9,
                                          height);
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {
    self.textLabel.alpha = highlighted ? 0.5 : 1.0;
}

@end
