source 'https://rubygems.org'

gem 'rails',        '5.1.6'
gem 'puma',         '3.9.1'
gem 'sass-rails',   '5.0.6'
gem 'uglifier',     '3.2.0'
gem 'coffee-rails', '4.2.2'
gem 'jquery-rails', '4.3.1'
gem 'turbolinks',   '5.0.1'
gem 'jbuilder',     '2.7.0'

#ログイン機能
gem 'devise'

#Bootstrap
gem 'bootstrap', '~> 5.0.0.alpha1' #インストール時エラー
#gem 'bootstrap-sass', '3.3.7'  #railsチュートリアル
#gem 'bootstrap', '~> 4.4.1'
gem 'devise-bootstrap-views', '~> 1.0'
#gem 'bootstrap-sass' 
#gem 'sass-rails'

# 日本語化
gem 'rails-i18n', '~> 5.1' #変わってない
gem 'devise-i18n'


group :development, :test do
  gem 'sqlite3', '1.3.13'
  gem 'byebug',  '9.0.6', platform: :mri
end

group :development do
  gem 'web-console',           '3.5.1'
  gem 'listen',                '3.1.5'
  gem 'spring',                '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
end

group :production do
 # gem 'pg', '0.20.0' 環境構築時コメントアウト
end

# Windows環境ではtzinfo-dataというgemを含める必要があります
#gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]