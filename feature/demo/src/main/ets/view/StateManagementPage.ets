import { AppNavDestination } from "ui";
import StateManagementViewModel from "../viewmodel/StateManagementViewModel";

/**
 * @file 状态管理示例页视图
 * @author Joker.X
 */
@ComponentV2
export struct StateManagementPage {
  /**
   * 状态管理示例页 ViewModel
   */
  @Local
  private vm: StateManagementViewModel = new StateManagementViewModel();

  /**
   * 构建状态管理示例页
   * @returns {void} 无返回值
   */
  build() {
    AppNavDestination({
      title: "状态管理示例页",
      viewModel: this.vm
    }) {
      this.StateManagementContent();
    }
  }

  /**
   * 状态管理示例页内容视图
   * @returns {void} 无返回值
   */
  @Builder
  private StateManagementContent() {
    Text("状态管理示例页内容视图")
  }
}
