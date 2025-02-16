

alias ls="eza --icons"
alias nvim="alacritty --config-file=$HOME/.config/alacritty/nvim.yml -e nvim &"

new_course(){
mkdir $1
cd $1
mkdir assignments projects quzzies
cd assignments
mkdir problems solutions
cd ../../
echo "Happy suffering!"
}
