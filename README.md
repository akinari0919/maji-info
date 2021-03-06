# 🔹マジその情報助かります🔹

## 🔹サービス概要🔹
過去にRUNTEQ生が
Mattermostに投稿した有益な情報を
定期的に紹介してくれるBotサービスです。

### __🔻メインターゲット__
- 新入RUNTEQ生

### __🔻ユーザーが抱える課題__
- おすすめのチャンネルが分からない
- 他のRUNTEQ生の有益な情報を知らないままになることがある

### __🔻解決方法__
定期的に有益情報が流れてくるチャンネルをつくることで、<br>
新たな学びやコミュニティ作りのきっかけにしてもらいます。

### __🔻実装予定の機能__
- MVP
  - ログイン機能（管理者投稿用）
  - 投稿CRUD機能
  - 投稿された情報のURLをMattermostの専用チャンネルに
    定期的（毎日18時）に配信する
- MVP以降の拡張機能(想定)
  - RUNTEQ生限定で一般ユーザー登録・投稿
  - URL以外の情報(リアルな投稿の形)として配信
  - 管理者画面

### __🔻なぜこのサービスを作りたいのか？__
RUNTEQ生全員チャンネルフォローしていると有益情報が手に入りやすくなる反面、情報過多になるデメリットもありました。これからも増え続けるコミュニティに備え、情報整理の為と新しく入学されてくるRUNTEQ生にとっての情報収集のきっかけの場にしたいと考え開発することにしました。

### __🔻スケジュール__
- MVPリリース：4/17

<br>

## 🔹使用技術(予定)🔹
### __🔻バックエンド__
- Ruby
- Ruby on Rails

### __🔻Gem__
- sorcery
- pry-beybug
- rspec-rails
- factorybot
- capybara
- awesome print
- i18n
- rubocop

### __🔻フロント__
- HTML
- tailwind

### __🔻テスト__
- Rspec

### __🔻インフラ__
- Docker
- PostgreSQL
- Heroku

<br>

## 🔹画面遷移図🔹
https://www.figma.com/file/Hj89LLvgds4EFfxCX0vFh1/maji-info?node-id=0%3A1

<br>

## 🔹テーブル設計・ER図🔹
https://drive.google.com/file/d/1DuTKVJtGrHR0C29BCe1anMwWSt2IyTY4/view?usp=sharing
[![Image from Gyazo](https://i.gyazo.com/93c8fbfeccafb809a48797b55e4e9548.png)](https://gyazo.com/93c8fbfeccafb809a48797b55e4e9548)
### 🔻Postsテーブル
- body

### 🔻Usersテーブル
- email
- crypted_password
- salt