import { getWindowSafeAreaState, WindowSafeAreaState } from "state";
import { AppNavDestination } from "ui";
import ExpandViewModel from "../viewmodel/ExpandViewModel";

/**
 * @file 扩展页面视图
 * @author Joker.X
 */
@ComponentV2
export struct ExpandPage {
  /**
   * 扩展页面 ViewModel
   */
  @Local
  private vm: ExpandViewModel = new ExpandViewModel();
  /**
   * 窗口安全区状态
   */
  @Local
  private windowSafeAreaState: WindowSafeAreaState = getWindowSafeAreaState();

  /**
   * 构建扩展页面
   * @returns {void} 无返回值
   */
  build() {
    AppNavDestination({
      title: $r("app.string.expand"),
      viewModel: this.vm,
      paddingValue: {
        top: this.windowSafeAreaState.topInset,
        left: this.windowSafeAreaState.leftInset,
        right: this.windowSafeAreaState.rightInset,
      }
    }) {
      this.ExpandContent();
    }
  }

  /**
   * 扩展页面内容视图
   * @returns {void} 无返回值
   */
  @Builder
  private ExpandContent() {
    Text("扩展页面内容视图")
  }
}
