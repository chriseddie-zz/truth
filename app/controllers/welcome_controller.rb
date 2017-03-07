class WelcomeController < ApplicationController
  def index
    @title = 'drums'
  end

  def drum
  end

  def build
  end

  def company
    @title = 'company'
    @content = Content.find_by_content_key('key_company')
    @page_content = @content.content_text
  end

  def terms
    @title = 'terms & conditions'
    @content = Content.find_by_content_key('key_terms')
    @page_content = @content.content_text
  end

  def contact
    @title = 'contact'
  end

  def content
  end

  def admin
    @is_admin = true
  end

  def shop
    @title = 'shop'
  end

  def support
    @title = 'support'
    @content = Content.find_by_content_key('key_support')
    @page_content = @content.content_text
  end
end
