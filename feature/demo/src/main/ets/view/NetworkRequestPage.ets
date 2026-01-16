import { AppNavDestination } from "ui";
import NetworkRequestViewModel from "../viewmodel/NetworkRequestViewModel";

/**
 * @file 通用网络请求示例页视图
 * @author Joker.X
 */
@ComponentV2
export struct NetworkRequestPage {
  /**
   * 通用网络请求示例页 ViewModel
   */
  @Local
  private vm: NetworkRequestViewModel = new NetworkRequestViewModel();

  /**
   * 构建通用网络请求示例页
   * @returns {void} 无返回值
   */
  build() {
    AppNavDestination({
      title: "通用网络请求示例页",
      viewModel: this.vm
    }) {
      this.NetworkRequestContent();
    }
  }

  /**
   * 通用网络请求示例页内容视图
   * @returns {void} 无返回值
   */
  @Builder
  private NetworkRequestContent() {
    Text("通用网络请求示例页内容视图")
  }
}
