import { AppNavDestination } from "ui";
import DatabaseViewModel from "../viewmodel/DatabaseViewModel";

/**
 * @file 数据库示例页视图
 * @author Joker.X
 */
@ComponentV2
export struct DatabasePage {
  /**
   * 数据库示例页 ViewModel
   */
  @Local
  private vm: DatabaseViewModel = new DatabaseViewModel();

  /**
   * 构建数据库示例页
   * @returns {void} 无返回值
   */
  build() {
    AppNavDestination({
      title: "数据库示例页",
      viewModel: this.vm
    }) {
      this.DatabaseContent();
    }
  }

  /**
   * 数据库示例页内容视图
   * @returns {void} 无返回值
   */
  @Builder
  private DatabaseContent() {
    Text("数据库示例页内容视图")
  }
}
