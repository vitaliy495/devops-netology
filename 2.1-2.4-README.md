# devops-netology
## Домашнее задание создание репозитория git
##
описание игнорирования из файла

1. каталоги .terrafom и файлы в них
2. все файлы с расширением .tfstate
3. все файлы у которых префикс и расширение любое у файла с именем tfstate
4. файл crash.log
5. файл crash.*.log  у которого средняя часть может быть любой
6. любое имя файла с расширением .trvars
7. любое имя файла который имеет расширение .tfvars.json
8. только файл override.tf
9. только файл override.tf.json
10. любые имена файлов но содержащие в конце _override и расшерением.tf 
11. любые имена файлов но содержащие в конце _overrideи расширением .tf.json
12. файл .terraformrc
13. файл .terraform.rc

## Домашнее задание к занятию «2.4. Инструменты Git»
1. aefead2207ef7e2aa5dc81a34aedf0cad4c32545  Update CHANGELOG.md
получил так git show aefea
2. tag v.0.12.23
получил так git show 85024
3. два родителя - 56cd7859e0 и 9ea88f22fc
хеши полные
56cd7859e05c36c06b56d013b55a252d0bb7e158
9ea88f22fc6269854151c571162c5bcf958bee2b
получил так git show --pretty=format:' %P' b8d720
4. хеши и коммиты между v0.12.23 v0.12.24
33ff1c03bb960b332be3af2e333462dde88b279e (tag: v0.12.24) v0.12.24
b14b74c4939dcab573326f4e3ee2a62e23e12f89 [Website] vmc provider links
3f235065b9347a758efadc92295b540ee0a5e26e Update CHANGELOG.md
6ae64e247b332925b872447e9ce869657281c2bf registry: Fix panic when server is unreachable
5c619ca1baf2e21a155fcdb4c264cc9e24a2a353 website: Remove links to the getting started guide's old location
06275647e2b53d97d4f0a19a0fec11f6d69820b5 Update CHANGELOG.md
d5f9411f5108260320064349b757f55c09bc4b80 command: Fix bug when using terraform login on Windows
4b6d06cc5dcb78af637bbb19c198faff37a066ed Update CHANGELOG.md
dd01a35078f040ca984cdd349f18d0b67e486c35 Update CHANGELOG.md
225466bc3e5f35baa5d07197bbc079345b77525e Cleanup after v0.12.23 release
получил так git log v0.12.23..v0.12.24 --oneline

5. хеш и коммит создания func providerSource 
8c928e83589d90a031f811fae52a81be7153e82f  main: Consult local directories as potential mirrors of providers
получил так git log -S'func providerSource(' 
6. коммиты по globalPluginDirs
8364383c35  первое появление(создание) функции
66ebff90cd первое изменение 
41ab0aef7a второе изменение 
52dbf94834 третие изменение 
78b1220558 четвертое изменение 
получил так 
- узнал в каком файле присутствует git grep "func globalPluginDirs"
- отоброзил историю изменений git log -L :"func globalPluginDirs":plugins.go --oneline
7. автор synchronizedWriters - Martin Atkins <mart@degeneration.co.uk>
получил так
получил хеш git log -S"func synchronizedWriters(" --pretty=format:"%h "
и проверил каждый 
git show bdfea50cc - тут удалили функцию
git show 5ac311e2a - тут создали функцию и отсюда взял поле АВТОР