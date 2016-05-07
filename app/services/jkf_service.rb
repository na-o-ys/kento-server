class JKFService
  def self.parse(text)
    parser_js = open(Rails.root.join('kifu-parser', 'build.js')).read
    parser = ExecJS.compile("var window = {};" + parser_js)
    parser.call("window.parse", text).to_json
  end
end
