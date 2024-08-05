#import <UIKit/UIKit.h>

#pragma clang diagnostic ignored "-Wunused-function"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wunused-but-set-variable"
#pragma clang diagnostic ignored "-Wincomplete-implementation"
#pragma clang diagnostic ignored "-Wreturn-type"
#pragma clang diagnostic ignored "-Wunused-variable"

@interface LPCaptionBarButtonView : UIView
@end

%hook LPCaptionBarButtonView
-(void)layoutSubviews {
    %orig;
    self.hidden = YES;
}
%end