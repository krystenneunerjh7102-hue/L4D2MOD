# XNP Airborne Triple Slash v0.7.7 / XNP 空中三段斩 v0.7.7

**Game / 游戏：** Left 4 Dead 2 / 求生之路 2  
**Type / 类型：** Pure VScript gameplay addon / 纯 VScript 玩法模组  
**Steam Workshop / 创意工坊：** https://steamcommunity.com/sharedfiles/filedetails/?id=3751981994

## Latest public release / 最新公开版本

**v0.7.7 — Tongue Escape Public Release / 舌控挣脱正式版**

This repository is being rebuilt as the clean public home for the verified XNP Airborne Triple Slash release. The repository body will contain verified source files only. Runnable VPK packages and verified SOURCE ZIP archives belong in GitHub Releases, not mixed into the repository root.

本仓库正在重新整理为 XNP 空中三段斩的干净公开主页。仓库正文只放经过确认的源码；可运行 VPK 和经过确认的 SOURCE ZIP 应放在 GitHub Releases 中，不与仓库根目录混放。

> The previously uploaded 22-file package has not been verified as fully identical to the actual in-game v0.7.7 build, so it must not be labeled as the complete v0.7.7 source.
>
> 之前上传的 22 文件包尚未确认与游戏中实际运行的 v0.7.7 完全一致，因此不能标注为“完整 v0.7.7 源码”。

## Main features / 主要功能

- Ground Dash / 地面突进
- Airborne Triple Slash / 空中三段斩
- Attack Dash and Normal Dash / 攻击突进与普通突进
- Three-charge system / 三格充能系统
- Active Smoker Tongue Escape / 主动挣脱 Smoker 舌控
- Tank movement and attack suppression / Tank 移动与攻击抑制
- Tank stagger attempt / Tank 硬直尝试
- HUD charge display / HUD 充能显示
- Fall protection / 坠落保护

## Basic controls / 基础操作

1. Equip a melee weapon. / 装备近战武器。
2. Hold **Left Shift** to prepare the skill state. / 按住 **Left Shift** 进入技能准备状态。
3. Press **Mouse Left** for Attack Dash. / 按鼠标左键发动攻击突进。
4. Release **Left Shift** for Normal Dash. / 松开 Left Shift 发动普通突进。
5. When controlled by a Smoker tongue, press Left Shift once to actively escape. / 被 Smoker 舌控时，按一次 Left Shift 主动挣脱。

## Requirements / 运行要求

- Left 4 Dead 2
- No SourceMod required / 不需要 SourceMod
- No VSLib required / 不需要 VSLib
- Enable only one XNP melee gameplay addon at a time / 建议一次只启用一个 XNP 近战玩法模组

## Known limitations / 已知限制

- Tank physical displacement can be limited by Source engine collision and map geometry.
- Other addons that replace the same VScript entry points may conflict.
- Tank 的物理位移可能受 Source 引擎碰撞和地图结构限制。
- 替换相同 VScript 入口的其他模组可能发生冲突。

## Release layout / 发布结构

Repository body / 仓库正文：

- Verified complete SOURCE only / 只放经过确认的完整 SOURCE
- README and documentation / README 与说明文档

GitHub Releases：

- Runnable `.vpk` / 可运行 `.vpk`
- Verified SOURCE `.zip` / 经过确认的 SOURCE `.zip`
- Bilingual release notes / 中英双语更新说明

## Status / 当前状态

The repository landing page has been rebuilt. Release assets will only be added after their contents are verified against the actual v0.7.7 game build.

仓库首页已重新建立。发布附件必须先与实际运行的 v0.7.7 进行核验，确认无误后再上传。
