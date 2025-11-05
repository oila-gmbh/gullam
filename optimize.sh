rm -rf ./optimized/*
params=$1
for path in ./images/*.*
do
  file=$(basename $path)
  # params = --resize 400
  magick $path $params ./optimized/${file%.*}.webp
done
