import { AppNavDestination } from "ui";
import NavigationWithArgsViewModel from "../viewmodel/NavigationWithArgsViewModel";

/**
 * @file 带参跳转示例页视图
 * @author Joker.X
 */
@ComponentV2
export struct NavigationWithArgsPage {
  /**
   * 带参跳转示例页 ViewModel
   */
  @Local
  private vm: NavigationWithArgsViewModel = new NavigationWithArgsViewModel();

  /**
   * 构建带参跳转示例页
   * @returns {void} 无返回值
   */
  build() {
    AppNavDestination({
      title: "带参跳转示例页",
      viewModel: this.vm
    }) {
      this.NavigationWithArgsContent();
    }
  }

  /**
   * 带参跳转示例页内容视图
   * @returns {void} 无返回值
   */
  @Builder
  private NavigationWithArgsContent() {
    Text("带参跳转示例页内容视图")
  }
}
