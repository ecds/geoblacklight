gem 'blacklight', '>= 6.11'
gem 'geoblacklight', :git => 'https://github.com/ecds/geoblacklight', :branch => 'configure-for-ecds'

run 'bundle install'

generate 'blacklight:install', '--devise'
generate 'geoblacklight:install', '-f'

rake 'db:migrate'
