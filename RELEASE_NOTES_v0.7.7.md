# XNP Airborne Triple Slash v0.7.7 — Public Release / XNP 空中三段斩 v0.7.7 — 正式发布

## Release status / 发布状态

This release provides the verified v0.7.7 source package and the runnable VPK supplied by the author as the actual previously used game package.

本次发布提供经过核验的 v0.7.7 源码包，以及由作者确认是此前实际使用版本的可运行 VPK。

## Version identity / 版本身份

- Version / 版本：`0.7.7-tongue-escape-public-release`
- Build marker / 构建标记：`GR_077_TONGUE_ESCAPE_PUBLIC_RELEASE_A`
- Runtime / 运行方式：Pure VScript
- SourceMod：Not required / 不需要
- VSLib：Not required / 不需要

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

## Controls / 操作方式

- Equip a melee weapon. / 装备近战武器。
- Hold Left Shift to prepare the skill state. / 按住 Left Shift 进入技能准备状态。
- Press Mouse Left for Attack Dash. / 按鼠标左键发动攻击突进。
- Release Left Shift for Normal Dash. / 松开 Left Shift 发动普通突进。
- When controlled by a Smoker tongue, press Left Shift once to actively escape. / 被 Smoker 舌控时，按一次 Left Shift 主动挣脱。

## Release assets / 发布附件

- `XNP_Airborne_Triple_Slash_v0.7.7.vpk` — runnable game package / 可直接安装运行的游戏包
- `XNP_Airborne_Triple_Slash_v0.7.7_SOURCE.zip` — verified complete source archive / 已核验完整源码包
- `SHA256SUMS.txt` — integrity checksums; regenerate whenever an asset changes / 完整性校验值；附件变化后必须重新生成
- GitHub-generated `Source code (zip)` and `Source code (tar.gz)` — repository snapshots containing `SOURCE/`

## Installation / 安装

Place the VPK in:  
将 VPK 放入：

```text
Left 4 Dead 2/left4dead2/addons/
```

## License / 许可证

Released under the **MIT License**. Use, copying, modification, publication, redistribution, sublicensing, and commercial use are permitted provided that the copyright notice and MIT license notice are retained.

本项目采用 **MIT License**。允许使用、复制、修改、发布、再分发、再许可及商业使用；条件是保留版权声明和 MIT 许可证文本，并注明原作者：**XNPHL**。

## Verification note / 核验说明

- SOURCE identity has been confirmed.
- The VPK is identified by the author as the actual previously used package.
- No independent byte-for-byte VPK-to-SOURCE equivalence audit was performed.

- SOURCE 身份已确认。
- VPK 由作者确认是此前实际使用的包。
- 未执行 VPK 与 SOURCE 的独立逐字节等价审计。

## Compatibility / 兼容性

- Enable only one XNP melee gameplay addon at a time.
- Addons that replace the same VScript entry points may conflict.
- Tank physical displacement can be limited by Source engine collision and map geometry.
- 建议一次只启用一个 XNP 近战玩法模组。
- 替换相同 VScript 入口的其他模组可能发生冲突。
- Tank 的物理位移可能受 Source 引擎碰撞和地图结构限制。
