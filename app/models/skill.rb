class Skill < ApplicationRecord

    # stackoverflow
    def self.get_skills_so
        # todo - this is bad, move it to a model
        all_skills_so = {}

        url = 'https://stackoverflow.com/jobs/feed'
        open(url) do |rss|

        feed = RSS::Parser.parse(rss)
            feed.items.each do |item|
                remove_start_tag = "#{item.category}".gsub("<category>", "")
                remove_end_tag = remove_start_tag.gsub("</category>", "")
                p remove_end_tag
                if all_skills_so.key?("#{remove_end_tag}")
                    all_skills_so["#{remove_end_tag}"] = all_skills_so["#{remove_end_tag}"] += 1
                else
                    all_skills_so["#{remove_end_tag}"] = 1
                end
            end
        end

        new_sorted = all_skills_so.sort_by {|k,v| v}.reverse

        new_sorted.each do |key, value|
            puts "#{key}: #{value}"
        end

        new_sorted
    end
end
