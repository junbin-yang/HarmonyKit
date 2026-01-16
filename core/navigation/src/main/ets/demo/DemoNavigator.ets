import { navigateTo } from "../NavigationService";
import { DemoRoutes } from "./DemoRoutes";
import { DemoGoodsIdParam } from "./DemoParam";

/**
 * @file Demo 模块导航封装
 * @author Joker.X
 */
export class DemoNavigator {
  /**
   * 跳转到 Network Demo 示例页
   * @returns {void} 无返回值
   */
  static toNetworkDemo(): void {
    navigateTo(DemoRoutes.NetworkDemo);
  }

  /**
   * 跳转到 Network List Demo 示例页
   * @returns {void} 无返回值
   */
  static toNetworkListDemo(): void {
    navigateTo(DemoRoutes.NetworkListDemo);
  }

  /**
   * 跳转到数据库示例页
   * @returns {void} 无返回值
   */
  static toDatabase(): void {
    navigateTo(DemoRoutes.Database);
  }

  /**
   * 跳转到本地存储示例页
   * @returns {void} 无返回值
   */
  static toLocalStorage(): void {
    navigateTo(DemoRoutes.LocalStorage);
  }

  /**
   * 跳转到状态管理示例页
   * @returns {void} 无返回值
   */
  static toStateManagement(): void {
    navigateTo(DemoRoutes.StateManagement);
  }

  /**
   * 跳转到通用网络请求示例页
   * @returns {void} 无返回值
   */
  static toNetworkRequest(): void {
    navigateTo(DemoRoutes.NetworkRequest);
  }

  /**
   * 跳转到带参跳转示例页
   * @param {number} goodsId - 商品 ID
   * @returns {void} 无返回值
   */
  static toNavigationWithArgs(goodsId: number): void {
    const params: DemoGoodsIdParam = { goodsId };
    navigateTo(DemoRoutes.NavigationWithArgs, params);
  }

  /**
   * 跳转到结果回传示例页
   * @returns {void} 无返回值
   */
  static toNavigationResult(): void {
    navigateTo(DemoRoutes.NavigationResult);
  }
}
