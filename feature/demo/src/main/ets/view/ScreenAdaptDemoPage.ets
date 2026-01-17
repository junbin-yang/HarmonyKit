import { AppNavDestination } from "ui";
import ScreenAdaptDemoViewModel from "../viewmodel/ScreenAdaptDemoViewModel";

/**
 * @file 屏幕适配示例页视图
 * @author Joker.X
 */
@ComponentV2
export struct ScreenAdaptDemoPage {
  /**
   * 屏幕适配示例页 ViewModel
   */
  @Local
  private vm: ScreenAdaptDemoViewModel = new ScreenAdaptDemoViewModel();

  /**
   * 构建屏幕适配示例页
   * @returns {void} 无返回值
   */
  build() {
    AppNavDestination({
      title: "屏幕适配示例页",
      viewModel: this.vm
    }) {
      this.ScreenAdaptContent();
    }
  }

  /**
   * 屏幕适配示例页内容视图
   * @returns {void} 无返回值
   */
  @Builder
  private ScreenAdaptContent() {
    Text("屏幕适配示例页内容视图")
  }
}
