%hook IMAADdsRequestUtils
+(BOOL)isAdSenseAdTag:(BOOL)arg1:(id)arg2{
arg1 = NO;
arg2 = NULL;
%orig (arg1, arg2);
return %orig;
}
%end

%hook GADMAdapterGoogleAdMobAds
-(bool) isBannerAnimationOK:(BOOL)arg1:(long long)arg2{
arg1 = NO;
arg2 = 0;
%orig (arg1, arg2);
return %orig;
}
%end




%hook SavedSettings
-(void)setIsHideAds:(BOOL)arg1{
arg1 = TRUE;
%orig (arg1);
return %orig;
}
-(bool)isHideAds{
return TRUE;
}
%end



%hook AnghamiViewController
-(bool)isHideAds{ return YES; } %end

%hook CreatePlaylistViewController
-(bool)isHideAds{ return YES; } %end

%hook ManageWebViewController
-(bool)isHideAds{ return YES; } %end

%hook AnghamiNewTableViewController
-(bool)isHideAds{ return YES; } %end

%hook GADSDKCoreWebView
-(bool)isActiveViewRunning{ return NO; } %end


%hook ANGSectionedContentHomeViewController
-(bool)isHideAds{ return YES; } %end


%hook GADMAdapterGoogleAdMobAds
-(bool)handlesUserImpressions{ return NO; } %end




