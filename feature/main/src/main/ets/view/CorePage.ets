import { IBestCell, IBestCellGroup } from "ibestui";
import { MediumPaddingVerticalScroll } from "designsystem";
import { AppNavDestination } from "ui";
import CoreViewModel from "../viewmodel/CoreViewModel";
import { CoreCardItem } from "../model/CoreCardItem";
import { getWindowSafeAreaState, WindowSafeAreaState } from "state";

/**
 * @file 核心页面视图
 * @author Joker.X
 */
@ComponentV2
export struct CorePage {
  /**
   * 核心页面 ViewModel
   */
  @Local
  private vm: CoreViewModel = new CoreViewModel();
  /**
   * 窗口安全区状态
   */
  @Local
  private windowSafeAreaState: WindowSafeAreaState = getWindowSafeAreaState();

  /**
   * 构建核心页面
   * @returns {void} 无返回值
   */
  build() {
    AppNavDestination({
      title: $r("app.string.core"),
      viewModel: this.vm,
      paddingValue: {
        top: this.windowSafeAreaState.topInset,
        left: this.windowSafeAreaState.leftInset,
        right: this.windowSafeAreaState.rightInset,
      }
    }) {
      this.CoreContent();
    }
  }

  /**
   * 核心页面内容视图
   * @returns {void} 无返回值
   */
  @Builder
  private CoreContent() {
    MediumPaddingVerticalScroll() {
      IBestCellGroup({ inset: true, outerMargin: 0 }) {
        ForEach(this.vm.cards, (item: CoreCardItem, index: number) => {
          IBestCell({
            title: item.title,
            label: item.description,
            isLink: true,
            hasBorder: index !== this.vm.cards.length - 1,
            onCellClick: () => item.onClick()
          });
        }, (_item: CoreCardItem, index: number) => `${index}`);
      };
    };
  }
}
