require 'spec_helper'

describe "Fe.fact" do
  include FirstPostWCommentsAndAuthors

  it "provides a fact_hash on an @extractor instance" do
    expect(@extractor.fact_hash).to be_a_kind_of(Hash)
  end
  it "adds a fact to the fe_manifest.yml" do
    an_integer_fact = Post.first.id
    expect(Fe.create_fact(:first_post_w_comments_and_authors,:the_id,an_integer_fact)).to eql(an_integer_fact)
    expect(Fe.fact(:first_post_w_comments_and_authors,:the_id)).to eql(an_integer_fact)
  end
end
