$env:SASS_LOG_LEVEL = "error"
$env:RUBYOPT = "-W0"
$env:JEKYLL_ENV = "production"
bundle exec jekyll serve --config _config.yml,_config_local.yml
