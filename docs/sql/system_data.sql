/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : open-cloud

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-11-28 03:27:31
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Records of system_account
-- ----------------------------
INSERT INTO `system_account` VALUES ('521677655368531968', '521677655146233856', 'admin', 'eff18e98d71551f4ba6262615987dd5a5a5071cfcc0df68fe0bbc302390b936470d3188eb99e0349', 'username', '@admin.com', null, '2019-07-03 17:11:59', '1', '2019-07-11 17:38:21');
INSERT INTO `system_account` VALUES ('557063237787451392', '557063237640650752', 'test', 'c7eaa171ec02d669a5da520edb8f333a435f6b6a129b08b813dc221a120f39c5e808fab5f899f0ad', 'username', '@admin.com', null, '2019-07-03 17:12:02', '1', '2019-07-11 17:20:44');

-- ----------------------------
-- Records of system_action
-- ----------------------------
INSERT INTO `system_action` VALUES ('1131849293404176385', 'systemMenuView', '查看', '', '3', '0', '1', '2019-05-24 17:07:54', '2019-07-11 22:23:54', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131849510572654593', 'systemMenuEdit', '编辑', '', '3', '0', '1', '2019-05-24 17:08:46', '2019-05-24 17:08:46', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131858946338992129', 'systemRoleView', '查看', '', '8', '0', '1', '2019-05-24 17:46:16', '2019-05-24 17:46:16', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131863248310775809', 'systemRoleEdit', '编辑', '', '8', '0', '1', '2019-05-24 18:03:22', '2019-05-24 18:03:22', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131863723722551297', 'systemAppView', '查看', '', '9', '0', '1', '2019-05-24 18:05:15', '2019-05-24 18:05:15', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131863775899693057', 'systemAppEdit', '编辑', '', '9', '0', '1', '2019-05-24 18:05:27', '2019-05-24 18:05:27', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131864400507056130', 'systemUserView', '查看', '', '10', '0', '1', '2019-05-24 18:07:56', '2019-05-24 18:07:56', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131864444878598146', 'systemUserEdit', '编辑', '', '10', '0', '1', '2019-05-24 18:08:07', '2019-05-24 18:08:07', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131864827252322305', 'gatewayIpLimitView', '查看', '', '2', '0', '1', '2019-05-24 18:09:38', '2019-11-20 03:01:49', '0', '');
INSERT INTO `system_action` VALUES ('1131864864267055106', 'gatewayIpLimitEdit', '编辑', '', '2', '0', '1', '2019-05-24 18:09:47', '2019-05-24 18:09:47', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131865040289411074', 'gatewayRouteView', '查看', '', '5', '0', '1', '2019-05-24 18:10:29', '2019-05-24 18:10:29', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131865075609645057', 'gatewayRouteEdit', '编辑', '', '5', '0', '1', '2019-05-24 18:10:37', '2019-05-24 18:10:37', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131865482314526722', 'systemApiView', '查看', '', '6', '0', '1', '2019-05-24 18:12:14', '2019-05-24 18:12:14', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131865520738545666', 'systemApiEdit', '编辑', '', '6', '0', '1', '2019-05-24 18:12:23', '2019-05-24 18:12:23', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131865772929462274', 'gatewayLogsView', '查看', '', '12', '0', '1', '2019-05-24 18:13:23', '2019-05-24 18:13:23', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131865931146997761', 'gatewayRateLimitView', '查看', '', '14', '0', '1', '2019-05-24 18:14:01', '2019-05-24 18:14:01', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131865974704844802', 'gatewayRateLimitEdit', '编辑', '', '14', '0', '1', '2019-05-24 18:14:12', '2019-05-24 18:14:12', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131866278187905026', 'jobView', '查看', '', '16', '0', '1', '2019-05-24 18:15:24', '2019-05-25 03:23:15', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131866310622457857', 'jobEdit', '编辑', '', '16', '0', '1', '2019-05-24 18:15:32', '2019-05-25 03:23:21', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1131867094479155202', 'webhookView', '查看', '', '18', '0', '1', '2019-05-24 18:18:39', '2019-07-11 22:18:13', '1', 'admin-server');
INSERT INTO `system_action` VALUES ('1149320706039820290', 'developerView', '查看', '', '1149253733673287682', '0', '1', '2019-07-11 22:13:04', '2019-07-11 22:13:04', '0', 'admin-server');
INSERT INTO `system_action` VALUES ('1149320749446672385', 'developerEdit', '编辑', '', '1149253733673287682', '0', '1', '2019-07-11 22:13:14', '2019-07-11 22:13:14', '0', 'admin-server');

