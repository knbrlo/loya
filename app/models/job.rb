class Job < ApplicationRecord

    # stackoverflow
    def self.get_jobs_so
        # todo - work on getting skill pairs from the xml payload.
        all_skills_so = {}

        

        url = 'https://stackoverflow.com/jobs/feed'
        open(url) do |rss|

        feed = RSS::Parser.parse(rss)

            feed.items.each do |item|

                array_skill_pair = []

                # todo - add company name to schema

                # title
                post_title = "#{item.title}"

                # date_posted
                # Mon, 08 Feb 2021 15:44:59 -0000
                date_posted = "#{item.pubDate}"

                # location
                # todo - will have to do this later, don't see it in the xml

                # remote friendly
                # if title contains "allows remote" yes
                remote_friendly = false
                if post_title.include?("allows remote")
                    remote_friendly = true
                end

                
                # todo - add skill pairs to array and store in db
                # remove_start_tag = "#{item.category}".gsub("<category>", "")
                # remove_end_tag = remove_start_tag.gsub("</category>", "")
                # array_skill_pair.push("#{remove_end_tag}")
                
            end

            

        end

       

        
    end

end
