require 'test_helper'

class CreateTeamMembershipTest < ActiveSupport::TestCase
  test "creates a team membership" do
    user = create(:user)
    team = create(:team)

    CreateTeamMembership.(user, team)

    membership = TeamMembership.last
    refute_nil membership, "Expected team membership to be created"
    assert_equal user, membership.user
    assert_equal team, membership.team
  end

  test "deletes redundant team invites" do
    user = create(:user)
    team = create(:team)
    create(:team_invitation, email: user.email, team: team)

    CreateTeamMembership.(user, team)

    assert_equal 0, TeamInvitation.count
  end
end
