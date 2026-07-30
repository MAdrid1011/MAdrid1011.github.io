#!/usr/bin/env ruby

require "fileutils"
require "uri"
require "yaml"

ROOT = File.expand_path("..", __dir__)
OUTPUT_DIR = File.join(ROOT, "assets", "img", "repositories")
CONFIG = YAML.load_file(File.join(ROOT, "_config.yml"))
REPOSITORIES = YAML.load_file(File.join(ROOT, "_data", "repositories.yml"))

STATS_URL = CONFIG.dig("external_services", "github_readme_stats_url").delete_suffix("/")
TROPHY_URL = CONFIG.dig("external_services", "github_profile_trophy_url").delete_suffix("/")
LIGHT_THEME = CONFIG.fetch("repo_theme_light")
DARK_THEME = CONFIG.fetch("repo_theme_dark")
TROPHY_LIGHT_THEME = CONFIG.dig("repo_trophies", "theme_light")
TROPHY_DARK_THEME = CONFIG.dig("repo_trophies", "theme_dark")
DESCRIPTION_LINES = REPOSITORIES.fetch("repo_description_lines_max", 2)

FileUtils.mkdir_p(OUTPUT_DIR)

def card_key(value)
  value.gsub(/[^A-Za-z0-9._-]+/, "-")
end

def fetch_svg(url, destination)
  temporary = "#{destination}.tmp"
  downloaded = system(
    "curl",
    "--fail",
    "--silent",
    "--show-error",
    "--location",
    "--retry",
    "3",
    "--connect-timeout",
    "15",
    "--max-time",
    "60",
    "--user-agent",
    "MAdrid1011.github.io repository-card updater",
    "--output",
    temporary,
    url,
  )
  raise "Failed to fetch #{url}" unless downloaded

  body = File.binread(temporary)
  raise "Expected SVG from #{url}" unless body.include?("<svg")

  normalized = body.each_line.map(&:rstrip).join("\n").rstrip
  File.binwrite(temporary, "#{normalized}\n")
  File.rename(temporary, destination)
ensure
  FileUtils.rm_f(temporary) if defined?(temporary) && File.exist?(temporary)
end

def build_url(base, path, **parameters)
  "#{base}#{path}?#{URI.encode_www_form(parameters)}"
end

expected_files = []
users = REPOSITORIES.fetch("github_users")

users.each do |username|
  { "light" => LIGHT_THEME, "dark" => DARK_THEME }.each do |mode, theme|
    filename = "profile-#{card_key(username)}-#{mode}.svg"
    expected_files << filename
    url = build_url(STATS_URL, "/api/", username: username, theme: theme, locale: "en", show_icons: true)
    fetch_svg(url, File.join(OUTPUT_DIR, filename))
  end

  { "light" => TROPHY_LIGHT_THEME, "dark" => TROPHY_DARK_THEME }.each do |mode, theme|
    [3, 4, 6].each do |columns|
      filename = "trophies-#{card_key(username)}-#{columns}-#{mode}.svg"
      expected_files << filename
      url = build_url(
        TROPHY_URL,
        "/",
        username: username,
        theme: theme,
        locale: "en",
        "margin-w": 15,
        "margin-h": 15,
        "no-bg": true,
        rank: "-C",
        column: columns,
      )
      fetch_svg(url, File.join(OUTPUT_DIR, filename))
    end
  end
end

REPOSITORIES.fetch("github_repos").each do |repository|
  owner, name = repository.split("/", 2)
  show_owner = !users.include?(owner)

  { "light" => LIGHT_THEME, "dark" => DARK_THEME }.each do |mode, theme|
    filename = "repo-#{card_key(repository)}-#{mode}.svg"
    expected_files << filename
    url = build_url(
      STATS_URL,
      "/api/pin/",
      username: owner,
      repo: name,
      theme: theme,
      locale: "en",
      show_owner: show_owner,
      description_lines_count: DESCRIPTION_LINES,
    )
    fetch_svg(url, File.join(OUTPUT_DIR, filename))
  end
end

Dir.glob(File.join(OUTPUT_DIR, "*.svg")).each do |existing|
  FileUtils.rm_f(existing) unless expected_files.include?(File.basename(existing))
end

puts "Updated #{expected_files.length} local repository card assets."
