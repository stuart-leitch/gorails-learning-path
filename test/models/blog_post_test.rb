require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "draft? returns true for draft blog post" do
    assert blog_posts(:draft_post).draft?
  end
  test "draft? returns false for published blog post" do
    refute blog_posts(:published_post).draft?
  end
  test "draft? returns false for scheduled blog post" do
    refute blog_posts(:scheduled_post).draft?
  end

  test "published? returns false for draft blog post" do
    refute blog_posts(:draft_post).published?
  end
  test "published? returns true for published blog post" do
    assert blog_posts(:published_post).published?
  end
  test "published? returns false for scheduled blog post" do
    refute blog_posts(:scheduled_post).published?
  end

  test "scheduled? returns false for draft blog post" do
    refute blog_posts(:draft_post).scheduled?
  end
  test "scheduled? returns false for published blog post" do
    refute blog_posts(:published_post).scheduled?
  end
  test "scheduled? returns true for scheduled blog post" do
    assert blog_posts(:scheduled_post).scheduled?
  end

  test "status returns draft for draft blog post" do
    assert_equal :draft, blog_posts(:draft_post).status
  end
  test "status returns published for published blog post" do
    assert_equal :published, blog_posts(:published_post).status
  end
  test "status returns scheduled for scheduled blog post" do
    assert_equal :scheduled, blog_posts(:scheduled_post).status
  end

end
