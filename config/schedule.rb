set :job_template, "$(which zsh) -l -c ':job'"

every 10.minute do
  command ". ~/.zshrc && cd ~/blockchk && bundle exec ./chkBlockHeight.rb"
end
