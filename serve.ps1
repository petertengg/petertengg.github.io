$env:SASS_LOG_LEVEL = "error"
$env:RUBYOPT = "-W0"
bundle exec jekyll serve --config _config.yml,_config_local.yml
