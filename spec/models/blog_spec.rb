require 'rails_helper'

RSpec.describe Blog, type: :model do
  it'is not valid without a title' do 
    blog_post = Blog.create content: 'anything at least 10 characters'
    expect(blog_post.errors[:title]).to_not be_empty
  end
  it'is not valid without content' do 
    blog_post = Blog.create title: 'anything at least 4 characters'
    expect(blog_post.errors[:content]).to_not be_empty
  end
  it'does not allow duplicate titles' do
    Blog.create title:'Sunday Jan 15', content:'Today I Was Hot'
    blog_post = Blog.create title:'Sunday Jan 15', content:'Today I Was Cold'
    expect(blog_post.errors[:title]).to_not be_empty 
  end
  it'is not valid if title less than 4 characters' do
    blog_post = Blog.create title:'Dog', content:'Today I Was Cold' 
    expect(blog_post.errors[:title]).to_not be_empty
  end
  it'is not valid if content less than 10 characters' do
    blog_post = Blog.create title:'Dogs', content:'Today' 
    expect(blog_post.errors[:content]).to_not be_empty
  end
end
