import { AppNavDestination } from "ui";
import CoreViewModel from "../viewmodel/CoreViewModel";

/**
 * @file 核心页面视图
 * @author Joker.X
 */
@ComponentV2
export struct CorePage {
  /**
   * 核心页面 ViewModel
   */
  @Local
  private vm: CoreViewModel = new CoreViewModel();

  /**
   * 构建核心页面
   * @returns {void} 无返回值
   */
  build() {
    AppNavDestination({
      title: "核心",
      viewModel: this.vm
    }) {
      this.CoreContent();
    }
  }

  /**
   * 核心页面内容视图
   * @returns {void} 无返回值
   */
  @Builder
  private CoreContent() {
    Text("核心页面内容视图")
  }
}
