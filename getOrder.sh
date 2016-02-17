
echo $1
#grep "\\\chapter{" $1 | cut -d '{' -f2 | cut -d '}' -f1 | xargs -n 1 -I ¤ echo -e \\n% Chapter: ¤
grep "\\input{" $1 | grep -vi 'preamble\|figures\|^\s*%' | cut -d '{' -f2 | cut -d '}' -f1 | xargs -n 1 -I % ./getOrder.sh %
#grep "\\lstinputlisting" $1 | grep -v 'Preamble\|Figures\|^\s*%' | cut -d '{' -f2 | cut -d '}' -f1 # | xargs -n 1 -I % ./getOrder.sh %
#grep "\\includegraphics" $1 | grep -v '^\s*%' |  cut -d '{' -f2 | cut -d '}' -f1
#grep "\\tikzfigure" $1 | grep -v '^\s*%' | cut -d '{' -f2 | cut -d '}' -f1 | xargs -I % echo Figures/TikZ/%


#tikzfigure


#TODO: handle lstinputlisting

# 2576  cat tmp.d | xargs -n 1 -I % grep "\\input" % | grep -v "^\s*%"
# 2577  chmod +x derp.sh
# 2578  ls -l
# 2579  chmod +x derp.sh
# 2580  ls -l
# 2581  ./derp.sh
# 2582  ./derp.sh master.tex
# 2583  ./derp.sh MainMatter/Requirements/Requirements.tex
# 2584  ./derp.sh MainMatter/Analysis/Index.tex
# 2585  ./derp.sh master.tex
# 2586  time ./derp.sh master.tex
# 2587  ./derp.sh master.tex > filesUsed
# 2588  find *.tex
# 2589  find *.tex -R
# 2590  find . -name "*.tex"
# 2591  find . -name "*.tex" | grep -v 'Preamble\|Figures'
# 2592  find . -name "*.tex" | grep -v 'Preamble\|Figures' | cut -c2-999
# 2593  find . -name "*.tex" | grep -v 'Preamble\|Figures' | cut -c3-999
# 2594  find . -name "*.tex" | grep -v 'Preamble\|Figures' | cut -c3-999 > filesInFolder
# 2595  diff $(sort filesInFolder)
# 2596  diff --help
# 2597  ls
# 2598  grep -F -x -v -f filesInFolder filesUsed
# 2599  sort filesInFolder
# 2600  grep -F -x -v -f filesUsed filesInFolder
# 2601  gst
# 2602  grep -F -x -v -f filesUsed filesInFolder > unusedfiles
# 2603  cat unusedfiles | xargs -n 1 -I % git mv % tmp/
# 2604  gst
# 2605  grhh
# 2606  gst
# 2607  rm tmp.d
# 2608  cat unusedfiles | xargs -n 1 -I % git mv % tmp/%
# 2609  dirname MainMatter/Design/Index.tex
# 2610  cat unusedfiles
# 2611  cat unusedfiles | xargs dirname | mkdir -p tmp/
# 2612  cat unusedfiles | xargs dirname
# 2613  cat unusedfiles | xargs -I % dirname % > dirsr
# 2614  cat dirsr | xargs mkdir
# 2615  cat dirsr | xargs -I % mkdir tmp/%
# 2616  cat dirsr | xargs -I % mkdir -p tmp/%
# 2617  cat unusedfiles | xargs -n 1 -I % git mv % tmp/%
# 2618  gst
# 2619  mv derp.sh getOrder.sh
# 2620  ./getOrder.sh master.tex
