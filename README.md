
#### Clone the repository
 
 ```shell
 git clone git@github.com:itsalysialynn/weather-api.git
 cd weather-api
 ```
 
#### Check your Ruby version
 
 ```shell
 ruby -v
 ```
 
The output should be `ruby 2.6.3`
 
If not, install the right ruby version using [rvm](https://rvm.io/)
 
 ```shell
 rvm install 2.6.3
 rvm use 2.6.3
 ```
 
#### Install dependencies
 
Installed using [Bundler](https://github.com/bundler/bundler)
 
 ```shell
 bundle install
 ```
 
#### Initialize the database
 
 ```shell
 rails db:create db:migrate db:seed
 ```

#### Start the server

 ```shell
 rails s -p 4000
 ```
