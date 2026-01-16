import { AppNavDestination } from "ui";
import NetworkDemoViewModel from "../viewmodel/NetworkDemoViewModel";

/**
 * @file Network Demo 示例页视图
 * @author Joker.X
 */
@ComponentV2
export struct NetworkDemoPage {
  /**
   * Network Demo 示例页 ViewModel
   */
  @Local
  private vm: NetworkDemoViewModel = new NetworkDemoViewModel();

  /**
   * 构建 Network Demo 示例页
   * @returns {void} 无返回值
   */
  build() {
    AppNavDestination({
      title: "Network Demo 示例页",
      viewModel: this.vm
    }) {
      this.NetworkDemoContent();
    }
  }

  /**
   * Network Demo 示例页内容视图
   * @returns {void} 无返回值
   */
  @Builder
  private NetworkDemoContent() {
    Text("Network Demo 示例页内容视图")
  }
}
