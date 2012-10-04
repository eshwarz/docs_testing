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
     reports_path 
             
    when /docs\/(.\d+)\/edit/
      edit_doc_path(Docs.find($1))
      
    when /versions\/new/
      new_version_path
  
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

    when /docs\/(.\d+)\/edit/
      edit_doc_path(Docs.find($1))

    when /mappings\/(.\d+)\/edit/
      edit_mappings_path(Mappings.find($1))

    when  /mappings/
      mappings_path

    
    



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
