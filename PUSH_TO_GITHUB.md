# 推送规则仓库

先在 GitHub 新建空仓库：

```text
ComicReader_Rules
```

然后执行：

```bash
cd ComicReader_Rules_repo
git init
git add .
git commit -m "initial remote comic rules repo"
git branch -M main
git remote add origin https://github.com/liyan-lucky/ComicReader_Rules.git
git push -u origin main
```

App 会读取：

```text
https://raw.githubusercontent.com/liyan-lucky/ComicReader_Rules/main/generated/index.json
```

后续更新规则：

```bash
bash scripts/generate_remote_rules.sh "斗罗大陆" "Soul Land" "Douluo Dalu"
git add generated/ rules/index.json
git commit -m "chore: update comic rules"
git push
```

也可以用 GitHub Actions：

```text
Actions → Generate Remote Comic Rules → Run workflow
```