-- ----------------------------
-- Records of system_api
-- ----------------------------
INSERT INTO `system_api` VALUES ('1198591121762463746', 'bc5e50817697072660aea074e4dc7132', '获取当前登录用户已分配菜单权限', 'RESOURCE_SERVER', '获取当前登录用户已分配菜单权限', 'GET', '', 'admin-server', '/current/user/menu', '0', '1', '2019-11-24 21:16:06', '2019-11-28 03:06:08', '1', '1', 'com.opencloud.admin.controller.CurrentUserController', 'findAuthorityMenu');
INSERT INTO `system_api` VALUES ('1198591121854738433', 'd489afbcc83682c275cb05eb490cb2ff', '修改当前登录用户基本信息', 'RESOURCE_SERVER', '修改当前登录用户基本信息', 'POST', '', 'admin-server', '/current/user/update', '0', '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.CurrentUserController', 'updateUserInfo');
INSERT INTO `system_api` VALUES ('1198591121917652993', 'fe1598c24c3feb9baea0bacb5c7d4748', '修改当前登录用户密码', 'RESOURCE_SERVER', '修改当前登录用户密码', 'GET', '', 'admin-server', '/current/user/rest/password', '0', '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.CurrentUserController', 'restPassword');
INSERT INTO `system_api` VALUES ('1198591121972178945', '5d7d25e25a0358ebe40f75253f67ae59', '获取分页访问日志列表', 'RESOURCE_SERVER', '获取分页访问日志列表', 'GET', '', 'admin-server', '/gateway/access/logs', '0', '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayAccessLogsController', 'getAccessLogListPage');
INSERT INTO `system_api` VALUES ('1198591122022510594', '53dc188012cd24511b89857d58871a61', '移除IP策略', 'RESOURCE_SERVER', '移除IP策略', 'POST', '', 'admin-server', '/gateway/limit/ip/remove', '0', '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayIpLimitController', 'remove');
INSERT INTO `system_api` VALUES ('1198591122089619458', '6a1553b0f2a6ad8e469251e325959817', '获取IP策略', 'RESOURCE_SERVER', '获取IP策略', 'GET', '', 'admin-server', '/gateway/limit/ip/info', '0', '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayIpLimitController', 'get');
INSERT INTO `system_api` VALUES ('1198591122144145410', 'd9934773d85316d203c1164d22ee0084', '添加/编辑IP策略', 'RESOURCE_SERVER', '添加/编辑IP策略', 'POST', '', 'admin-server', '/gateway/limit/ip/save', '0', '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayIpLimitController', 'save');
INSERT INTO `system_api` VALUES ('1198591122202865666', '151fca3f38cec1104cbed0f92668d794', '查询IP策略策略已绑定API列表', 'RESOURCE_SERVER', '查询IP策略策略已绑定API列表', 'GET', '', 'admin-server', '/gateway/limit/ip/api/list', '0', '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayIpLimitController', 'getApis');
INSERT INTO `system_api` VALUES ('1198591122269974529', 'f6515a15e2143068e0f9b348b3578bec', 'IP策略策略绑定API', 'RESOURCE_SERVER', '一个API只能绑定一个策略', 'POST', '', 'admin-server', '/gateway/limit/ip/save/api', '0', '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayIpLimitController', 'saveApis');
INSERT INTO `system_api` VALUES ('1198591122337083393', 'aaa372568e8f6cc5a827f530609afda8', '获取IP策略策略列表', 'RESOURCE_SERVER', '获取IP策略策略列表', 'GET', '', 'admin-server', '/gateway/limit/ip', '0', '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayIpLimitController', 'getPage');
INSERT INTO `system_api` VALUES ('1198591122395803650', '47f08800523b9e254950ebed6d12177c', '移除流量策略', 'RESOURCE_SERVER', '移除流量策略', 'POST', '', 'admin-server', '/gateway/limit/rate/remove', '0', '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayRateLimitController', 'remove');
INSERT INTO `system_api` VALUES ('1198591122458718210', '7e8a1db1251c0c2b454197c66693e40f', '获取流量控制', 'RESOURCE_SERVER', '获取流量控制', 'GET', '', 'admin-server', '/gateway/limit/rate/info', '0', '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayRateLimitController', 'get');
INSERT INTO `system_api` VALUES ('1198591122521632770', '64e656ac86dd10fd4364a32d62d90b46', '编辑流量控制', 'RESOURCE_SERVER', '编辑流量控制', 'POST', '', 'admin-server', '/gateway/limit/rate/save', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayRateLimitController', 'save');
INSERT INTO `system_api` VALUES ('1198591122592935938', '92bb9d8d9e9ceb7d23f4aaae8ae63fc6', '查询获取流量策略已绑定API列表', 'RESOURCE_SERVER', '查询获取流量策略已绑定API列表', 'GET', '', 'admin-server', '/gateway/limit/rate/api/list', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayRateLimitController', 'getApis');
INSERT INTO `system_api` VALUES ('1198591122651656194', '8bb07be87751b47f997bebc7725338ce', '流量策略绑定API', 'RESOURCE_SERVER', '一个API只能绑定一个策略', 'POST', '', 'admin-server', '/gateway/limit/rate/save/api', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayRateLimitController', 'saveApis');
INSERT INTO `system_api` VALUES ('1198591122706182145', 'fc4ad93f091e36679bf049bf40bf91f5', '查询获取流量策略列表', 'RESOURCE_SERVER', '查询获取流量策略列表', 'GET', '', 'admin-server', '/gateway/limit/rate', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayRateLimitController', 'getPage');
INSERT INTO `system_api` VALUES ('1198591122756513793', '6ba4192f189c2ef288a66f9a164e8996', '移除路由', 'RESOURCE_SERVER', '移除路由', 'POST', '', 'admin-server', '/gateway/route/remove', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayRouteController', 'remove');
INSERT INTO `system_api` VALUES ('1198591122802651138', 'ceead3cc3c217cf79e6312387092677d', '获取路由', 'RESOURCE_SERVER', '获取路由', 'GET', '', 'admin-server', '/gateway/route/info', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayRouteController', 'get');
INSERT INTO `system_api` VALUES ('1198591122903314433', '0e886a08fa928d93ddc5565110427fb8', '添加/编辑路由', 'RESOURCE_SERVER', '添加/编辑路由', 'POST', '', 'admin-server', '/gateway/route/save', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayRouteController', 'save');
INSERT INTO `system_api` VALUES ('1198591122983006210', '79e0e6bb01d562f22c791e29d33a1a39', '获取服务列表', 'RESOURCE_SERVER', '获取服务列表', 'GET', '', 'admin-server', '/gateway/service/list', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayRouteController', 'getServiceList');
INSERT INTO `system_api` VALUES ('1198591123041726465', '0c22c84bb294d2de71b0fa547b5c799b', '获取分页路由列表', 'RESOURCE_SERVER', '获取分页路由列表', 'GET', '', 'admin-server', '/gateway/route', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.GatewayRouteController', 'getPage');
INSERT INTO `system_api` VALUES ('1198591123087863810', 'f1a5599bd96b941b0461c0773ad21dab', 'handleError', 'RESOURCE_SERVER', '', '', '', 'admin-server', '/oauth/error', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '0', 'com.opencloud.admin.controller.IndexController', 'handleError');
INSERT INTO `system_api` VALUES ('1198591123129806850', '8dda8bfcbf81e5aee1485c40cb4fdfbb', 'login', 'RESOURCE_SERVER', '', 'GET', '', 'admin-server', '/login', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '0', 'com.opencloud.admin.controller.IndexController', 'login');
INSERT INTO `system_api` VALUES ('1198591123175944193', '7fe546226548df52131c7fb3e2564831', 'confirm_access', 'RESOURCE_SERVER', '', '', '', 'admin-server', '/oauth/confirm_access', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '0', 'com.opencloud.admin.controller.IndexController', 'confirm_access');
INSERT INTO `system_api` VALUES ('1198591123222081537', 'f57427c36c21f2440b7fab34b5f9a5b0', 'welcome', 'RESOURCE_SERVER', '', 'GET', '', 'admin-server', '/', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.IndexController', 'welcome');
INSERT INTO `system_api` VALUES ('1198591123268218881', '42dd6b2d0b87b0368b561bda1bf536cb', '获取当前登录用户信息-SSO单点登录', 'RESOURCE_SERVER', '获取当前登录用户信息-SSO单点登录', 'GET', '', 'admin-server', '/current/user/sso', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.LoginController', 'principal');
INSERT INTO `system_api` VALUES ('1198591123305967617', '3ae8e59f174ef70e071093fa7cca80f4', '获取当前登录用户信息', 'RESOURCE_SERVER', '获取当前登录用户信息', 'GET', '', 'admin-server', '/current/user', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.LoginController', 'getUserProfile');
INSERT INTO `system_api` VALUES ('1198591123352104962', 'aa2b2d3713bfc60e90ea4abc93732cb7', '退出并移除令牌', 'RESOURCE_SERVER', '退出并移除令牌,令牌将失效', 'POST', '', 'admin-server', '/remove/token', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.LoginController', 'removeToken');
INSERT INTO `system_api` VALUES ('1198591123389853697', 'c33823914afeb48de8f2a2e7b6c9b116', '登录获取用户访问令牌', 'RESOURCE_SERVER', '基于oauth2密码模式登录,无需签名,返回access_token', 'POST', '', 'admin-server', '/login/token', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '0', 'com.opencloud.admin.controller.LoginController', 'getLoginToken');
INSERT INTO `system_api` VALUES ('1198591123440185346', 'e0aa9ef810d4ebe9e83e07f6dbade6cf', '获取功能按钮详情', 'RESOURCE_SERVER', '获取功能按钮详情', 'GET', '', 'admin-server', '/action/info', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemActionController', 'get');
INSERT INTO `system_api` VALUES ('1198591123477934082', '7f21fe98fa7039bebb93b3b0da87cc1a', '添加/编辑功能按钮', 'RESOURCE_SERVER', '添加/编辑功能按钮', 'POST', '', 'admin-server', '/action/save', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemActionController', 'save');
INSERT INTO `system_api` VALUES ('1198591123519877122', '9f8cbe8d9c5f20c8e0885d605765e4fa', '获取分页功能按钮列表', 'RESOURCE_SERVER', '获取分页功能按钮列表', 'GET', '', 'admin-server', '/action', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemActionController', 'findPage');
INSERT INTO `system_api` VALUES ('1198591123566014466', '66f7c6c6b484a633ff5f473ae581e262', '移除功能按钮', 'RESOURCE_SERVER', '移除功能按钮', 'POST', '', 'admin-server', '/action/remove', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemActionController', 'removeAction');
INSERT INTO `system_api` VALUES ('1198591123607957505', '78c17d15d37a6e795b04caac78891daf', '移除接口资源', 'RESOURCE_SERVER', '移除接口资源', 'POST', '', 'admin-server', '/api/remove', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemApiController', 'remove');
INSERT INTO `system_api` VALUES ('1198591123649900546', '8505123d81ae7b14bdd071ba458beaca', '编辑接口资源', 'RESOURCE_SERVER', '编辑接口资源', 'POST', '', 'admin-server', '/api/save', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemApiController', 'save');
INSERT INTO `system_api` VALUES ('1198591123691843586', 'aacc4170589736d24a4fad5baf3e1cda', '批量删除数据', 'RESOURCE_SERVER', '批量删除数据', 'POST', '', 'admin-server', '/api/batch/remove', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemApiController', 'batchRemove');
INSERT INTO `system_api` VALUES ('1198591123733786625', 'aae4e89c3b7d6eaff90a6142b43451ca', '批量修改', 'RESOURCE_SERVER', '批量修改', 'POST', '', 'admin-server', '/api/batch/update', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemApiController', 'batchUpdate');
INSERT INTO `system_api` VALUES ('1198591123775729666', '4adeb9b9d20da3374aca18129421d2bf', '获取批量更新的服务器列表', 'RESOURCE_SERVER', '获取批量更新的服务器列表', 'GET', '', 'admin-server', '/api/batch/update/service/list', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemApiController', 'batchUpdate');
INSERT INTO `system_api` VALUES ('1198591123821867010', 'f393defdec83b6027ee071d09eb2aae3', '获取接口资源', 'RESOURCE_SERVER', '获取接口资源', 'GET', '', 'admin-server', '/api/info', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemApiController', 'getApi');
INSERT INTO `system_api` VALUES ('1198591123863810049', 'a982b19ccf4720ee490bd9d1449a1ac1', '获取服务列表', 'RESOURCE_SERVER', '获取服务列表', 'GET', '', 'admin-server', '/api/service/list', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemApiController', 'getServiceList');
INSERT INTO `system_api` VALUES ('1198591123901558786', '6258559b750642c83e24145faf3a82b9', '获取分页接口列表', 'RESOURCE_SERVER', '获取分页接口列表', 'GET', '', 'admin-server', '/api', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemApiController', 'getPage');
INSERT INTO `system_api` VALUES ('1198591123947696130', 'acd7a9df6aa17825a7c22dfb3b665f6b', '获取所有接口列表', 'RESOURCE_SERVER', '获取所有接口列表', 'GET', '', 'admin-server', '/api/list', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemApiController', 'getList');
INSERT INTO `system_api` VALUES ('1198591123989639169', '9d067ba9c50ca93deea23007624fb5d2', '批量更新资源服务器', 'RESOURCE_SERVER', '批量更新资源服务器', 'POST', '', 'admin-server', '/api/batch/update/service', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemApiController', 'batchUpdateService');
INSERT INTO `system_api` VALUES ('1198591124031582209', 'ce04d2b7a0fb1966c2572d17f36aa791', '删除应用信息', 'RESOURCE_SERVER', '删除应用信息', 'POST', '', 'admin-server', '/app/remove', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAppController', 'remove');
INSERT INTO `system_api` VALUES ('1198591124069330946', '7e15c99d33d1f6ab2cfac2cd557150e8', '获取应用详情', 'RESOURCE_SERVER', '获取应用详情', 'GET', '', 'admin-server', '/app/info', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAppController', 'get');
INSERT INTO `system_api` VALUES ('1198591124111273985', '21011e5c7ccec4172bed2060cd547bb0', '添加/编辑应用信息', 'RESOURCE_SERVER', '添加/编辑应用信息', 'POST', '', 'admin-server', '/app/save', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAppController', 'save');
INSERT INTO `system_api` VALUES ('1198591124157411330', '29ee0c23a9bc76add8c0cd1379c24d9c', '获取应用开发配置信息', 'RESOURCE_SERVER', '获取应用开发配置信息', 'GET', '', 'admin-server', '/app/client/info', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAppController', 'getClientInfo');
INSERT INTO `system_api` VALUES ('1198591124199354369', '3ee87dbc32d559c22ef517c8e9831895', '重置应用秘钥', 'RESOURCE_SERVER', '重置应用秘钥', 'POST', '', 'admin-server', '/app/reset', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAppController', 'resetSecret');
INSERT INTO `system_api` VALUES ('1198591124241297410', 'b222976550dd10a958c47ef53d94af73', '保存应用开发信息', 'RESOURCE_SERVER', '保存应用开发信息', 'POST', '', 'admin-server', '/app/client/save', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAppController', 'saveClientInfo');
INSERT INTO `system_api` VALUES ('1198591124283240449', '06126a90c7ac16bb14d4552763f4ce5a', '获取分页应用列表', 'RESOURCE_SERVER', '获取分页应用列表', 'GET', '', 'admin-server', '/app', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAppController', 'getPage');
INSERT INTO `system_api` VALUES ('1198591124325183489', '247e5f2f52e933b90f2aa1bafddd278e', '获取菜单权限列表', 'RESOURCE_SERVER', '获取菜单权限列表', 'GET', '', 'admin-server', '/authority/menu', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAuthorityController', 'findAuthorityMenu');
INSERT INTO `system_api` VALUES ('1198591124367126530', 'c2ec223dd3b27cf6dfcdf3d1c439e7ca', '获取接口权限列表', 'RESOURCE_SERVER', '获取接口权限列表', 'GET', '', 'admin-server', '/authority/api', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAuthorityController', 'findAuthorityApi');
INSERT INTO `system_api` VALUES ('1198591124404875266', '3c95440de7ce8a90c2f5ad2923747917', '获取功能权限列表', 'RESOURCE_SERVER', '获取功能权限列表', 'GET', '', 'admin-server', '/authority/action', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAuthorityController', 'findAuthorityAction');
INSERT INTO `system_api` VALUES ('1198591124446818305', 'cd05d3624ad1df5d08262ecd3640da72', '功能按钮授权', 'RESOURCE_SERVER', '功能按钮授权', 'POST', '', 'admin-server', '/authority/action/grant', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAuthorityController', 'grantAuthorityAction');
INSERT INTO `system_api` VALUES ('1198591124488761345', '9a6503b57cd7d5ea3ffa47436cda4e3c', '获取角色已分配权限', 'RESOURCE_SERVER', '获取角色已分配权限', 'GET', '', 'admin-server', '/authority/role', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAuthorityController', 'findAuthorityRole');
INSERT INTO `system_api` VALUES ('1198591124526510082', '3797e08c578c9e9287bf913a9e21d05d', '分配用户权限', 'RESOURCE_SERVER', '分配用户权限', 'POST', '', 'admin-server', '/authority/user/grant', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAuthorityController', 'grantAuthorityUser');
INSERT INTO `system_api` VALUES ('1198591124568453121', '6124a7c8fb7118365020ab0cb62b03be', '获取用户已分配权限', 'RESOURCE_SERVER', '获取用户已分配权限', 'GET', '', 'admin-server', '/authority/user', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAuthorityController', 'findAuthorityUser');
INSERT INTO `system_api` VALUES ('1198591124614590465', '93b12ae78aa55c0a400b3a0992d14bf9', '分配角色权限', 'RESOURCE_SERVER', '分配角色权限', 'POST', '', 'admin-server', '/authority/role/grant', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAuthorityController', 'grantAuthorityRole');
INSERT INTO `system_api` VALUES ('1198591124656533506', 'd60d2b634e170e961bbbc15e4081d0ab', '分配应用权限', 'RESOURCE_SERVER', '分配应用权限', 'POST', '', 'admin-server', '/authority/app/grant', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAuthorityController', 'grantAuthorityApp');
INSERT INTO `system_api` VALUES ('1198591124698476546', '61bff6a4b42355acb098db1aae615a68', '获取应用已分配接口权限', 'RESOURCE_SERVER', '获取应用已分配接口权限', 'GET', '', 'admin-server', '/authority/app', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemAuthorityController', 'findAuthorityApp');
INSERT INTO `system_api` VALUES ('1198591124736225282', '351ceacdd6bc74ecf7417beeb3a6aa0f', '更新系统用户', 'RESOURCE_SERVER', '更新系统用户', 'POST', '', 'admin-server', '/developer/save', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemDeveloperController', 'save');
INSERT INTO `system_api` VALUES ('1198591124786556930', '2c50695cbf90d984186fd9d05bf0ce4c', '系统分页用户列表', 'RESOURCE_SERVER', '系统分页用户列表', 'GET', '', 'admin-server', '/developer', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemDeveloperController', 'getPage');
INSERT INTO `system_api` VALUES ('1198591124824305665', '62f01444d43b43662d0ab38212d7942c', '修改用户密码', 'RESOURCE_SERVER', '修改用户密码', 'POST', '', 'admin-server', '/developer/update/password', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemDeveloperController', 'updatePassword');
INSERT INTO `system_api` VALUES ('1198591124866248705', 'e0d400f4cb92e5c3625187d1cebd3422', '获取所有用户列表', 'RESOURCE_SERVER', '获取所有用户列表', 'GET', '', 'admin-server', '/developer/list', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemDeveloperController', 'getUserAllList');
INSERT INTO `system_api` VALUES ('1198591124903997441', 'd9a45da8c5f3446664fc1eb5642e6d76', '移除菜单资源', 'RESOURCE_SERVER', '移除菜单资源', 'POST', '', 'admin-server', '/menu/remove', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemMenuController', 'remove');
INSERT INTO `system_api` VALUES ('1198591124945940481', 'ec327036565c3c68e75bf8b246624a18', '获取菜单资源详情', 'RESOURCE_SERVER', '获取菜单资源详情', 'GET', '', 'admin-server', '/menu/info', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemMenuController', 'get');
INSERT INTO `system_api` VALUES ('1198591124987883522', '1428b4d14576c1cd29cbd990c32b9623', '添加/编辑菜单资源', 'RESOURCE_SERVER', '添加/编辑菜单资源', 'POST', '', 'admin-server', '/menu/save', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemMenuController', 'save');
INSERT INTO `system_api` VALUES ('1198591125025632257', '2948c01cef6d2d035340f7752fe0089a', '获取分页菜单资源列表', 'RESOURCE_SERVER', '获取分页菜单资源列表', 'GET', '', 'admin-server', '/menu', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemMenuController', 'getPage');
INSERT INTO `system_api` VALUES ('1198591125067575297', 'e6b61a616111068b7ebf22fbdb34e26c', '菜单所有资源列表', 'RESOURCE_SERVER', '菜单所有资源列表', 'GET', '', 'admin-server', '/menu/list', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemMenuController', 'getList');
INSERT INTO `system_api` VALUES ('1198591125105324034', '3e7a93e720b25c3f380e156a9e50400d', '获取菜单下所有操作', 'RESOURCE_SERVER', '获取菜单下所有操作', 'GET', '', 'admin-server', '/menu/action', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemMenuController', 'getMenuAction');
INSERT INTO `system_api` VALUES ('1198591125147267074', '2c997e59bde865b119b3c1a7ccec598f', '删除角色', 'RESOURCE_SERVER', '删除角色', 'POST', '', 'admin-server', '/role/remove', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemRoleController', 'remove');
INSERT INTO `system_api` VALUES ('1198591125185015809', '8f4d3e87d45ee3cec4004a1567d01206', '获取角色详情', 'RESOURCE_SERVER', '获取角色详情', 'GET', '', 'admin-server', '/role/info', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemRoleController', 'get');
INSERT INTO `system_api` VALUES ('1198591125231153153', 'c20c5b13f84207587f9b59c843c4f83b', '获取分页角色列表', 'RESOURCE_SERVER', '获取分页角色列表', 'GET', '', 'admin-server', '/role', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemRoleController', 'getPage');
INSERT INTO `system_api` VALUES ('1198591125264707586', 'dfe97f1ace32dd08640905d0afa0f4d5', '获取所有角色列表', 'RESOURCE_SERVER', '获取所有角色列表', 'GET', '', 'admin-server', '/role/list', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemRoleController', 'getList');
INSERT INTO `system_api` VALUES ('1198591125306650625', '7b527c25944e13abc2eec7cf5245df56', '添加/编辑角色', 'RESOURCE_SERVER', '添加/编辑角色', 'POST', '', 'admin-server', '/role/update', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemRoleController', 'updateRole');
INSERT INTO `system_api` VALUES ('1198591125348593665', '7b1da7e747772e6e43c6c07a464dbb74', '角色添加成员', 'RESOURCE_SERVER', '角色添加成员', 'POST', '', 'admin-server', '/role/save/users', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemRoleController', 'saveUsers');
INSERT INTO `system_api` VALUES ('1198591125394731010', '09c4a2ac8f6d9271946d2071c749e41d', '查询角色成员', 'RESOURCE_SERVER', '查询角色成员', 'GET', '', 'admin-server', '/role/users', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemRoleController', 'getRoleUsers');
INSERT INTO `system_api` VALUES ('1198591125432479745', 'd0d59d487a10638f5af6fb5f5cc523e7', '系统分页用户列表', 'RESOURCE_SERVER', '系统分页用户列表', 'GET', '', 'admin-server', '/user', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemUserController', 'getPage');
INSERT INTO `system_api` VALUES ('1198591125499588610', '0b3a696a097e984681ce926538417180', '修改用户密码', 'RESOURCE_SERVER', '修改用户密码', 'POST', '', 'admin-server', '/user/update/password', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemUserController', 'updatePassword');
INSERT INTO `system_api` VALUES ('1198591125545725953', 'c7adb13eb5f54cabf3e977f17e57a670', '添加/更新系统用户', 'RESOURCE_SERVER', '添加/更新系统用户', 'POST', '', 'admin-server', '/user/update', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemUserController', 'updateUser');
INSERT INTO `system_api` VALUES ('1198591125583474690', '41791197de1774b08432cbb169f67e99', '获取所有用户列表', 'RESOURCE_SERVER', '获取所有用户列表', 'GET', '', 'admin-server', '/user/list', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemUserController', 'getList');
INSERT INTO `system_api` VALUES ('1198591125625417729', '67f4b50b24910e39eed2a394a4d38248', '用户分配角色', 'RESOURCE_SERVER', '用户分配角色', 'POST', '', 'admin-server', '/user/roles/add', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemUserController', 'addUserRoles');
INSERT INTO `system_api` VALUES ('1198591125658972161', '77c9f9d47106c0fbbba205aa1b2520f0', '获取用户已分配角色', 'RESOURCE_SERVER', '获取用户已分配角色', 'GET', '', 'admin-server', '/user/roles', '0', '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09', '1', '1', 'com.opencloud.admin.controller.SystemUserController', 'getUserRoles');

-- ----------------------------
-- Records of system_app
-- ----------------------------
INSERT INTO `system_app` VALUES ('1552274783265', '7gBZcbsC7kLIWCdELIl8nxcs', '0osTIhce7uPvDKHz6aa67bhCukaKoYl4', '后台管理服务器', 'admin-server', '', 'server', '资源服务器', '', 'http://www.baidu.com', '0', '2018-11-12 17:48:45', '2019-11-25 03:56:57', '1', '1');


-- ----------------------------
-- Records of system_authority
-- ----------------------------
INSERT INTO `system_authority` VALUES ('1', 'MENU_system', '1', null, null, '1', null, '2019-11-27 14:13:49');
INSERT INTO `system_authority` VALUES ('2', 'MENU_gatewayIpLimit', '2', null, null, '1', null, '2019-11-27 14:23:25');
INSERT INTO `system_authority` VALUES ('3', 'MENU_systemMenu', '3', null, null, '1', null, '2019-12-09 22:01:10');
INSERT INTO `system_authority` VALUES ('5', 'MENU_gatewayRoute', '5', null, null, '1', null, '2019-11-27 14:23:05');
INSERT INTO `system_authority` VALUES ('6', 'MENU_systemApi', '6', null, null, '1', null, '2019-11-27 14:23:09');
INSERT INTO `system_authority` VALUES ('7', 'MENU_gatewayTrace', '7', null, null, '1', null, null);
INSERT INTO `system_authority` VALUES ('8', 'MENU_systemRole', '8', null, null, '1', null, '2019-12-09 18:04:09');
INSERT INTO `system_authority` VALUES ('9', 'MENU_systemApp', '9', null, null, '1', null, '2019-12-09 22:31:18');
INSERT INTO `system_authority` VALUES ('10', 'MENU_systemUser', '10', null, null, '1', null, '2019-12-09 20:13:04');
INSERT INTO `system_authority` VALUES ('12', 'MENU_gatewayLogs', '12', null, null, '1', null, '2019-11-27 14:22:57');
INSERT INTO `system_authority` VALUES ('13', 'MENU_gateway', '13', null, null, '1', null, null);
INSERT INTO `system_authority` VALUES ('14', 'MENU_gatewayRateLimit', '14', null, null, '1', null, '2019-11-27 14:23:15');
INSERT INTO `system_authority` VALUES ('15', 'MENU_task', '15', null, null, '1', null, null);
INSERT INTO `system_authority` VALUES ('16', 'MENU_job', '16', null, null, '1', null, '2019-12-10 02:08:01');
INSERT INTO `system_authority` VALUES ('17', 'MENU_message', '17', null, null, '1', null, null);
INSERT INTO `system_authority` VALUES ('18', 'MENU_webhook', '18', null, null, '1', null, '2019-12-10 02:07:34');
INSERT INTO `system_authority` VALUES ('1131849293509033986', 'ACTION_systemMenuView', null, null, '1131849293404176385', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131849510677512193', 'ACTION_systemMenuEdit', null, null, '1131849510572654593', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131858946414489602', 'ACTION_systemRoleView', null, null, '1131858946338992129', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131863248373690369', 'ACTION_systemRoleEdit', null, null, '1131863248310775809', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131863723806437377', 'ACTION_systemAppView', null, null, '1131863723722551297', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131863775966801921', 'ACTION_systemAppEdit', null, null, '1131863775899693057', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131864400590942210', 'ACTION_systemUserView', null, null, '1131864400507056130', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131864444954095617', 'ACTION_systemUserEdit', null, null, '1131864444878598146', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131864827327819778', 'ACTION_gatewayIpLimitView', null, null, '1131864827252322305', '1', null, '2019-11-20 03:01:49');
INSERT INTO `system_authority` VALUES ('1131864864325775361', 'ACTION_gatewayIpLimitEdit', null, null, '1131864864267055106', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131865040381685761', 'ACTION_gatewayRouteView', null, null, '1131865040289411074', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131865075697725442', 'ACTION_gatewayRouteEdit', null, null, '1131865075609645057', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131865482390024193', 'ACTION_systemApiView', null, null, '1131865482314526722', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131865520809848834', 'ACTION_systemApiEdit', null, null, '1131865520738545666', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131865773000765441', 'ACTION_gatewayLogsView', null, null, '1131865772929462274', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131865931214106626', 'ACTION_gatewayRateLimitView', null, null, '1131865931146997761', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131865974771953666', 'ACTION_gatewayRateLimitEdit', null, null, '1131865974704844802', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131866278280179714', 'ACTION_jobView', null, null, '1131866278187905026', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131866310676983810', 'ACTION_jobEdit', null, null, '1131866310622457857', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131866943534542850', 'ACTION_schedulerLogsView', null, null, '1131866943459045377', '1', null, null);
INSERT INTO `system_authority` VALUES ('1131867094550458369', 'ACTION_webhookView', null, null, '1131867094479155202', '1', null, null);
INSERT INTO `system_authority` VALUES ('1141579952355979266', 'MENU_monitor', '1141579952217567234', null, null, '1', null, null);
INSERT INTO `system_authority` VALUES ('1141580147084931074', 'MENU_SpringBootAdmin', '1141580147030405121', null, null, '1', null, null);
INSERT INTO `system_authority` VALUES ('1149253733748785154', 'MENU_developer', '1149253733673287682', null, null, '1', null, '2019-11-27 14:19:31');
INSERT INTO `system_authority` VALUES ('1149320706077569025', 'ACTION_developerView', null, null, '1149320706039820290', '1', null, null);
INSERT INTO `system_authority` VALUES ('1149320749446672386', 'ACTION_developerEdit', null, null, '1149320749446672385', '1', null, null);
INSERT INTO `system_authority` VALUES ('1198591121821184001', 'API_bc5e50817697072660aea074e4dc7132', null, '1198591121762463746', null, '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591121879904257', 'API_d489afbcc83682c275cb05eb490cb2ff', null, '1198591121854738433', null, '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591121942818817', 'API_fe1598c24c3feb9baea0bacb5c7d4748', null, '1198591121917652993', null, '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591121997344769', 'API_5d7d25e25a0358ebe40f75253f67ae59', null, '1198591121972178945', null, '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591122056065025', 'API_53dc188012cd24511b89857d58871a61', null, '1198591122022510594', null, '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591122114785281', 'API_6a1553b0f2a6ad8e469251e325959817', null, '1198591122089619458', null, '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591122177699842', 'API_d9934773d85316d203c1164d22ee0084', null, '1198591122144145410', null, '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591122236420098', 'API_151fca3f38cec1104cbed0f92668d794', null, '1198591122202865666', null, '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591122303528962', 'API_f6515a15e2143068e0f9b348b3578bec', null, '1198591122269974529', null, '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591122362249218', 'API_aaa372568e8f6cc5a827f530609afda8', null, '1198591122337083393', null, '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591122429358082', 'API_47f08800523b9e254950ebed6d12177c', null, '1198591122395803650', null, '1', '2019-11-24 21:16:06', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591122488078338', 'API_7e8a1db1251c0c2b454197c66693e40f', null, '1198591122458718210', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591122559381506', 'API_64e656ac86dd10fd4364a32d62d90b46', null, '1198591122521632770', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591122626490370', 'API_92bb9d8d9e9ceb7d23f4aaae8ae63fc6', null, '1198591122592935938', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591122681016322', 'API_8bb07be87751b47f997bebc7725338ce', null, '1198591122651656194', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591122731347969', 'API_fc4ad93f091e36679bf049bf40bf91f5', null, '1198591122706182145', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591122777485314', 'API_6ba4192f189c2ef288a66f9a164e8996', null, '1198591122756513793', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591122878148610', 'API_ceead3cc3c217cf79e6312387092677d', null, '1198591122802651138', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591122957840386', 'API_0e886a08fa928d93ddc5565110427fb8', null, '1198591122903314433', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123016560641', 'API_79e0e6bb01d562f22c791e29d33a1a39', null, '1198591122983006210', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123066892289', 'API_0c22c84bb294d2de71b0fa547b5c799b', null, '1198591123041726465', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123113029633', 'API_f1a5599bd96b941b0461c0773ad21dab', null, '1198591123087863810', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123154972674', 'API_8dda8bfcbf81e5aee1485c40cb4fdfbb', null, '1198591123129806850', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123201110018', 'API_7fe546226548df52131c7fb3e2564831', null, '1198591123175944193', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123243053057', 'API_f57427c36c21f2440b7fab34b5f9a5b0', null, '1198591123222081537', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123289190401', 'API_42dd6b2d0b87b0368b561bda1bf536cb', null, '1198591123268218881', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123326939138', 'API_3ae8e59f174ef70e071093fa7cca80f4', null, '1198591123305967617', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123373076482', 'API_aa2b2d3713bfc60e90ea4abc93732cb7', null, '1198591123352104962', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123415019522', 'API_c33823914afeb48de8f2a2e7b6c9b116', null, '1198591123389853697', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123456962561', 'API_e0aa9ef810d4ebe9e83e07f6dbade6cf', null, '1198591123440185346', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123503099905', 'API_7f21fe98fa7039bebb93b3b0da87cc1a', null, '1198591123477934082', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123545042945', 'API_9f8cbe8d9c5f20c8e0885d605765e4fa', null, '1198591123519877122', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123582791682', 'API_66f7c6c6b484a633ff5f473ae581e262', null, '1198591123566014466', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123628929026', 'API_78c17d15d37a6e795b04caac78891daf', null, '1198591123607957505', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123670872065', 'API_8505123d81ae7b14bdd071ba458beaca', null, '1198591123649900546', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123712815106', 'API_aacc4170589736d24a4fad5baf3e1cda', null, '1198591123691843586', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123754758146', 'API_aae4e89c3b7d6eaff90a6142b43451ca', null, '1198591123733786625', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123788312578', 'API_4adeb9b9d20da3374aca18129421d2bf', null, '1198591123775729666', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123842838530', 'API_f393defdec83b6027ee071d09eb2aae3', null, '1198591123821867010', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123880587265', 'API_a982b19ccf4720ee490bd9d1449a1ac1', null, '1198591123863810049', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123926724609', 'API_6258559b750642c83e24145faf3a82b9', null, '1198591123901558786', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591123968667650', 'API_acd7a9df6aa17825a7c22dfb3b665f6b', null, '1198591123947696130', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124006416385', 'API_9d067ba9c50ca93deea23007624fb5d2', null, '1198591123989639169', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124056748034', 'API_ce04d2b7a0fb1966c2572d17f36aa791', null, '1198591124031582209', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124094496769', 'API_7e15c99d33d1f6ab2cfac2cd557150e8', null, '1198591124069330946', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124132245506', 'API_21011e5c7ccec4172bed2060cd547bb0', null, '1198591124111273985', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124174188546', 'API_29ee0c23a9bc76add8c0cd1379c24d9c', null, '1198591124157411330', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124220325890', 'API_3ee87dbc32d559c22ef517c8e9831895', null, '1198591124199354369', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124258074625', 'API_b222976550dd10a958c47ef53d94af73', null, '1198591124241297410', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124304211970', 'API_06126a90c7ac16bb14d4552763f4ce5a', null, '1198591124283240449', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124341960706', 'API_247e5f2f52e933b90f2aa1bafddd278e', null, '1198591124325183489', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124388098049', 'API_c2ec223dd3b27cf6dfcdf3d1c439e7ca', null, '1198591124367126530', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124425846785', 'API_3c95440de7ce8a90c2f5ad2923747917', null, '1198591124404875266', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124467789826', 'API_cd05d3624ad1df5d08262ecd3640da72', null, '1198591124446818305', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124509732865', 'API_9a6503b57cd7d5ea3ffa47436cda4e3c', null, '1198591124488761345', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124551675906', 'API_3797e08c578c9e9287bf913a9e21d05d', null, '1198591124526510082', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124593618945', 'API_6124a7c8fb7118365020ab0cb62b03be', null, '1198591124568453121', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124635561985', 'API_93b12ae78aa55c0a400b3a0992d14bf9', null, '1198591124614590465', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124673310722', 'API_d60d2b634e170e961bbbc15e4081d0ab', null, '1198591124656533506', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124719448066', 'API_61bff6a4b42355acb098db1aae615a68', null, '1198591124698476546', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124765585409', 'API_351ceacdd6bc74ecf7417beeb3a6aa0f', null, '1198591124736225282', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124803334145', 'API_2c50695cbf90d984186fd9d05bf0ce4c', null, '1198591124786556930', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124841082882', 'API_62f01444d43b43662d0ab38212d7942c', null, '1198591124824305665', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124887220226', 'API_e0d400f4cb92e5c3625187d1cebd3422', null, '1198591124866248705', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124929163266', 'API_d9a45da8c5f3446664fc1eb5642e6d76', null, '1198591124903997441', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591124966912002', 'API_ec327036565c3c68e75bf8b246624a18', null, '1198591124945940481', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125004660737', 'API_1428b4d14576c1cd29cbd990c32b9623', null, '1198591124987883522', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125046603778', 'API_2948c01cef6d2d035340f7752fe0089a', null, '1198591125025632257', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125088546818', 'API_e6b61a616111068b7ebf22fbdb34e26c', null, '1198591125067575297', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125122101250', 'API_3e7a93e720b25c3f380e156a9e50400d', null, '1198591125105324034', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125168238594', 'API_2c997e59bde865b119b3c1a7ccec598f', null, '1198591125147267074', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125210181633', 'API_8f4d3e87d45ee3cec4004a1567d01206', null, '1198591125185015809', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125247930369', 'API_c20c5b13f84207587f9b59c843c4f83b', null, '1198591125231153153', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125285679105', 'API_dfe97f1ace32dd08640905d0afa0f4d5', null, '1198591125264707586', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125331816449', 'API_7b527c25944e13abc2eec7cf5245df56', null, '1198591125306650625', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125373759489', 'API_7b1da7e747772e6e43c6c07a464dbb74', null, '1198591125348593665', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125411508225', 'API_09c4a2ac8f6d9271946d2071c749e41d', null, '1198591125394731010', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125457645569', 'API_d0d59d487a10638f5af6fb5f5cc523e7', null, '1198591125432479745', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125524754433', 'API_0b3a696a097e984681ce926538417180', null, '1198591125499588610', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125566697474', 'API_c7adb13eb5f54cabf3e977f17e57a670', null, '1198591125545725953', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125600251906', 'API_41791197de1774b08432cbb169f67e99', null, '1198591125583474690', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125646389249', 'API_67f4b50b24910e39eed2a394a4d38248', null, '1198591125625417729', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');
INSERT INTO `system_authority` VALUES ('1198591125679943681', 'API_77c9f9d47106c0fbbba205aa1b2520f0', null, '1198591125658972161', null, '1', '2019-11-24 21:16:07', '2019-11-28 03:06:09');

-- ----------------------------
-- Records of system_authority_action
-- ----------------------------
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1149168011708653570', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1149168011981283329', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1149168011926757377', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1149168012941778945', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1149168012790784002', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1149168012996304898', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1149168010743963649', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1149168010601357314', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1149168010681049090', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1131813661348925441', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1131813661483143169', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1131813661613166594', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1131813663500603394', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1131813663894867969', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1131813664033280001', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1131753768357097474', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1131753768474537986', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849510572654593', '1131753768705224706', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863248310775809', '1149168013390569474', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863248310775809', '1149168013092773889', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863248310775809', '1149168013302489090', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863248310775809', '1149168013348626434', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863248310775809', '1149168011826094081', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863248310775809', '1131753770705907714', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863248310775809', '1131753770823348225', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863248310775809', '1131753771100172289', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863248310775809', '1131753771226001410', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863248310775809', '1131813664213635074', null, null);
INSERT INTO `system_authority_action` VALUES ('1131858946338992129', '1149168013197631489', null, null);
INSERT INTO `system_authority_action` VALUES ('1131858946338992129', '1149168013243768834', null, null);
INSERT INTO `system_authority_action` VALUES ('1131858946338992129', '1149168013143105537', null, null);
INSERT INTO `system_authority_action` VALUES ('1131858946338992129', '1149168013046636546', null, null);
INSERT INTO `system_authority_action` VALUES ('1131858946338992129', '1149168012182609922', null, null);
INSERT INTO `system_authority_action` VALUES ('1131858946338992129', '1149168012086140929', null, null);
INSERT INTO `system_authority_action` VALUES ('1131858946338992129', '1131813663743873026', null, null);
INSERT INTO `system_authority_action` VALUES ('1131858946338992129', '1131813663672569857', null, null);
INSERT INTO `system_authority_action` VALUES ('1131858946338992129', '1131753770320031746', null, null);
INSERT INTO `system_authority_action` VALUES ('1131858946338992129', '1131753770445860866', null, null);
INSERT INTO `system_authority_action` VALUES ('1131858946338992129', '1131753770185814018', null, null);
INSERT INTO `system_authority_action` VALUES ('1131858946338992129', '1131753770596855809', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863723722551297', '1149168011243085826', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863723722551297', '1149168011767373826', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863723722551297', '1149168011599601666', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863723722551297', '1149168011545075713', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863723722551297', '1131813663404134402', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863723722551297', '1132203893955006465', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863723722551297', '1132203893384581121', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863723722551297', '1132203893577519106', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863775899693057', '1149168011876425729', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863775899693057', '1149168011301806082', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863775899693057', '1149168011356332033', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863775899693057', '1149168011188559874', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863775899693057', '1149168011649933313', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863775899693057', '1149168011490549761', null, null);
INSERT INTO `system_authority_action` VALUES ('1131863775899693057', '1131813663953588225', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864400507056130', '1149168012031614977', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864400507056130', '1149168013533175810', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864400507056130', '1149168013768056834', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864400507056130', '1149168013625450498', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864400507056130', '1131813663584489473', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864400507056130', '1131753771397967873', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864400507056130', '1131753771712540674', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864400507056130', '1131753772526235650', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864444878598146', '1149168013436706818', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864444878598146', '1149168013583507458', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864444878598146', '1149168013482844161', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864444878598146', '1149168013675782145', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864444878598146', '1149168012237135873', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864444878598146', '1131813663827759105', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864444878598146', '1131753772400406529', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864444878598146', '1131753772249411585', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864444878598146', '1131753771507019778', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864444878598146', '1131753771607683074', null, null);
INSERT INTO `system_authority_action` VALUES ('1149320706039820290', '1149168012593651713', null, null);
INSERT INTO `system_authority_action` VALUES ('1149320706039820290', '1149168012442656770', null, null);
INSERT INTO `system_authority_action` VALUES ('1149320749446672385', '1149168012539125762', null, null);
INSERT INTO `system_authority_action` VALUES ('1149320749446672385', '1149168012341993473', null, null);
INSERT INTO `system_authority_action` VALUES ('1149320749446672385', '1149168012287467521', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864827252322305', '1149168014606917634', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864827252322305', '1149168014560780290', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864827252322305', '1149168014426562561', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864827252322305', '1131753775453859842', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864827252322305', '1131753774891823105', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864827252322305', '1131753775000875010', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864864267055106', '1149168014233624578', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864864267055106', '1149168014472699906', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864864267055106', '1149168014518837249', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864864267055106', '1149168014376230913', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864864267055106', '1131753775768432642', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864864267055106', '1131753775642603522', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864864267055106', '1131753775181230082', null, null);
INSERT INTO `system_authority_action` VALUES ('1131864864267055106', '1131753775000875012', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865040289411074', '1149168014976016385', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865040289411074', '1149168014141349889', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865040289411074', '1149168015017959426', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865040289411074', '1131753777139970050', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865040289411074', '1131753777026723841', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865040289411074', '1131753774552084481', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865075609645057', '1149168015135399937', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865075609645057', '1149168015185731586', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865075609645057', '1149168015076679682', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865075609645057', '1131753777211273218', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865075609645057', '1131753777416794113', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865075609645057', '1131753777517457410', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865520738545666', '1149168010953678850', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865520738545666', '1149168010823655425', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865520738545666', '1149168010886569985', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865520738545666', '1131753764884213761', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865520738545666', '1131753765026820098', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865520738545666', '1131753765614022657', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865772929462274', '1149168014011326465', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865772929462274', '1131753774162014210', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865931146997761', '1149168014657249282', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865931146997761', '1149168014879547393', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865931146997761', '1149168014925684737', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865931146997761', '1131753774187180034', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865931146997761', '1131753776095588354', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865931146997761', '1131753776204640257', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865931146997761', '1131753776292720641', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865974704844802', '1149168014795661313', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865974704844802', '1149168014833410049', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865974704844802', '1149168014703386625', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865974704844802', '1149168014749523970', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865974704844802', '1131753776527601665', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865974704844802', '1131753776657625090', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865974704844802', '1131753776808620034', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865974704844802', '1131753776917671938', null, null);
INSERT INTO `system_authority_action` VALUES ('1131866278187905026', '1149313426275774466', null, null);
INSERT INTO `system_authority_action` VALUES ('1131866278187905026', '1149313426548404227', null, null);
INSERT INTO `system_authority_action` VALUES ('1131866278187905026', '1131814634553282561', null, null);
INSERT INTO `system_authority_action` VALUES ('1131866278187905026', '1131814634746220545', null, null);
INSERT INTO `system_authority_action` VALUES ('1131866310622457857', '1149313426011533314', null, null);
INSERT INTO `system_authority_action` VALUES ('1131866310622457857', '1149313426040893442', null, null);
INSERT INTO `system_authority_action` VALUES ('1131866310622457857', '1149313427341127681', null, null);
INSERT INTO `system_authority_action` VALUES ('1131866310622457857', '1149313425810206722', null, null);
INSERT INTO `system_authority_action` VALUES ('1131866310622457857', '1149313426372243458', null, null);
INSERT INTO `system_authority_action` VALUES ('1131866310622457857', '1131814634217738242', null, null);
INSERT INTO `system_authority_action` VALUES ('1131866310622457857', '1131814634293235714', null, null);
INSERT INTO `system_authority_action` VALUES ('1131866310622457857', '1131814634381316097', null, null);
INSERT INTO `system_authority_action` VALUES ('1131866310622457857', '1131814634469396481', null, null);
INSERT INTO `system_authority_action` VALUES ('1131866310622457857', '1131814634645557249', null, null);
INSERT INTO `system_authority_action` VALUES ('1131866943459045377', '1149313426275774466', null, null);
INSERT INTO `system_authority_action` VALUES ('1131866943459045377', '1131814634553282561', null, null);
INSERT INTO `system_authority_action` VALUES ('1131867094479155202', '1149313402947055618', null, null);
INSERT INTO `system_authority_action` VALUES ('1131867094479155202', '1131814508397006849', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849293404176385', '1149168012891447297', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849293404176385', '1149168012690120705', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849293404176385', '1149168012736258049', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849293404176385', '1149168012836921346', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849293404176385', '1149168010446168066', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849293404176385', '1149168010530054146', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849293404176385', '1131813661852241922', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849293404176385', '1131813663894867969', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849293404176385', '1131813661235679233', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849293404176385', '1131753768596172802', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849293404176385', '1131753768814276610', null, null);
INSERT INTO `system_authority_action` VALUES ('1131849293404176385', '1131844868619030529', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865482314526722', '1149325917445685250', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865482314526722', '1149168011125645314', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865482314526722', '1149168011012399105', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865482314526722', '1149168011071119362', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865482314526722', '1131995510689820674', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865482314526722', '1131753765458833410', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865482314526722', '1131753765324615681', null, null);
INSERT INTO `system_authority_action` VALUES ('1131865482314526722', '1131753765182009346', null, null);

-- ----------------------------
-- Records of system_authority_role
-- ----------------------------
INSERT INTO `system_authority_role` VALUES ('1', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('3', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('8', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('9', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('10', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('13', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('2', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('5', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('6', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('12', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('14', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('15', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('16', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('17', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('18', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131849293509033986', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131849510677512193', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131858946414489602', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131863248373690369', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131863723806437377', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131863775966801921', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131864400590942210', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131864444954095617', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131864827327819778', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131864864325775361', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131865040381685761', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131865075697725442', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131865482390024193', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131865520809848834', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131865773000765441', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131865931214106626', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131865974771953666', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131866278280179714', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131866310676983810', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131866943534542850', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131867094550458369', '1', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1', '2', null, null, null);
INSERT INTO `system_authority_role` VALUES ('3', '2', null, null, null);
INSERT INTO `system_authority_role` VALUES ('8', '2', null, null, null);
INSERT INTO `system_authority_role` VALUES ('9', '2', null, null, null);
INSERT INTO `system_authority_role` VALUES ('10', '2', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1149253733748785154', '2', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131858946414489602', '2', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131863723806437377', '2', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131864400590942210', '2', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131849293509033986', '2', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1149320706077569025', '2', null, null, null);
INSERT INTO `system_authority_role` VALUES ('1131849293509033986', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131849510677512193', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131858946414489602', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131863248373690369', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131863723806437377', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131863775966801921', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131864400590942210', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131864444954095617', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131864827327819778', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131864864325775361', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131865040381685761', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131865075697725442', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131865482390024193', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131865520809848834', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131865773000765441', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131865931214106626', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131865974771953666', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131866278280179714', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131866310676983810', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131866943534542850', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');
INSERT INTO `system_authority_role` VALUES ('1131867094550458369', '3', null, '2019-11-25 01:01:47', '2019-11-25 01:01:47');


-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('1', '0', 'system', '系统安全', '系统管理', '/', '', 'md-folder', '_self', '1', '1', '2018-07-29 21:20:10', '2019-11-27 14:13:49', '1', '');
INSERT INTO `system_menu` VALUES ('2', '13', 'gatewayIpLimit', '访问控制', '来源IP/域名访问控制,白名单、黑名单', '/', 'gateway/ip-limit/index', 'md-document', '_self', '6', '1', '2018-07-29 21:20:13', '2019-11-27 14:23:25', '0', '');
INSERT INTO `system_menu` VALUES ('3', '1', 'systemMenu', '菜单', '功能菜单资源', '/', 'system/menus/index', 'md-list', '_self', '10', '1', '2018-07-29 21:20:13', '2019-12-09 22:01:10', '1', '');
INSERT INTO `system_menu` VALUES ('5', '13', 'gatewayRoute', '网关路由', '网关路由', '/', 'gateway/route/index', 'md-document', '_self', '10', '1', '2018-07-29 21:20:13', '2019-11-27 14:23:05', '0', '');
INSERT INTO `system_menu` VALUES ('6', '13', 'systemApi', 'API列表', 'API接口资源', '/', 'system/api/index', 'md-document', '_self', '9', '1', '2018-07-29 21:20:13', '2019-11-27 14:23:09', '0', '');
INSERT INTO `system_menu` VALUES ('8', '1', 'systemRole', '角色', '角色信息管理', '/', 'system/role/index', 'md-people', '_self', '9', '1', '2018-12-27 15:26:54', '2019-12-09 18:04:09', '1', '');
INSERT INTO `system_menu` VALUES ('9', '1', 'systemApp', '客户端', '应用信息管理', '/', 'system/app/index', 'md-apps', '_self', '0', '1', '2018-12-27 15:41:52', '2019-12-09 22:31:18', '1', '');
INSERT INTO `system_menu` VALUES ('10', '1', 'systemUser', '管理员', '系统用户', '/', 'system/user/index', 'md-person', '_self', '9', '1', '2018-12-27 15:46:29', '2019-12-09 20:13:04', '1', '');
INSERT INTO `system_menu` VALUES ('12', '13', 'gatewayLogs', '访问日志', '', '/', 'gateway/logs/index', 'md-document', '_self', '0', '1', '2019-01-28 02:37:42', '2019-11-27 14:22:57', '0', '');
INSERT INTO `system_menu` VALUES ('13', '0', 'gateway', 'API网关', 'API网关', '/', '', 'md-folder', '_self', '0', '1', '2019-02-25 00:15:09', '2019-03-18 04:44:20', '1', 'admin-server');
INSERT INTO `system_menu` VALUES ('14', '13', 'gatewayRateLimit', '流量控制', 'API限流', '/', 'gateway/rate-limit/index', 'md-document', '_self', '8', '1', '2019-03-13 21:47:20', '2019-11-27 14:23:15', '0', '');
INSERT INTO `system_menu` VALUES ('15', '0', 'task', '任务调度', '任务调度', '/', '', 'md-document', '_self', '0', '1', '2019-04-01 16:30:27', '2019-07-11 18:07:50', '1', 'admin-server');
INSERT INTO `system_menu` VALUES ('16', '15', 'job', '定时任务', '定时任务列表', '/', '/job/index', 'md-document', '_self', '10', '1', '2019-04-01 16:31:15', '2019-12-10 02:08:01', '0', '');
INSERT INTO `system_menu` VALUES ('17', '0', 'message', '消息管理', '消息管理', '/', '', 'md-document', '_self', '0', '1', '2019-04-04 16:37:23', '2019-04-04 16:37:23', '1', 'admin-server');
INSERT INTO `system_menu` VALUES ('18', '17', 'webhook', 'webhook', '异步通知日志', '/', 'msg/webhook/index', 'md-document', '_self', '0', '1', '2019-04-04 16:38:21', '2019-12-10 02:07:34', '1', '');
INSERT INTO `system_menu` VALUES ('1141579952217567234', '0', 'monitor', '系统监控', '系统监控', '/', '', 'md-document', '_self', '0', '1', '2019-06-20 13:34:04', '2019-06-20 13:34:04', '0', 'admin-server');
INSERT INTO `system_menu` VALUES ('1141580147030405121', '1141579952217567234', 'SpringBootAdmin', 'SpringBootAdmin', 'SpringBootAdmin', 'http://', 'localhost:8849', 'md-document', '_blank', '0', '1', '2019-06-20 13:34:51', '2019-07-11 18:11:58', '0', 'admin-server');
INSERT INTO `system_menu` VALUES ('1149253733673287682', '1', 'developer', '开发者', '开发者管理', '/', 'system/developer/index', 'md-person', '_self', '7', '1', '2019-07-11 17:46:56', '2019-12-09 19:55:30', '0', '');
-- ----------------------------
-- Records of system_role
-- ----------------------------
INSERT INTO `system_role` VALUES ('1', 'admin', '系统管理员', '1', '系统管理员', '2018-07-29 21:14:54', '2019-07-11 22:24:19', '1');
INSERT INTO `system_role` VALUES ('2', 'operator', '运营人员', '1', '运营人员', '2018-07-29 21:14:54', '2019-05-25 15:14:56', '1');
INSERT INTO `system_role` VALUES ('3', 'support', '客服', '1', '客服', '2018-07-29 21:14:54', '2019-05-25 15:17:07', '1');


-- ----------------------------
-- Records of system_role_user
-- ----------------------------
INSERT INTO `system_role_user` VALUES ('521677655146233856', '1', null, null);
INSERT INTO `system_role_user` VALUES ('557063237640650752', '2', null, null);


-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES ('521677655146233856', 'admin', '超级管理员', '', '515608851@qq.com', '', 'super', null, '', '2018-12-10 13:20:45', null, '1');
INSERT INTO `system_user` VALUES ('557063237640650752', 'test', '测试用户', '', '', '', 'normal', null, '', '2019-03-18 04:50:25', null, '1');
SET FOREIGN_KEY_CHECKS=1;
