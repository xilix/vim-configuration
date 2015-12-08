vim-configuration
========
Just another vim configuration to share

Focus on Javascript developing

It includes:
* [https://github.com/bling/vim-airline] : A nice status bar
* [https://github.com/airblade/vim-gitgutter] : When editing a file inside a gir repo it provides a diff between the HEAD file in edition and the actual version of this file
* [https://github.com/mbbill/undotree] : Ultimate undo-redo tool of awesomess.  Never lose what you are editting. Undo and redo like if you where in a git repo. 
* [https://github.com/scrooloose/nerdtree] : Folder tree
* [https://github.com/szw/vim-ctrlspace] : Fuzzy file searching
* [https://github.com/ternjs/tern_for_vim] : JavaScript eidting support
* [https://github.com/walm/jshint.vim] : Jshint linter
* [https://github.com/scrooloose/syntastic] : Syntax checker
* some salt and some water


Installation
-----------

It requires node.js and npm to be installed because tern.js

```bash
git clone https://github.com/xilix/vim-configuration.git
git submodule init
git submodule update
cd ~/.vim/bundle/tern_for_vim/
npm install
```
Replace your .vimrc and your .vim. Be careful as this will overwrite your previous configuration in your .vimrc and .vim folder.
