import { IBestCell, IBestCellGroup } from "ibestui";
import { MediumPaddingVerticalScroll } from "designsystem";
import { AppNavDestination } from "ui";
import NavigationViewModel from "../viewmodel/NavigationViewModel";
import { NavigationCardItem } from "../model/NavigationCardItem";
import { getWindowSafeAreaState, WindowSafeAreaState } from "state";

/**
 * @file 导航页面视图
 * @author Joker.X
 */
@ComponentV2
export struct NavigationPage {
  /**
   * 导航页面 ViewModel
   */
  @Local
  private vm: NavigationViewModel = new NavigationViewModel();
  /**
   * 窗口安全区状态
   */
  @Local
  private windowSafeAreaState: WindowSafeAreaState = getWindowSafeAreaState();

  /**
   * 构建导航页面
   * @returns {void} 无返回值
   */
  build() {
    AppNavDestination({
      title: $r("app.string.navigation"),
      viewModel: this.vm,
      paddingValue: {
        top: this.windowSafeAreaState.topInset,
        left: this.windowSafeAreaState.leftInset,
        right: this.windowSafeAreaState.rightInset,
      }
    }) {
      this.NavigationContent();
    }
  }

  /**
   * 导航页面内容视图
   * @returns {void} 无返回值
   */
  @Builder
  private NavigationContent() {
    MediumPaddingVerticalScroll() {
      IBestCellGroup({ inset: true, outerMargin: 0 }) {
        ForEach(this.vm.cards, (item: NavigationCardItem, index: number) => {
          IBestCell({
            title: item.title,
            label: item.description,
            isLink: true,
            hasBorder: index !== this.vm.cards.length - 1,
            onCellClick: () => item.onClick()
          });
        }, (_item: NavigationCardItem, index: number) => `${index}`);
      };
    };
  }
}
