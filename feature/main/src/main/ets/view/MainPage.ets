import { AppNavDestination } from "ui";
import MainViewModel from "../viewmodel/MainViewModel";

/**
 * @file 主页面视图
 * @author Joker.X
 */
@ComponentV2
export struct MainPage {
  /**
   * 主页面 ViewModel
   */
  @Local
  private vm: MainViewModel = new MainViewModel();

  /**
   * 构建主页面
   * @returns {void} 无返回值
   */
  build() {
    AppNavDestination({
      title: "主页面",
      viewModel: this.vm
    }) {
      this.MainContent();
    }
  }

  /**
   * 主页面内容视图
   * @returns {void} 无返回值
   */
  @Builder
  private MainContent() {
    Text("主页面内容视图")
  }
}
