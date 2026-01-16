import { AppNavDestination } from "ui";
import NetworkListDemoViewModel from "../viewmodel/NetworkListDemoViewModel";

/**
 * @file Network List Demo 示例页视图
 * @author Joker.X
 */
@ComponentV2
export struct NetworkListDemoPage {
  /**
   * Network List Demo 示例页 ViewModel
   */
  @Local
  private vm: NetworkListDemoViewModel = new NetworkListDemoViewModel();

  /**
   * 构建 Network List Demo 示例页
   * @returns {void} 无返回值
   */
  build() {
    AppNavDestination({
      title: "Network List Demo 示例页",
      viewModel: this.vm
    }) {
      this.NetworkListDemoContent();
    }
  }

  /**
   * Network List Demo 示例页内容视图
   * @returns {void} 无返回值
   */
  @Builder
  private NetworkListDemoContent() {
    Text("Network List Demo 示例页内容视图")
  }
}
