#part1
echo '$ echo abcdef > file1'
echo 'abcdef' > file1
echo '$ls file2'
ls file2
echo '$java Copy1 file1 file2'
java Copy6 file1 file2
echo '$cat file2'
cat file2
echo '$java Copy1'
java Copy6
echo '$java Copy1 file2'
java Copy6 file2

rm file1
rm file2
echo '$file1 file2を削除しました'
#copy2
echo '#################コピー2を開始します###################'
echo '$ for i in 1 2 3; do echo "file$i" > "file$i.txt" ; done'
for i in 1 2 3; do echo "file$i" > "file$i.txt" ; done
echo '$ ls file?.txt'
ls file?.txt
echo '$ mkdir dir'
mkdir dir
echo '$ java Copy6 file1.txt file2.txt dir'
java Copy6 file1.txt file2.txt dir
echo '$ ls dir'
ls dir
echo '$ ls hoge'
ls hoge
echo '$ java Copy6 file3.txt file4.txt # -> file3.txt の内容を file4.txt にコピーしている．'
java Copy6 file3.txt file4.txt
echo '$ cat file4.txt'
cat file4.txt
echo '$ java Copy6 file2.txt file3.txt file5.txt'
java Copy6 file2.txt file3.txt file5.txt
echo '#################コピー2ここまで###################'
rm -rf *.txt
# rm -rf dir
echo '*.txtを削除しました'
#copy3
echo '#################コピー3を開始します###################'
echo '###コピー6のヘルプ表示'
java Copy6 -h
echo '###コピー6verboseオプション'
echo '$ for i in 1 2 3 ; do echo "file$i" > "file$i.txt" ; done'
for i in 1 2 3 ; do echo "file$i" > "file$i.txt" ; done
echo '$ java Copy6 -v file1.txt hoge.txt'
java Copy6 -v file1.txt hoge.txt
echo '$ mkdir dir2'
mkdir dir2
echo '$ java Copy6 -v file1.txt file2.txt file3.txt dir2'
java Copy6 -v file1.txt file2.txt file3.txt dir2
echo '#################コピー3を終了します###################'
rm -rf *.txt
echo '*.txtを削除しました'
# rm -rf dir2
echo '#################コピー4を開始します###################'
echo '$ for i in 1 2 3 ; do echo "file$i" > "file$i.txt" ; done'
for i in 1 2 3 ; do echo "file$i" > "file$i.txt" ; done
echo '$ java Copy6 file1.txt file2.txt'
java Copy6 file1.txt file2.txt
echo '$ cat file2.txt'
cat file2.txt
echo '$ java Copy6 -i file1.txt file3.txt'
java Copy6 -i file1.txt file3.txt
echo '$ cat file3.txt'
cat file3.txt
echo '$ java Copy6 -i -v file1.txt file3.txt'
java Copy6 -i -v file1.txt file3.txt
echo '$ cat file3.txt'
cat file3.txt
echo '#################コピー4を終了します###################'
rm -rf *.txt
# rm -rf dir
echo '*.txtを削除しました'
echo '#################コピー5を開始します###################'
echo '$ for i in 1 2 3 ; do echo "file$i" > "file$i.txt" ; done'
for i in 1 2 3 ; do echo "file$i" > "file$i.txt" ; done
echo '$ touch file1.txt                         # file1.txt の最終更新日時を更新した．'
touch file1.txt                         # file1.txt の最終更新日時を更新した．
echo '$ java Copy6 -u -v file1.txt file3.txt    # file3.txt の方が古いため，コピーする．'
java Copy6 -u -v file1.txt file3.txt    # file3.txt の方が古いため，コピーする．
echo '$ touch file2.txt'
touch file2.txt
echo '$ java Copy6 -u -v file2.txt file1.txt    # file1.txt の方が新しいため，コピーしない．'
java Copy6 -u -v file2.txt file1.txt    # file1.txt の方が新しいため，コピーしない．
echo '$ cat file2.txt'
cat file2.txt
echo '$ java Copy6 -u -v -i file2.txt file1.txt # file1.txt の方が古いため，コピーする．'
java Copy6 -u -v -i file2.txt file1.txt # file1.txt の方が古いため，コピーする．
echo '$ java Copy6 -u -v -i file2.txt file1.txt # file1.txt の方が古いため，コピーする．'
java Copy6 -u -v -i file2.txt file1.txt # file1.txt の方が古いため，コピーする．
echo '$ cat file1.txt'
cat file1.txt
echo '#################コピー5を終了します###################'
rm -rf *.txt
# rm -rf dir
echo '*.txtを削除しました'
echo '#################コピー6を開始します###################'
echo '$ mkdir dir1'
mkdir dir1
echo '$ for i in 1 2 3 ; do echo "file $i in dir1" > dir1/file$i.txt ; done'
for i in 1 2 3 ; do echo "file $i in dir1" > dir1/file$i.txt ; done
echo '$ ls dir1'
ls dir1
echo '$ ls dir2'
ls dir2
echo '$ java Copy6 dir1 dir2'
java Copy6 dir1 dir2
echo '$ java Copy6 -r -v dir1 dir2'
java Copy6 -r -v dir1 dir2
echo '#################コピー6を終了します###################'
rm -rf *.txt
# rm -rf dir
echo '*.txtを削除しました'
