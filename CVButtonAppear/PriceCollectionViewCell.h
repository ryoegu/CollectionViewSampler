//
//  PriceCollectionViewCell.h
//  CVButtonAppear
//
//  Created by Ryo Eguchi on 2015/02/21.
//  Copyright (c) 2015年 Ryo Eguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PriceCollectionViewCell : UICollectionViewCell

//14行目だけ追加して、関連付け！
@property (strong, nonatomic) IBOutlet UILabel *priceLabel;

@end
