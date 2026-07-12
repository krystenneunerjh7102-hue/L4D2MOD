# XNP Airborne Triple Slash v0.7.7 / XNP 空中三段斩 v0.7.7

**Game / 游戏：** Left 4 Dead 2 / 求生之路 2  
**Version / 版本：** `v0.7.7`  
**Build / 构建标记：** `GR_077_TONGUE_ESCAPE_PUBLIC_RELEASE_A`  
**Type / 类型：** Pure VScript gameplay addon / 纯 VScript 玩法模组  
**Current release status / 当前发布状态：** Verified source published; runnable VPK pending / 已发布核验源码，可运行 VPK 待补充  
**Steam Workshop / 创意工坊：** https://steamcommunity.com/sharedfiles/filedetails/?id=3751981994

## Release / 发布页

**Current release title / 当前发布标题：**

`XNP Airborne Triple Slash v0.7.7 — Verified Source Release / XNP 空中三段斩 v0.7.7 — 已核验源码发布`

Release page / 发布页：

https://github.com/krystenneunerjh7102-hue/L4D2MOD/releases/tag/v0.7.7

### Available now / 当前可下载

- `XNP_Airborne_Triple_Slash_v0.7.7_SOURCE.zip` — verified complete source archive / 已核验完整源码包
- `SHA256SUMS.txt` — integrity checksum / 完整性校验值
- GitHub-generated `Source code (zip)` and `Source code (tar.gz)` — repository snapshots containing `SOURCE/` / GitHub 自动生成且包含 `SOURCE/` 的仓库快照

### To be added / 待补充

- `XNP_Airborne_Triple_Slash_v0.7.7.vpk` — runnable game package / 可直接安装运行的游戏包

The runnable VPK will be added only after the actual in-game v0.7.7 package is located and verified.  
只有在找到并核验实际游戏中运行的 v0.7.7 包后，才会补充可运行 VPK。

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

The runnable VPK is not included yet. After it is added to the release, place it in:  
当前尚未附带可运行 VPK。后续补充后，将其放入：

```text
Left 4 Dead 2/left4dead2/addons/
```

## Known limitations / 已知限制

- Tank physical displacement can be limited by Source engine collision and map geometry.
- Addons that replace the same VScript entry points may conflict.
- Tank 的物理位移可能受 Source 引擎碰撞和地图结构限制。
- 替换相同 VScript 入口的其他模组可能发生冲突。

## Repository layout / 仓库结构

```text
SOURCE/                         Expanded verified source / 展开的已核验源码
README.md                       Project home / 项目主页
RELEASE_NOTES_v0.7.7.md         Release notes / 发布说明
```

## Verification / 核验状态

- SOURCE identity: confirmed / SOURCE 身份：已确认
- Version: `0.7.7-tongue-escape-public-release`
- Build marker: `GR_077_TONGUE_ESCAPE_PUBLIC_RELEASE_A`
- Tag `v0.7.7`: points to the current `main` commit and includes `SOURCE/` / 标签已指向当前 `main`，并包含 `SOURCE/`
- Runnable VPK equivalence: not yet verified / 可运行 VPK 等价性：尚未核验
