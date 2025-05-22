# Teyca test

## Install 
1. Install ruby 3.4.3
2. bundle install
3. Add production database to the root and call it 'production.db' if you want to test API
4. Сreate a .env file using .env.example as a template

## Testing
1. Add test database to the root and call it 'test.db'
2. Use command rspec <path_to_spec> for example rspec specs/controllers/operation_controller_spec.rb