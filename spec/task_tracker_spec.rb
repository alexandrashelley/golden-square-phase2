require 'task_tracker'

RSpec.describe "task_tracker method" do
  it "fails" do
  expect { (tracking_tasks("")) }.to raise_error "Error. Please input a string"
  end

  it "Returns task if string starts with #TODO" do
  expect(tracking_tasks("#TODO wash the dishes")).to eq "#TODO wash the dishes"
  end

  it "Returns error if no tasks can be found" do
  expect(tracking_tasks("#todo wash the dishes")).to eq "Couldn't find any tasks"
  end

  it "Returns task substring that follows #TODO. Ignores everything that precedes #TODO" do
  expect(tracking_tasks("#tasks for today #TODO wash the dishes")).to eq "#TODO wash the dishes"
  end
end