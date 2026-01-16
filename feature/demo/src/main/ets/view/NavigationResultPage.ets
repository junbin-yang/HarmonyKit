import { AppNavDestination } from "ui";
import NavigationResultViewModel from "../viewmodel/NavigationResultViewModel";

/**
 * @file 结果回传示例页视图
 * @author Joker.X
 */
@ComponentV2
export struct NavigationResultPage {
  /**
   * 结果回传示例页 ViewModel
   */
  @Local
  private vm: NavigationResultViewModel = new NavigationResultViewModel();

  /**
   * 构建结果回传示例页
   * @returns {void} 无返回值
   */
  build() {
    AppNavDestination({
      title: "结果回传示例页",
      viewModel: this.vm
    }) {
      this.NavigationResultContent();
    }
  }

  /**
   * 结果回传示例页内容视图
   * @returns {void} 无返回值
   */
  @Builder
  private NavigationResultContent() {
    Text("结果回传示例页内容视图")
  }
}
