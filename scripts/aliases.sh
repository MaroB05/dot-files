
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"
alias blue="sudo bluetoothctl"
alias ls="eza --icons"
alias nvim="$HOME/i3-dots/scripts/run_nvim.sh"


new_course(){
  mkdir $1
  cd $1
  mkdir assignments projects quzzies
  cd assignments
  mkdir problems solutions
  cd ../../
  echo "Happy suffering!"
}
