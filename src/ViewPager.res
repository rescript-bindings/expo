type orientation = [#horizontal | #vertical]
type keyboardDismissMode = [#none | #"on-drag"]
type transitionStyle = [#curl | #scroll]
type overScrollMode = [#auto | #always | #never]

@module("@react-native-community/viewpager") @react.component
external make: (
  ~initialPage: int,
  ~scrollEnabled: bool=?,
  ~onPageScroll: 'a => unit=?,
  ~onPageScrollStateChanged: 'a => unit=?,
  ~onPageSelected: 'a => unit=?,
  ~pageMargin: int=?,
  ~keyboardDismissMode: keyboardDismissMode=?,
  ~orientation: orientation=?,
  ~transitionStyle: transitionStyle=?,
  ~showPageIndicator: bool=?,
  ~overScrollMode: overScrollMode=?,
  ~offscreenPageLimit: int=?,
  ~overdrag: bool=?,
) => React.element = "ViewPager"
