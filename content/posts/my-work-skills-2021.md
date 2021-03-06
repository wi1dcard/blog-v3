---
tags: [Life]
date: 2021-02-01 17:36:18
title: 我的工作方法
---

2020 年转眼结束了，本想写年终总结和新年计划，却发现 2020 年除了技术进步，还总结了不少我自己的「工作技巧」，或者也可以叫做「工作守则」。我遵循着这些实践中总结出来的方法工作，为我自己以及我所在的岗位，带来了不小的时间效益和经济效益。

当然，适合自己的才是最好的，我不喜欢一味模仿其它人，希望你也带着这种想法读这篇博客。

<!--more-->

## 没有固定的计划，只有 Todo、Doing 和 Done

有不少人曾向我推荐时间规划 — 计划每天每段时间应该做什么。尝试过后发现其实不适合我。相较于研发、科研岗位通常会制定长期的开发目标、论文目标；作为一名 DevOps 工程师，日常工作更多时候是在不断地发现问题和解决问题。

因此，我更倾向于把待办事项拆分成 Tickets，并使用 Kanban 管理它们。我的 Kanban 内通常包含几列：

- LONG TERM：不紧急的、可以未来再做的任务。通常来源是在工作中发现的可优化项，或是来自同事的需求但调研后发现暂时不太容易解决的事。
- TODO：需要尽快完成的任务。通常来源是比较重要、紧急的需求。
- DOING：正在做的事。
- STALLED：由于外部因素暂停的任务。比如需要等待某个 PR 合并、等待同事的确认回复等。
- DONE：已完成的任务。

有了 Kanban，我的工作流就清晰了：

当新需求出现时，我会查看现在的 TODO 和 LONG TERM 有没有类似的事；如果需要服务下线维护，我会查找是否有可以一并在同一次维护中完成的任务，尽可能减少下线次数。

开始工作前，我会浏览一遍 TODO 和 LONG TERM，根据任务的重要和紧急程度，调整它们的先后顺序、优先级等；因为在实际工作过程中，很多任务随着时间推移、技术迭代、市场和产品计划调整，可能瞬间从 LONG TERM 上升为较紧急，也可能从 TODO 直接消失，被 Archive。

我还会时不时看看 STALLED，这一列能帮助我管理和推动那些受到外部因素影响而不能立刻完成的任务，譬如等待开源项目的 Bugfix PR 合并，等待同事的答复之类；这样，我可以定期去 PR 催一下合并、提醒一下同事，进而推动「外部力量」尽快解决问题，避免我的任务长期由于外部原因拖延。

最后，当我认为某个事项是 DONE，那么它一定是以下三种状态之一：

- 已达成最初目的、解决了问题；或
- 未解决问题但准备了可行的折中方案；或
- 无法解决问题，并给出设想方案以及不可行的理由。

## 遇到问题要讲，主动沟通并持续跟进

工作过程中遇到不熟悉的内容很常见。在着手新事项的第一时间，我可能会有大量的疑问。这些疑问大多是我在构想接下来应该怎么做时，结合类似事项的经验和经历，提前预期到的。在开始做之前我会先问清楚这些问题；如果对方不能及时解答，或是指派给其他人解答，要主动地持续跟进。提醒自己 — 这些问题的答案有助于我工作的完成，我需要这些答案。

即时通讯降低了某些场景下的沟通成本，但同时也让按下发送键前一刻的思考变少了。为了提高询问他人时的沟通效率，我一般会遵循这几个原则：

- 将多个小问题合并成一条消息发送，避免对方遗漏消息。
- 使用 `1. 2. 3.` 数字编号，当问题之间有依赖关系时方便引用，同时对方能够根据编号回答，不容易遗漏或跑题。
- 发送需要复制粘贴的内容时（例如报错信息 — 可能对方需要复制到 Google 内搜索），不要截图；同时尽可能使用代码格式，避免对方不小心复制多余的内容，且能提升消息阅读体验。
- 发送之前快速浏览一遍消息。整理句子结构，避免冗余的话术，确保排版格式正确，把即时消息当作一封对方几小时后才能回复的邮件。

## 不进行没有结果的讨论，讨论结束要有切实可行的「下一步」

当我认为即时消息无法快速讨论问题，或是有过多细节需要「头脑风暴」快速交换想法时，我会发起一次讨论或者会议。为了能够快速推动进度，我通常会在接近会议尾声时简单总结，大致结构是：

> 「某人」应当在「某时间内」完成「某事」，过程中可寻求「某某」的帮助。

因此，会议结束后，参会同事能清楚地知道：自己下一步要做什么、需要与谁协作、产出什么结果。避免 A 以为 B 会做，B 以为 A 会做，再加上双方欠缺沟通，结果谁都没做的尴尬局面。

## 明确有时比优雅更重要

作为程序员，解决问题的过程中少不了写代码。虽然有不少人坚持代码应该优雅而完美，而我认为某些时候明确比优雅更重要。当两方冲突时，我需要权衡并尽可能取得平衡。例如以下几个具体场景：

- 使用最简化的默认值，当默认参数无法正常运行时，通过报错引导用户显式地调整某个值，而不是隐式地自动修改默认值 —— 让用户逐渐熟悉配置，避免「虽然能运行，却留下了未来才能发现的暗坑」。
- 当某个文件不得不复制粘贴时，在新旧副本各添加一段注释，表示该文件应当与另一处保持同步 —— 当未来的我或其他同事接手时，尽量避免潜在的问题。
- 让逻辑尽可能简单直观、符合直觉 —— 在出现紧急问题需要修复时，我很难快速理解、回忆复杂的逻辑。
- 命名具有足够清晰的指向性，使用 `storageSize` 而不是 `storage`，`timeoutSeconds` 而不是 `timeout` —— 便于理解且减少未来的 breaking changes。
- 版本限定尽可能严谨，能指定具体版本就不使用 latest，不通过复用 latest 来节约镜像仓库大小。

## 不要偷懒

不要偷懒体现在很多细节上，是需要长期坚持才能看到效果的过程。往往做的时候额外消耗了一些精力，但在未来或是时间紧急的时候，之前投入的回报率会很高。比如：

- 在 Commit Messages 上精确地概括改动的内容，附上相关的 Issue 链接、参考资料。当几个月后我回忆起相关问题时，能够快速定位相关 Commit，且有证据证明当时为什么要这么做。
- 发生生产环境事故后，复盘并总结调查报告。事故的发生往往不是单一原因造成的，我的记忆不足以支撑我记住曾经事故的全过程，我选择将它们记下来。
- 除了备份，还要做好演练，编写成文档。需要紧急恢复环境时，每分每秒都非常宝贵，有一份自己演练总结而成的、能够立刻参考的文档可以节省大量时间。

## 结语

我很喜欢看《空中浩劫》。我认为，某种意义上来说，DevOps 工程师的角色和飞行员有相似之处 — 需要通过「编排」让整架飞机顺利起飞，需要接受大量信息输入，需要与多名同事密切沟通、协作，需要在极短的时间内「拯救」故障的飞机。

我热爱这份工作，相信 2021 年，我依然能够做一名优秀的 DevOps 工程师，继续守护飞机平稳航行。
