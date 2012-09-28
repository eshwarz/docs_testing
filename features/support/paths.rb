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
>>>>>>> 344e6abf60da93957a6e0e9cb9cb258e947bd0d7
   
    when /docs\/(.\d+)\/edit/
      edit_doc_path(Docs.find($1))
      
    when /versions\/new/
      new_version_path
<<<<<<< HEAD
      
<<<<<<< HEAD
    when /timelines/
       timelines_path
=======
     
=======
>>>>>>> f75adea8d1ae76856a5a00d7234496199bd0c40a
=======


>>>>>>> b3673240f991d245eabaa05a0bec013495b0d858
    when /timelines/
       timelines_path

    when /versions\/(.\d+)\/edit/
      edit_versions_path(Versions.find($1))

    when  /versions/
      versions_path

    when /versions\/(.\d+)\/delete/
      delete_versions_path(Versions.find($1))

      
      
      
 

    when /docs\/(.\d+)\/edit/
      edit_doc_path(Docs.find($1))

    
      
>>>>>>> 344e6abf60da93957a6e0e9cb9cb258e947bd0d7


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
