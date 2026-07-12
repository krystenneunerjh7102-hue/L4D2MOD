# XNP Airborne Triple Slash v0.7.7 / XNP 空中三段斩 v0.7.7

**Game / 游戏：** Left 4 Dead 2 / 求生之路 2  
**Version / 版本：** `v0.7.7`  
**Build / 构建标记：** `GR_077_TONGUE_ESCAPE_PUBLIC_RELEASE_A`  
**Type / 类型：** Pure VScript gameplay addon / 纯 VScript 玩法模组  
**Release status / 发布状态：** Verified source and runnable VPK published / 已发布核验源码与可运行 VPK  
**Steam Workshop / 创意工坊：** https://steamcommunity.com/sharedfiles/filedetails/?id=3751981994

## Release / 发布页

**Recommended release title / 建议发布标题：**

`XNP Airborne Triple Slash v0.7.7 — Public Release / XNP 空中三段斩 v0.7.7 — 正式发布`

Release page / 发布页：

https://github.com/krystenneunerjh7102-hue/L4D2MOD/releases/tag/v0.7.7

### Release assets / 发布附件

- `XNP_Airborne_Triple_Slash_v0.7.7.vpk` — runnable game package / 可直接安装运行的游戏包
- `XNP_Airborne_Triple_Slash_v0.7.7_SOURCE.zip` — verified complete source archive / 已核验完整源码包
- `SHA256SUMS.txt` — integrity checksums; refresh after changing any release asset / 完整性校验值；附件变化后必须重新生成
- GitHub-generated `Source code (zip)` and `Source code (tar.gz)` — repository snapshots containing `SOURCE/`

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

Place the VPK in:  
将 VPK 放入：

```text
Left 4 Dead 2/left4dead2/addons/
```

## License / 许可证

This project is released under the **MIT License**. You may use, copy, modify, publish, redistribute, sublicense, and include the source in other projects, including commercial projects, provided that the copyright notice and MIT license notice are retained.

本项目采用 **MIT License**。允许使用、复制、修改、发布、再分发、再许可，也允许用于其他项目及商业项目；条件是保留版权声明与 MIT 许可证文本，并注明原作者：**XNPHL**。

See [`LICENSE`](LICENSE).

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
LICENSE                         MIT License / MIT 许可证
```

## Verification / 核验状态

- SOURCE identity: confirmed / SOURCE 身份：已确认
- Version: `0.7.7-tongue-escape-public-release`
- Build marker: `GR_077_TONGUE_ESCAPE_PUBLIC_RELEASE_A`
- Runnable VPK: supplied by the author as the actual previously used package / 可运行 VPK：由作者确认是此前实际使用的包
- Independent VPK-to-SOURCE byte-equivalence audit: not performed / VPK 与 SOURCE 的独立逐字节等价审计：未执行
