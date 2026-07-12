# XNP Airborne Triple Slash v0.7.7 / XNP 空中三段斩 v0.7.7

**Game / 游戏：** Left 4 Dead 2 / 求生之路 2  
**Type / 类型：** Pure VScript gameplay addon / 纯 VScript 玩法模组  
**Steam Workshop / 创意工坊：** https://steamcommunity.com/sharedfiles/filedetails/?id=3751981994

## Download / 下载

The verified public release will provide two separate assets in **GitHub Releases**:

- `XNP_Airborne_Triple_Slash_v0.7.7.vpk` — runnable game package
- `XNP_Airborne_Triple_Slash_v0.7.7_SOURCE.zip` — complete source archive

正式发布页将提供两个独立附件：

- `XNP_Airborne_Triple_Slash_v0.7.7.vpk` — 可直接安装运行的游戏包
- `XNP_Airborne_Triple_Slash_v0.7.7_SOURCE.zip` — 完整源码压缩包

The repository body is reserved for the expanded, human-readable source tree and documentation. Runnable VPK files should be downloaded from Releases instead of being mixed into the repository root.

仓库正文用于展开后的可浏览源码与文档；可运行 VPK 放在 Releases 中，不与仓库根目录混放。

## Latest version / 最新版本

**v0.7.7 — Tongue Escape Public Release / 舌控挣脱正式版**

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

## Installation / 安装

Place the `.vpk` file in:

```text
Left 4 Dead 2/left4dead2/addons/
```

将 `.vpk` 放入：

```text
Left 4 Dead 2/left4dead2/addons/
```

## Known limitations / 已知限制

- Tank physical displacement can be limited by Source engine collision and map geometry.
- Other addons that replace the same VScript entry points may conflict.
- Tank 的物理位移可能受 Source 引擎碰撞和地图结构限制。
- 替换相同 VScript 入口的其他模组可能发生冲突。

## Repository layout / 仓库结构

```text
SOURCE/                Expanded verified source / 展开的已核验源码
README.md              Project home / 项目主页
RELEASE_NOTES_v0.7.7.md
```

Release assets / 发布附件：

```text
XNP_Airborne_Triple_Slash_v0.7.7.vpk
XNP_Airborne_Triple_Slash_v0.7.7_SOURCE.zip
SHA256SUMS.txt
```

## Status / 当前状态

The repository landing page and release notes are prepared. The final release assets must be generated from the verified v0.7.7 SOURCE and the confirmed runnable v0.7.7 VPK before publishing.

仓库主页与发布说明已经整理。正式发布前，必须使用核验通过的 v0.7.7 SOURCE 和已确认可运行的 v0.7.7 VPK 生成最终附件。