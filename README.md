# Raddit

我的 Reddot clone，照著 [Week 1: How To Build A Reddit Clone With Rails 4](https://mackenziechild.me/12-in-12/1/) 這個教學影片一步步完成的。

[View the demo application here](https://week1-raddit.herokuapp.com/)

## User Story

  * 使用者可以提交一個連結，連結要有標題跟 URL
  * 使用者可以登入與登出，登入後才可以提交連結
  * 使用者可以對連結加分與扣分
  * 使用者可以對連結留言

## Installation

* always use this command for bundle during development in local machine:

    `bundle install --without production`

* always use this command for bundle for production environmnet:

    `bundle install --without development test`

* Database creation and initialization:

    `bundle exec rake db:setup db:seed`

* Start the App:

    `rails server`
