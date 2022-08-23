# frozen_string_literal: true

# name: literatecomputing_notice
# about: TODO
# version: 0.0.1
# authors: Discourse
# url: TODO
# required_version: 2.7.0

enabled_site_setting :literatecomputing_notice_enabled

after_initialize do
  SiteSetting.literatecomputing_notice_enabled = true
  DiscoursePluginRegistry.register_html_builder("server:before-script-load") do
    "<meta name=\"image_source\" content=\"#{I18n.t("js.literatecomputing_notice.warning_content")}\">"
  end
end
