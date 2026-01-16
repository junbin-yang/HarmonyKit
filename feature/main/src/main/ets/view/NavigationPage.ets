import { AppNavDestination } from "ui";
import NavigationViewModel from "../viewmodel/NavigationViewModel";

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
   * 构建导航页面
   * @returns {void} 无返回值
   */
  build() {
    AppNavDestination({
      title: "导航",
      viewModel: this.vm
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
    Text("导航页面内容视图")
  }
}
