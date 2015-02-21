//
//  ViewController.h
//  CVButtonAppear
//
//  Created by Ryo Eguchi on 2015/02/21.
//  Copyright (c) 2015年 Ryo Eguchi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PriceCollectionViewCell.h"
//↑Cellのクラスのインポートはしておこう

//DelegateとDataSourceの宣言を忘れずに。
@interface ViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>
{
    //CollectionViewの関連付け
    IBOutlet UICollectionView *PriceCollectionView;
    //NSArrayで配列でデータを用意する。(変更する場合はMutableArray）
    NSArray *priceArray;
}


@end

