class HardJob < ApplicationJob
  depends_on :topic
  class_timeout 300 # 300s or 5m, current Lambda max is 15m

  # Comment out if you have created the hello-topic. To create:
  #
  #   aws sns create-topic --name hello-topic
  sns_event "hello-topic" # existing topic
  def fix
    puts "fix #{JSON.dump(event)}"
  end

  sns_event :generate_topic, topic_properties: {display_name: "My awesome topic"}
  def lift
    puts "lift #{JSON.dump(event)}"
  end

  sns_event "!Ref Engineering"
  def clean
    puts "clean #{JSON.dump(event)}"
  end
end
