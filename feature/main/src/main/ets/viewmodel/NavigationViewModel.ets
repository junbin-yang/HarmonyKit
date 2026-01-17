import { BaseViewModel } from "base";
import { DemoNavigator } from "navigation";
import { NavigationCardItem } from "../model/NavigationCardItem";

/**
 * @file 导航页面 ViewModel
 * @author Joker.X
 */
@ObservedV2
export default class NavigationViewModel extends BaseViewModel {
  /**
   * 导航模块卡片数据
   */
  @Trace
  readonly cards: NavigationCardItem[] = [
    {
      title: $r("app.string.main_navigation_with_args_title"),
      description: $r("app.string.main_navigation_with_args_desc"),
      onClick: () => DemoNavigator.toNavigationWithArgs(10001)
    },
    {
      title: $r("app.string.main_navigation_result_title"),
      description: $r("app.string.main_navigation_result_desc"),
      onClick: () => {
        DemoNavigator.toNavigationResult();
      }
    }
  ];
}
