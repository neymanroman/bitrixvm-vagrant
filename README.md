# bitrixvm-vagrant
Виртуальная машина BitrixVM  сконфигурированная через Vagrant

# За основу взят vagrant box Centos/7 https://app.vagrantup.com/centos/boxes/7
В отличии от основного box в данном отключен SELinux (необходимо для установки BitrixVM)

# Установка
Для Vagrant необходимо уставноить плагин vbguest https://github.com/dotless-de/vagrant-vbguest
$ vagrant plugin install vagrant-vbguest

Рекомендуется после установки BitrixVM зайти по root и создать pool (1. Create Management pool of server) https://dev.1c-bitrix.ru/learning/course/index.php?COURSE_ID=37&CHAPTER_ID=08817&LESSON_PATH=3908.8809.8817

Доступы
root
vagrant
