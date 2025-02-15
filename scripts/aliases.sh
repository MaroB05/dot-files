

alias ls="eza --icons"

new_course(){
mkdir $1
cd $1
mkdir assignments projects quzzies
cd assignments
mkdir problems solutions
cd ../../
echo "Happy suffering!"
}
