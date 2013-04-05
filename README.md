# Multiinsert

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'multiinsert'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install multiinsert

## Usage

Create a form in your view file using the "form_tag". 
Prepend the name of the model along with a hyphen to the form attribute name. 
Then to make it dynamic, append the dynamic id with a hyphen to the same form attribute. For eg., 
    <% objects.each do |object| %>
        <%= text_field_tag "author" %> 
    <% end %>
    <%= submit_tag "Save", :class => "save_btn"%>
    
should be written as   
    
    <% objects.each do |object| %>
        <%= text_field_tag "book-author-"+object.id.to_s %>
    <% end %>
    <%= submit_tag "Save", :class => "save_btn"%>
    
The controller will implement the gem like:

Multiinsert::SaveRecords.save(params hash, book, save) # for saving the records

Multiinsert::SaveRecords.save(params hash, book, save) # for updating the records

That is it.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
