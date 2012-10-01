module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/'

    when /home/
      root_path

    when /oauth\/authorize/
      outh_authorize_path

    when /docs\/new/
      new_doc_path

    when /docs/
      docs_path

    when /reports/
<<<<<<< HEAD
     reports_path 
       
=======
      reports_path 
=======
<<<<<<< HEAD
    when /reports/

      reports_path 
      reports_path

     
    


=======
    when /reports/ 
      reports_path
>>>>>>> 37fe993a02eee72066595dc9bc35c84630cb8ce2

>>>>>>> 80936af0c343803eeef75291321c26445a776e57
>>>>>>> 6c76ca814b9a69ce5278dc9a8c7cbfa66918b08e
    when /docs\/(.\d+)\/edit/
      edit_doc_path(Docs.find($1))
      
    when /versions\/new/
      new_version_path
<<<<<<< HEAD
=======
      
<<<<<<< HEAD
=======
<<<<<<< HEAD

    

    when /timelines/
       timelines_path
>>>>>>> 37fe993a02eee72066595dc9bc35c84630cb8ce2




=======
>>>>>>> 6c76ca814b9a69ce5278dc9a8c7cbfa66918b08e
    when /timelines/
       timelines_path

    when /timelines/
       timelines_path

    when /versions\/(.\d+)\/edit/
      edit_versions_path(Versions.find($1))

    when  /versions/
      versions_path

    when /versions\/(.\d+)/
      version_path(Versions.find($1))

    when  /requests/
      requests_path
<<<<<<< HEAD

=======
      
>>>>>>> 6c76ca814b9a69ce5278dc9a8c7cbfa66918b08e
    when /docs\/(.\d+)\/edit/
      edit_doc_path(Docs.find($1))

    
    



    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
