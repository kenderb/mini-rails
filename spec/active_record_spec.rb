# frozen_string_literal: true

require "spec_helper"
require "active_record"
require "muffin_blog/app/models/application_record"
require "muffin_blog/app/models/post"

RSpec.describe Post do
  context "initialize" do
    it "creates a new post" do
      post = Post.new(id: 1, title: "My first post")
      expect(post.id).to eq 1
      expect(post.title).to eq "My first post"
    end
  end

  context "find" do
    it "finds a post" do
      post = Post.find(1)

      expect(post).to be_an_instance_of(Post)
      expect(post.id).to eq 1
      expect(post.title).to eq "My first post"
    end
  end
end
