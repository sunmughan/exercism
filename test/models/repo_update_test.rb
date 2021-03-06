require 'test_helper'

class RepoUpdateTest < ActiveSupport::TestCase
  test "validates presence of slug" do
    repo_update = build_stubbed(:repo_update)

    assert repo_update.valid?

    repo_update.slug = ""

    refute repo_update.valid?
  end

  test "repo returns a matching track's repo" do
    track = create(:track,
                   slug: "go",
                   repo_url: "https://github.com/exercism/go")
    repo_update = build(:repo_update, slug: "go")

    assert_equal track.repo, repo_update.repo
  end

  test "repo returns the problem specs repo when slug matches" do
    repo_update = build(:repo_update, slug: "problem-specifications")

    assert_equal Git::ProblemSpecifications.head, repo_update.repo
  end

  test "repo returns the website copy repo when slug matches" do
    repo_update = build(:repo_update, slug: "website-copy")

    assert_equal Git::WebsiteContent.head, repo_update.repo
  end

  test "validates repo is valid" do
    track = create(:track,
                   slug: "go",
                   repo_url: "https://github.com/exercism/go")
    repo_update = build(:repo_update, slug: "go")

    assert repo_update.valid?

    repo_update.slug = "unknown"

    refute repo_update.valid?
  end
end
