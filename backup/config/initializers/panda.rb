panda_config = YAML::load_file(File.join(File.dirname(__FILE__),"..", "panda.yml"))[Rails.env]
Panda.configure panda_config