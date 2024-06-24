#!/bin/bash

# Function to install or update Homebrew
install_or_update_homebrew() {
    if ! command -v brew &> /dev/null; then
        echo "Homebrew 未安装，现在安装 Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo "Homebrew 已安装，进行升级..."
        brew update
        brew upgrade
    fi
}

# Function to install or update PHP
install_or_update_php() {
    if ! command -v php &> /dev/null; then
        echo "PHP 未安装，现在安装 PHP..."
        brew install php
    else
        echo "PHP 已安装，进行升级..."
        brew upgrade php
    fi
}

# Function to install or update Node.js and npm
install_or_update_node() {
    if ! command -v node &> /dev/null; then
        echo "Node.js 和 npm 未安装，现在安装 Node.js 和 npm..."
        brew install node
    else
        echo "Node.js 和 npm 已安装，进行升级..."
        brew upgrade node
    fi
}

# Function to install or update Composer
install_or_update_composer() {
    if ! command -v composer &> /dev/null; then
        echo "Composer 未安装，现在安装 Composer..."
        brew install composer
    else
        echo "Composer 已安装，进行升级..."
        brew upgrade composer
    fi
}

# Function to install or update MySQL
install_or_update_mysql() {
    if ! command -v mysql &> /dev/null; then
        echo "MySQL 未安装，现在安装 MySQL..."
        brew install mysql
    else
        echo "MySQL 已安装，进行升级..."
        brew upgrade mysql
    fi
}

# Main script
install_or_update_homebrew
install_or_update_php
install_or_update_node
install_or_update_composer
install_or_update_mysql

echo "所有操作完成！"
