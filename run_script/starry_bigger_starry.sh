# To run this script you'll need to download the ultra-high res
# scan of Starry Night from the Google Art Project, using this command:
# wget -c https://upload.wikimedia.org/wikipedia/commons/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg -O starry_night_gigapixel.jpg
# Or you can manually download the image from here: https://commons.wikimedia.org/wiki/File:Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg

STYLE_IMAGE=starry.jpg
CONTENT_IMAGE=examples/inputs/jalanan_its.jpg

STYLE_WEIGHT=5e2
STYLE_SCALE=1.0

STYLE_WEIGHT2=2500 # Style weight for image size 2048 and above

PYTHON=python3 # Change to Python if using Python 2
SCRIPT=neural_style.py
GPU=0

NEURAL_STYLE=$PYTHON
NEURAL_STYLE+=" "
NEURAL_STYLE+=$SCRIPT

# Uncomment if using pip package
#NEURAL_STYLE=neural-style


$NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -style_scale $STYLE_SCALE \
  -print_iter 1 \
  -style_weight $STYLE_WEIGHT \
  -image_size 256 \
  -output_image starry_night/out1.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune

$NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out1.png \
  -style_scale $STYLE_SCALE \
  -print_iter 1 \
  -style_weight $STYLE_WEIGHT \
  -image_size 512 \
  -num_iterations 500 \
  -output_image starry_night/out2.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune

$NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out2.png \
  -style_scale $STYLE_SCALE \
  -print_iter 1 \
  -style_weight $STYLE_WEIGHT \
  -image_size 1024 \
  -num_iterations 200 \
  -output_image starry_night/out3.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune

$NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out3.png \
  -style_scale $STYLE_SCALE \
  -print_iter 1 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 200 \
  -output_image starry_night/out4.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune

$NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out4.png \
  -style_scale $STYLE_SCALE \
  -print_iter 10 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 500 \
  -output_image starry_night/out5.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune

$NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out5.png \
  -style_scale $STYLE_SCALE \
  -print_iter 10 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 500 \
  -output_image starry_night/out6.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune

  $NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out6.png \
  -style_scale $STYLE_SCALE \
  -print_iter 10 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 500 \
  -output_image starry_night/out7.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune

  $NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out7.png \
  -style_scale $STYLE_SCALE \
  -print_iter 10 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 500 \
  -output_image starry_night/out8.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune

  $NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out8.png \
  -style_scale $STYLE_SCALE \
  -print_iter 10 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 500 \
  -output_image starry_night/out9.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune

  $NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out9.png \
  -style_scale $STYLE_SCALE \
  -print_iter 10 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 500 \
  -output_image starry_night/out10.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune

  $NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out10.png \
  -style_scale $STYLE_SCALE \
  -print_iter 10 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 500 \
  -output_image starry_night/ou11.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune

  $NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/ou11.png \
  -style_scale $STYLE_SCALE \
  -print_iter 10 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 500 \
  -output_image starry_night/out12.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune

  $NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out12.png \
  -style_scale $STYLE_SCALE \
  -print_iter 10 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 500 \
  -output_image starry_night/out13.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune


  $NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out13.png \
  -style_scale $STYLE_SCALE \
  -print_iter 10 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 500 \
  -output_image starry_night/out14.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune


  $NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out14.png \
  -style_scale $STYLE_SCALE \
  -print_iter 10 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 500 \
  -output_image starry_night/out15.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune


  $NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out15.png \
  -style_scale $STYLE_SCALE \
  -print_iter 10 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 500 \
  -output_image starry_night/out16.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune


  $NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out16.png \
  -style_scale $STYLE_SCALE \
  -print_iter 10 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 500 \
  -output_image starry_night/out17.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune


  $NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out17.png \
  -style_scale $STYLE_SCALE \
  -print_iter 10 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 500 \
  -output_image starry_night/out18.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune


  $NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out18.png \
  -style_scale $STYLE_SCALE \
  -print_iter 10 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 500 \
  -output_image starry_night/out19.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune


  $NEURAL_STYLE \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image starry_night/out19.png \
  -style_scale $STYLE_SCALE \
  -print_iter 10 \
  -style_weight $STYLE_WEIGHT2 \
  -image_size 1024 \
  -num_iterations 500 \
  -output_image starry_night/out20.png \
  -tv_weight 0 \
  -gpu $GPU \
  -backend cudnn -cudnn_autotune


