require File.expand_path('../../lib/serialy/sassy', __FILE__)
$fixture_path = File.expand_path('../fixtures', __FILE__) 
describe 'Serily Sassy' do
  describe :json do
    let(:json_sass) do
      File.read(File.join($fixture_path, 'json_test.scss'))
    end

    def compile(sass)
      Sass::Engine.new(sass, {:syntax => :scss, :output_style => :compressed}).render
    end

    it "should load json data into a sass map" do
      css = compile(json_sass)
      expect(".foo {\n  color: green; }\n\n.foo {\n  color: red; }\n\n.foo {\n  color: orange; }\n").to eq(css)
    end
  end
  describe :yaml do
    let(:yaml_sass) do
      File.read(File.join($fixture_path, 'yaml_test.scss'))
    end

    def compile(sass)
      Sass::Engine.new(sass, {:syntax => :scss, :output_style => :compressed}).render
    end

    it "should load json data into a sass map" do
      css = compile(yaml_sass)
      expect(".foo {\n  color: green; }\n\n.foo {\n  color: red; }\n\n.foo {\n  color: orange; }\n").to eq(css)
    end
  end
end
