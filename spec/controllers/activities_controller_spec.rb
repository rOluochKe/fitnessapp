require 'rails_helper'

RSpec.describe ActivitiesController, type: :controller do
  it { should use_before_action(:authenticate_user!) }
  it { should use_before_action(:set_activity_params) }
end