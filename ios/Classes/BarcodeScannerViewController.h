//
// Created by Matthew Smith on 11/7/17.
//

#import <Foundation/Foundation.h>
#import <MTBBarcodeScanner/MTBBarcodeScanner.h>

#import "BarcodeScannerViewControllerDelegate.h"
#import "ScannerOverlay.h"


@interface BarcodeScannerViewController : UIViewController
@property(nonatomic, retain) UIView *previewView;
  @property(nonatomic, retain) ScannerOverlay *scanRect;
@property(nonatomic, retain) MTBBarcodeScanner *scanner;
@property(nonatomic, weak) id<BarcodeScannerViewControllerDelegate> delegate;
@property(nonatomic, weak) NSString *theme;

  
  -(id) initWithOptions:(NSDictionary *) options;

    -(id)initWithTheme:(NSString *)theme_
    {
        self = [super init];
        if (self) {
            self.theme = theme_;
        }
        return self;
    }
@end
