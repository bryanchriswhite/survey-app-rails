xml.instruct!
xml.surveyapp do  
  xml.surveys do 
    @surveys.each do |survey|
      xml.owner :id => survey.owner_id
      xml.questionaire :id => survey.owner_id
      xml.responses do
        survey.responses.each do |response|
          xml.response do
            xml.value response.value
            xml.question :id => response.question_id
          end
        end
      end
    end
  end
end  
