#ifndef OPTIONS_HEADER
#define OPTIONS_HEADER
	//Struct copied from ORCC - the native code seems to use this to read several input options from.
struct ORCC_options {
	/* Video specific options */
	char *input_file;
	char *input_directory;             // Directory for input files.
	/* Video specific options */
	char display_flags;              // Display flags
	int nbLoops;                         // (Deprecated) Number of times the input file is read
	int nbFrames;                       // Number of frames to display before closing application
	char *yuv_file;                      // Reference YUV file
	/* Runtime options */
	//schedstrategy_et sched_strategy;     // Strategy for the actor scheduling
	char *mapping_input_file;            // Predefined mapping configuration
	char *mapping_output_file;           //
	int nb_processors;
	int enable_dynamic_mapping;
	//mappingstrategy_et mapping_strategy; // Strategy for the actor mapping
	int nbProfiledFrames;                // Number of frames to display before remapping application
	int mapping_repetition;              // Repetition of the actor remapping
	 char *profiling_file; // profiling file
	 char *write_file; // write file
	/* Debugging options */
	int print_firings;
};
typedef struct ORCC_options options_t;
#endif