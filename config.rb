require 'govuk_tech_docs'

GovukTechDocs.configure(self)

fake_pages = ['page']

ready do

  issues = sitemap.resources.select{|resource| resource.options[:layout]=='issue'}

  # create example pages
  issues.each do |issue|
    dir = File.dirname issue.path
    if File.exist? "./source/#{dir}/_example_html.erb"
      proxy "/#{dir}/example.html", "/templates/example_code.html", ignore: true, locals: {
        dir: dir,
        title: issue.data.title,
        backlink: issue.path
      }
    end
  end

  # create wcag filter pages
  data.wcag.each do |criterion|
    proxy "/filter/by_wcag_#{criterion.sc.to_s}.html", "/templates/wcag_filter.html", ignore: true, locals: {
      sc: criterion.sc,
      name: criterion.name,
      level: criterion.level,
      anchor: criterion.anchor,
      title: "Issues by WCAG SC #{criterion.sc}"
    }
  end

  # create concern filter pages
  ['code', 'design', 'content'].each do |concern|
    proxy "/filter/by_concern_#{concern}.html", "/templates/concern_filter.html", ignore: true, locals: {
      concern: concern,
      title: "Issues by #{concern} concern"
    }
  end

  # create fake pages (all the same with different URLs)
  fake_pages.each do |page|
    proxy "/fake/#{page}.html", "/templates/fake.html", ignore: true, locals: {}
  end

end

helpers do

  def title_from_path path
    resource = sitemap.find_resource_by_path path
    resource.data.title unless resource.nil?
  end

  def detectability_percentage toolsdata
    count_all = toolsdata.count
    detectable = ['found', 'found_paid', 'warning']
    count_detectable = toolsdata.select { |k, v| detectable.include? v }.count
    count_detectable * 100 / count_all
  end

  def detectability_strength percent
    strength = 2
    strength = 3 if percent <= 33
    strength = 1 if percent > 66
    strength
  end

  def nav_link_to name, href
    link = link_to name, href
    if href == current_page.url || href == current_page.data.nav_highlight
      content_tag :li, link, {class: 'active'}
    else
      content_tag :li, link
    end
  end

end
