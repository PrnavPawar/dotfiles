# Colormap
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

# function cd() {
#     if [[ "$#" != 0 ]]; then
#         builtin cd "$@";
#         return
#     fi
#     while true; do
#         local lsd=$(echo ".." && ls -p -a | grep '/$' | sed 's;/$;;')
#         local dir="$(printf '%s\n' "${lsd[@]}" |
#             fzf --reverse --preview '
#                 __cd_nxt="$(echo {})";
#                 __cd_path="$(echo $(pwd)/${__cd_nxt} | sed "s;//;/;")";
#                 echo $__cd_path;
#                 echo;
#                 ls -p -a --color=always "${__cd_path}";
#         ')"
#         [[ ${#dir} != 0 ]] || return 0
#         builtin cd "$dir" &> /dev/null
#     done
# }