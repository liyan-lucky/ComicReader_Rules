# 仓库维护说明

日常维护流程。当前事实入口：`docs/CURRENT_STATUS.md`。

## 全链路流程

一键触发：`Actions → 全链路更新`

```text
Step 1: 域名发现 → aggregator_sites.json → search_url_templates.json + seed_sites.json
Step 2: 关键词发现 → rule_keywords.json
Step 3: 规则生成 → rules/index.{lang}.json
Step 4: 目录生成 → catalog/catalog.{lang}.json
```

## 正式发布路径

| 类型 | 路径 |
|------|------|
| 规则索引 | `rules/index.{lang}.json` |
| 目录索引 | `catalog/catalog.{lang}.json` |
| 更新清单 | `generated/update_manifest.json` |

## 分支策略

- `main`：主工作分支
- `backup`：main 的快照备份（`Actions → 强制覆盖 backup 分支`）

## 定期维护

- 月度：全链路更新（域名+关键词+规则+目录）
- 半月：单独规则生成
- 周度：单独目录生成
- 按需：强制备份、清理 Actions 记录

## 常见操作

### 查看当前规则数量

```bash
python -c "import json; d=json.loads(open('rules/index.zh-Hans.json').read()); print(len(d.get('rules',[])))"
```

### 查看当前域名数量

```bash
python -c "import json; d=json.loads(open('config/aggregator_sites.json').read()); print(len(d.get('zh-Hans',[])))"
```

### 更新 manifest

```bash
python scripts/update_manifest.py --section rules --tag pipeline-$(date +%Y%m%d) --language-code zh-Hans
```
