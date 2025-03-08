
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"
alias blue="sudo bluetoothctl"
alias ls="eza --icons"
alias nvim="$HOME/i3-dots/scripts/run_nvim.sh"
alias venv="python3 -m venv"
alias activate="source env/bin/activate"

new_course(){
  mkdir $1
  cd $1
  mkdir assignments projects quzzies
  cd assignments
  mkdir problems solutions
  cd ../../
  echo "Happy suffering!"
}

createproject(){
  mkdir $1
  cd $1
  echo "created" $1 "...."
  venv env
  echo "virtual env is ready!"
  mkdir src/
  touch src/main.py
  echo "happy pythoning..!"
}
