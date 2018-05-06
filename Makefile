CXX=clang++
DEPENDENCIES=-I3rd_party/sparsepp -I3rd_party/flat_hash_map -I3rd_party/hopscotch-map -I3rd_party/robin-map -I3rd_party/sparse-map -I3rd_party/ordered-map -I3rd_party/emilib
CXX_FLAGS=-O3 -march=native -std=c++14 -DNDEBUG $(DEPENDENCIES)

all: build/std_unordered_map build/boost_unordered_map build/google_sparse_hash_map build/google_dense_hash_map build/google_dense_hash_map_mlf_0_9 build/qt_qhash build/spp_sparse_hash_map build/emilib_hash_map build/ska_flat_hash_map build/ska_flat_hash_map_power_of_two build/tsl_hopscotch_map build/tsl_hopscotch_map_mlf_0_5 build/tsl_hopscotch_map_store_hash build/tsl_robin_map build/tsl_robin_map_mlf_0_9 build/tsl_robin_map_store_hash build/tsl_robin_pg_map build/tsl_sparse_map build/tsl_ordered_map

build/std_unordered_map: src/std_unordered_map.cc src/template.c
	$(CXX) $(CXX_FLAGS) -lm -o build/std_unordered_map src/std_unordered_map.cc

build/boost_unordered_map: src/boost_unordered_map.cc src/template.c
	$(CXX) $(CXX_FLAGS) -lm -o build/boost_unordered_map src/boost_unordered_map.cc

build/google_sparse_hash_map: src/google_sparse_hash_map.cc src/template.c
	$(CXX) $(CXX_FLAGS) -lm -o build/google_sparse_hash_map src/google_sparse_hash_map.cc

build/google_dense_hash_map: src/google_dense_hash_map.cc src/template.c
	$(CXX) $(CXX_FLAGS) -lm -o build/google_dense_hash_map src/google_dense_hash_map.cc

build/google_dense_hash_map_mlf_0_9: src/google_dense_hash_map_mlf_0_9.cc src/template.c
	$(CXX) $(CXX_FLAGS) -lm -o build/google_dense_hash_map_mlf_0_9 src/google_dense_hash_map_mlf_0_9.cc

build/qt_qhash: src/qt_qhash.cc src/template.c
	$(CXX) $(CXX_FLAGS) -lm `pkg-config --cflags --libs QtCore` -o build/qt_qhash src/qt_qhash.cc

build/spp_sparse_hash_map: src/spp_sparse_hash_map.cc src/template.c
	$(CXX) $(CXX_FLAGS) -Isparsepp -o build/spp_sparse_hash_map src/spp_sparse_hash_map.cc

build/emilib_hash_map: src/emilib_hash_map.cc src/template.c
	$(CXX) $(CXX_FLAGS) -Iemilib -o build/emilib_hash_map src/emilib_hash_map.cc

build/ska_flat_hash_map: src/ska_flat_hash_map.cc src/template.c
	$(CXX) $(CXX_FLAGS) -Iflat_hash_map -o build/ska_flat_hash_map src/ska_flat_hash_map.cc

build/ska_flat_hash_map_power_of_two: src/ska_flat_hash_map_power_of_two.cc src/template.c
	$(CXX) $(CXX_FLAGS) -Iflat_hash_map -o build/ska_flat_hash_map_power_of_two src/ska_flat_hash_map_power_of_two.cc



build/tsl_hopscotch_map: src/tsl_hopscotch_map.cc src/template.c
	$(CXX) $(CXX_FLAGS) -Ihopscotch-map -o build/tsl_hopscotch_map src/tsl_hopscotch_map.cc

build/tsl_hopscotch_map_mlf_0_5: src/tsl_hopscotch_map_mlf_0_5.cc src/template.c
	$(CXX) $(CXX_FLAGS) -Ihopscotch-map -o build/tsl_hopscotch_map_mlf_0_5 src/tsl_hopscotch_map_mlf_0_5.cc

build/tsl_hopscotch_map_store_hash: src/tsl_hopscotch_map_store_hash.cc src/template.c
	$(CXX) $(CXX_FLAGS) -Ihopscotch-map -o build/tsl_hopscotch_map_store_hash src/tsl_hopscotch_map_store_hash.cc



build/tsl_robin_map: src/tsl_robin_map.cc src/template.c
	$(CXX) $(CXX_FLAGS) -Irobin-map -o build/tsl_robin_map src/tsl_robin_map.cc

build/tsl_robin_map_mlf_0_9: src/tsl_robin_map_mlf_0_9.cc src/template.c
	$(CXX) $(CXX_FLAGS) -Irobin-map -o build/tsl_robin_map_mlf_0_9 src/tsl_robin_map_mlf_0_9.cc

build/tsl_robin_map_store_hash: src/tsl_robin_map_store_hash.cc src/template.c
	$(CXX) $(CXX_FLAGS) -Irobin-map -o build/tsl_robin_map_store_hash src/tsl_robin_map_store_hash.cc

build/tsl_robin_pg_map: src/tsl_robin_pg_map.cc src/template.c
	$(CXX) $(CXX_FLAGS) -Irobin-map -o build/tsl_robin_pg_map src/tsl_robin_pg_map.cc



build/tsl_sparse_map: src/tsl_sparse_map.cc src/template.c
	$(CXX) $(CXX_FLAGS) -Isparse-map -o build/tsl_sparse_map src/tsl_sparse_map.cc

build/tsl_ordered_map: src/tsl_ordered_map.cc src/template.c
	$(CXX) $(CXX_FLAGS) -Iordered-map -o build/tsl_ordered_map src/tsl_ordered_map.cc

# Array map need C++17 as it needs std::string_view for the hash part. Not part of the 'all' build
build/tsl_array_map: src/tsl_array_map.cc src/template.c
	$(CXX) $(CXX_FLAGS) -std=c++17 -Iarray-hash -o build/tsl_array_map src/tsl_array_map.cc

build/tsl_array_map_mlf_1_0: src/tsl_array_map_mlf_1_0.cc src/template.c
	$(CXX) $(CXX_FLAGS) -std=c++17 -Iarray-hash -o build/tsl_array_map_mlf_1_0 src/tsl_array_map_mlf_1_0.cc


