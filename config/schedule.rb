set :job_template, "$(which zsh) -l -c ':job'"
set :output , "/Users/hiro/blockchk/config/cron.log"

every 1.minute do
  command ". ~/.zshrc && cd ~/blockchk && bundle exec ./chkBlockHeight.rb"
end
