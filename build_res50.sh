#!/bin/sh

cd  tests/bin/
g++ -std=c++11 -march=armv8-a+fp+simd+crc+crypto -mtune=cortex-a72.cortex-a53 -funsafe-math-optimizations -O3    -Wno-ignored-attributes -Werror -g  -Wall -g -I/home/alibaba/Tengine/tests/include -fPIC  -I/home/alibaba/Tengine/tests/include  -I/home/alibaba/Tengine/tests/../include  -I/home/alibaba/Tengine/tests/../core/include  -I/home/alibaba/Tengine/tests/../operator/include  -I/home/alibaba/Tengine/tests/../serializer/include -I/home/alibaba/Tengine/tests/../driver/include -I/home/alibaba/Tengine/tests/../executor/include -I/usr/include/opencv -Werror   -c bench_res50.cpp -o /home/alibaba/Tengine/build/tests/bin/bench_res50.o
cd ..
g++    /home/alibaba/Tengine/build/tests/bin/bench_res50.o  -o /home/alibaba/Tengine/build/tests/bin/bench_res50  -L ../build/ -ltengine -Wl,-allow-shlib-undefined -lprotobuf -ldl -lpthread -Wl,-rpath,./build/ -lopencv_shape -lopencv_stitching -lopencv_superres -lopencv_videostab -lopencv_aruco -lopencv_bgsegm -lopencv_bioinspired -lopencv_ccalib -lopencv_datasets -lopencv_dpm -lopencv_face -lopencv_freetype -lopencv_fuzzy -lopencv_hdf -lopencv_line_descriptor -lopencv_optflow -lopencv_video -lopencv_plot -lopencv_reg -lopencv_saliency -lopencv_stereo -lopencv_structured_light -lopencv_phase_unwrapping -lopencv_rgbd -lopencv_viz -lopencv_surface_matching -lopencv_text -lopencv_ximgproc -lopencv_calib3d -lopencv_features2d -lopencv_flann -lopencv_xobjdetect -lopencv_objdetect -lopencv_ml -lopencv_xphoto -lopencv_highgui -lopencv_videoio -lopencv_imgcodecs -lopencv_photo -lopencv_imgproc -lopencv_core

cd ..
./build/tests/bin/bench_res50  -p 4,5
