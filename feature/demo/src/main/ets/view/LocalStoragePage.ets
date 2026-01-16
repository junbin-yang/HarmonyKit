import { AppNavDestination } from "ui";
import LocalStorageViewModel from "../viewmodel/LocalStorageViewModel";

/**
 * @file 本地存储示例页视图
 * @author Joker.X
 */
@ComponentV2
export struct LocalStoragePage {
  /**
   * 本地存储示例页 ViewModel
   */
  @Local
  private vm: LocalStorageViewModel = new LocalStorageViewModel();

  /**
   * 构建本地存储示例页
   * @returns {void} 无返回值
   */
  build() {
    AppNavDestination({
      title: "本地存储示例页",
      viewModel: this.vm
    }) {
      this.LocalStorageContent();
    }
  }

  /**
   * 本地存储示例页内容视图
   * @returns {void} 无返回值
   */
  @Builder
  private LocalStorageContent() {
    Text("本地存储示例页内容视图")
  }
}
