It seems view layouts from engines where the controller is also present in the host app do not load in production, but load fine in development.

#Example#
[Github Repo](http://github.com/stefanpenner/host_app/)

###working###

1. ./script/server
2. browse to http://localhost:3000/index

###not working###

1. ./script/server -e production
2.  browse to http://localhost:3000/index

##Explanation##
###Host Application###
app/controller/application_controller.rb
app/views/layouts/ {empty}
app/views/other_controller/index.html.haml
@@@ haml
%p content of app/view/other_controller/index.html.haml
@@@

###Engine###
vender/plugins/engine_name/app/controller/application_controller.rb
vender/plugins/engine_name/app/controller/other_controller.rb 
@@@ ruby
class OtherController < ApplicationController
...
end
@@@
vender/plugins/engine_name/app/views/layouts/application.html.haml
@@@ ruby
%h1 ApplicationController layouts content
= yield
@@@

###HTML output in production ###
*does not render the layouts*
@@@ ruby
<p> content of app/view/other_controller/index.html.haml
@@@

###HTML output in development ###
*renders the layouts*
@@@ ruby
<h1> ApplicationController layouts content</h1>
<p> content of app/view/other_controller/index.html.haml
@@@

