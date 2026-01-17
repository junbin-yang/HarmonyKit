import { AppNavDestination } from "ui";
import SafeAreaDemoViewModel from "../viewmodel/SafeAreaDemoViewModel";

/**
 * @file 安全区示例页视图
 * @author Joker.X
 */
@ComponentV2
export struct SafeAreaDemoPage {
  /**
   * 安全区示例页 ViewModel
   */
  @Local
  private vm: SafeAreaDemoViewModel = new SafeAreaDemoViewModel();

  /**
   * 构建安全区示例页
   * @returns {void} 无返回值
   */
  build() {
    AppNavDestination({
      title: "安全区示例页",
      viewModel: this.vm
    }) {
      this.SafeAreaContent();
    }
  }

  /**
   * 安全区示例页内容视图
   * @returns {void} 无返回值
   */
  @Builder
  private SafeAreaContent() {
    Text("安全区示例页内容视图")
  }
}
