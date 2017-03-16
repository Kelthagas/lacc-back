# README

This is the backend website for the LA Computer Company. As of today, it includes the pre-owned sheets for computers and monitors.

* Ruby version: 2.4.0

* UPDATES - 03/20/2017
- Revised website to have an updated layout. Changed names from RMA to Pre-owned. Introduced Trade-In Sheet form
- Pre-owned: removed "Code" from box for better handwritten codes. Renamed OP -> Original Part. Fixed spacing from wifi to notes. Made input text darker.
- New Trade-In Sheet now available
- Display Pre-owned: updated format and code for pre-owned display sheets
- Trade-In Progress report: removed

* To upload to server, run git push then on server run following commands
<pre><code>$bundle install --deployment --without development test
  $bundle exec rails assets:precompile RAILS_ENV=production
  $passenger-config restart-app
</code></pre>
