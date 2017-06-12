# LA Computer Company Back end Sheets

This is the back end website to create Refurbished Sheets for computers, displays as well as keep track of On Sites Appointments.

* Ruby version: 2.4.0
* Using Bootstrap: 4.0.6Alpha

### To Upload to the server
* Log in to admin user and pull files
* Log in to app admin and run following commands within app folder
<pre><code>$bundle install --deployment --without development test
$bundle exec rails assets:precompile db:migrate RAILS_ENV=production
$passenger-config restart-app
</code></pre>
