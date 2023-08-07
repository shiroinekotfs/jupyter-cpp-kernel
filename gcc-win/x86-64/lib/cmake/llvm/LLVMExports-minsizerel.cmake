#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "LLVMDemangle" for configuration "MinSizeRel"
set_property(TARGET LLVMDemangle APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMDemangle PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMDemangle.dll.a"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMDemangle.dll"
  )

list(APPEND _cmake_import_check_targets LLVMDemangle )
list(APPEND _cmake_import_check_files_for_LLVMDemangle "${_IMPORT_PREFIX}/lib/libLLVMDemangle.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMDemangle.dll" )

# Import target "LLVMSupport" for configuration "MinSizeRel"
set_property(TARGET LLVMSupport APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMSupport PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMSupport.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMDemangle"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMSupport.dll"
  )

list(APPEND _cmake_import_check_targets LLVMSupport )
list(APPEND _cmake_import_check_files_for_LLVMSupport "${_IMPORT_PREFIX}/lib/libLLVMSupport.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMSupport.dll" )

# Import target "LLVMTableGen" for configuration "MinSizeRel"
set_property(TARGET LLVMTableGen APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMTableGen PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMTableGen.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMTableGen.dll"
  )

list(APPEND _cmake_import_check_targets LLVMTableGen )
list(APPEND _cmake_import_check_files_for_LLVMTableGen "${_IMPORT_PREFIX}/lib/libLLVMTableGen.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMTableGen.dll" )

# Import target "LLVMTableGenGlobalISel" for configuration "MinSizeRel"
set_property(TARGET LLVMTableGenGlobalISel APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMTableGenGlobalISel PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMTableGenGlobalISel.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport;LLVMTableGen"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMTableGenGlobalISel.dll"
  )

list(APPEND _cmake_import_check_targets LLVMTableGenGlobalISel )
list(APPEND _cmake_import_check_files_for_LLVMTableGenGlobalISel "${_IMPORT_PREFIX}/lib/libLLVMTableGenGlobalISel.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMTableGenGlobalISel.dll" )

# Import target "llvm-tblgen" for configuration "MinSizeRel"
set_property(TARGET llvm-tblgen APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-tblgen PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-tblgen.exe"
  )

list(APPEND _cmake_import_check_targets llvm-tblgen )
list(APPEND _cmake_import_check_files_for_llvm-tblgen "${_IMPORT_PREFIX}/bin/llvm-tblgen.exe" )

# Import target "LLVMCore" for configuration "MinSizeRel"
set_property(TARGET LLVMCore APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMCore PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMCore.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMBinaryFormat;LLVMRemarks;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMCore.dll"
  )

list(APPEND _cmake_import_check_targets LLVMCore )
list(APPEND _cmake_import_check_files_for_LLVMCore "${_IMPORT_PREFIX}/lib/libLLVMCore.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMCore.dll" )

# Import target "LLVMFuzzerCLI" for configuration "MinSizeRel"
set_property(TARGET LLVMFuzzerCLI APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMFuzzerCLI PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMFuzzerCLI.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMFuzzerCLI.dll"
  )

list(APPEND _cmake_import_check_targets LLVMFuzzerCLI )
list(APPEND _cmake_import_check_files_for_LLVMFuzzerCLI "${_IMPORT_PREFIX}/lib/libLLVMFuzzerCLI.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMFuzzerCLI.dll" )

# Import target "LLVMFuzzMutate" for configuration "MinSizeRel"
set_property(TARGET LLVMFuzzMutate APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMFuzzMutate PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMFuzzMutate.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMBitReader;LLVMBitWriter;LLVMCore;LLVMScalarOpts;LLVMSupport;LLVMTarget;LLVMTargetParser;LLVMTransformUtils"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMFuzzMutate.dll"
  )

list(APPEND _cmake_import_check_targets LLVMFuzzMutate )
list(APPEND _cmake_import_check_files_for_LLVMFuzzMutate "${_IMPORT_PREFIX}/lib/libLLVMFuzzMutate.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMFuzzMutate.dll" )

# Import target "LLVMFileCheck" for configuration "MinSizeRel"
set_property(TARGET LLVMFileCheck APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMFileCheck PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMFileCheck.dll.a"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMFileCheck.dll"
  )

list(APPEND _cmake_import_check_targets LLVMFileCheck )
list(APPEND _cmake_import_check_files_for_LLVMFileCheck "${_IMPORT_PREFIX}/lib/libLLVMFileCheck.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMFileCheck.dll" )

# Import target "LLVMInterfaceStub" for configuration "MinSizeRel"
set_property(TARGET LLVMInterfaceStub APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMInterfaceStub PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMInterfaceStub.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMBinaryFormat;LLVMMC;LLVMObject;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMInterfaceStub.dll"
  )

list(APPEND _cmake_import_check_targets LLVMInterfaceStub )
list(APPEND _cmake_import_check_files_for_LLVMInterfaceStub "${_IMPORT_PREFIX}/lib/libLLVMInterfaceStub.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMInterfaceStub.dll" )

# Import target "LLVMIRPrinter" for configuration "MinSizeRel"
set_property(TARGET LLVMIRPrinter APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMIRPrinter PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMIRPrinter.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMCore;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMIRPrinter.dll"
  )

list(APPEND _cmake_import_check_targets LLVMIRPrinter )
list(APPEND _cmake_import_check_files_for_LLVMIRPrinter "${_IMPORT_PREFIX}/lib/libLLVMIRPrinter.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMIRPrinter.dll" )

# Import target "LLVMIRReader" for configuration "MinSizeRel"
set_property(TARGET LLVMIRReader APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMIRReader PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMIRReader.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAsmParser;LLVMBitReader;LLVMCore;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMIRReader.dll"
  )

list(APPEND _cmake_import_check_targets LLVMIRReader )
list(APPEND _cmake_import_check_files_for_LLVMIRReader "${_IMPORT_PREFIX}/lib/libLLVMIRReader.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMIRReader.dll" )

# Import target "LLVMCodeGen" for configuration "MinSizeRel"
set_property(TARGET LLVMCodeGen APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMCodeGen PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMCodeGen.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMBitReader;LLVMBitWriter;LLVMCore;LLVMMC;LLVMObjCARCOpts;LLVMProfileData;LLVMScalarOpts;LLVMSupport;LLVMTarget;LLVMTargetParser;LLVMTransformUtils"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMCodeGen.dll"
  )

list(APPEND _cmake_import_check_targets LLVMCodeGen )
list(APPEND _cmake_import_check_files_for_LLVMCodeGen "${_IMPORT_PREFIX}/lib/libLLVMCodeGen.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMCodeGen.dll" )

# Import target "LLVMSelectionDAG" for configuration "MinSizeRel"
set_property(TARGET LLVMSelectionDAG APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMSelectionDAG PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMSelectionDAG.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMCodeGen;LLVMCore;LLVMMC;LLVMSupport;LLVMTarget;LLVMTargetParser;LLVMTransformUtils"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMSelectionDAG.dll"
  )

list(APPEND _cmake_import_check_targets LLVMSelectionDAG )
list(APPEND _cmake_import_check_files_for_LLVMSelectionDAG "${_IMPORT_PREFIX}/lib/libLLVMSelectionDAG.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMSelectionDAG.dll" )

# Import target "LLVMAsmPrinter" for configuration "MinSizeRel"
set_property(TARGET LLVMAsmPrinter APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAsmPrinter PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAsmPrinter.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMBinaryFormat;LLVMCodeGen;LLVMCore;LLVMDebugInfoCodeView;LLVMDebugInfoDWARF;LLVMDebugInfoMSF;LLVMMC;LLVMMCParser;LLVMRemarks;LLVMSupport;LLVMTarget;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAsmPrinter.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAsmPrinter )
list(APPEND _cmake_import_check_files_for_LLVMAsmPrinter "${_IMPORT_PREFIX}/lib/libLLVMAsmPrinter.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAsmPrinter.dll" )

# Import target "LLVMMIRParser" for configuration "MinSizeRel"
set_property(TARGET LLVMMIRParser APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMMIRParser PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMMIRParser.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAsmParser;LLVMBinaryFormat;LLVMCodeGen;LLVMCore;LLVMMC;LLVMSupport;LLVMTarget"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMMIRParser.dll"
  )

list(APPEND _cmake_import_check_targets LLVMMIRParser )
list(APPEND _cmake_import_check_files_for_LLVMMIRParser "${_IMPORT_PREFIX}/lib/libLLVMMIRParser.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMMIRParser.dll" )

# Import target "LLVMGlobalISel" for configuration "MinSizeRel"
set_property(TARGET LLVMGlobalISel APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMGlobalISel PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMGlobalISel.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMCodeGen;LLVMCore;LLVMMC;LLVMSelectionDAG;LLVMSupport;LLVMTarget;LLVMTransformUtils"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMGlobalISel.dll"
  )

list(APPEND _cmake_import_check_targets LLVMGlobalISel )
list(APPEND _cmake_import_check_files_for_LLVMGlobalISel "${_IMPORT_PREFIX}/lib/libLLVMGlobalISel.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMGlobalISel.dll" )

# Import target "LLVMBinaryFormat" for configuration "MinSizeRel"
set_property(TARGET LLVMBinaryFormat APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMBinaryFormat PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMBinaryFormat.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMBinaryFormat.dll"
  )

list(APPEND _cmake_import_check_targets LLVMBinaryFormat )
list(APPEND _cmake_import_check_files_for_LLVMBinaryFormat "${_IMPORT_PREFIX}/lib/libLLVMBinaryFormat.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMBinaryFormat.dll" )

# Import target "LLVMBitReader" for configuration "MinSizeRel"
set_property(TARGET LLVMBitReader APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMBitReader PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMBitReader.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMBitstreamReader;LLVMCore;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMBitReader.dll"
  )

list(APPEND _cmake_import_check_targets LLVMBitReader )
list(APPEND _cmake_import_check_files_for_LLVMBitReader "${_IMPORT_PREFIX}/lib/libLLVMBitReader.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMBitReader.dll" )

# Import target "LLVMBitWriter" for configuration "MinSizeRel"
set_property(TARGET LLVMBitWriter APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMBitWriter PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMBitWriter.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMCore;LLVMMC;LLVMObject;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMBitWriter.dll"
  )

list(APPEND _cmake_import_check_targets LLVMBitWriter )
list(APPEND _cmake_import_check_files_for_LLVMBitWriter "${_IMPORT_PREFIX}/lib/libLLVMBitWriter.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMBitWriter.dll" )

# Import target "LLVMBitstreamReader" for configuration "MinSizeRel"
set_property(TARGET LLVMBitstreamReader APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMBitstreamReader PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMBitstreamReader.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMBitstreamReader.dll"
  )

list(APPEND _cmake_import_check_targets LLVMBitstreamReader )
list(APPEND _cmake_import_check_files_for_LLVMBitstreamReader "${_IMPORT_PREFIX}/lib/libLLVMBitstreamReader.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMBitstreamReader.dll" )

# Import target "LLVMDWARFLinker" for configuration "MinSizeRel"
set_property(TARGET LLVMDWARFLinker APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMDWARFLinker PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMDWARFLinker.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMBinaryFormat;LLVMDebugInfoDWARF;LLVMAsmPrinter;LLVMCodeGen;LLVMMC;LLVMObject;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMDWARFLinker.dll"
  )

list(APPEND _cmake_import_check_targets LLVMDWARFLinker )
list(APPEND _cmake_import_check_files_for_LLVMDWARFLinker "${_IMPORT_PREFIX}/lib/libLLVMDWARFLinker.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMDWARFLinker.dll" )

# Import target "LLVMDWARFLinkerParallel" for configuration "MinSizeRel"
set_property(TARGET LLVMDWARFLinkerParallel APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMDWARFLinkerParallel PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMDWARFLinkerParallel.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMBinaryFormat;LLVMDebugInfoDWARF;LLVMAsmPrinter;LLVMCodeGen;LLVMMC;LLVMObject;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMDWARFLinkerParallel.dll"
  )

list(APPEND _cmake_import_check_targets LLVMDWARFLinkerParallel )
list(APPEND _cmake_import_check_files_for_LLVMDWARFLinkerParallel "${_IMPORT_PREFIX}/lib/libLLVMDWARFLinkerParallel.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMDWARFLinkerParallel.dll" )

# Import target "LLVMExtensions" for configuration "MinSizeRel"
set_property(TARGET LLVMExtensions APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMExtensions PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMExtensions.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMExtensions.dll"
  )

list(APPEND _cmake_import_check_targets LLVMExtensions )
list(APPEND _cmake_import_check_files_for_LLVMExtensions "${_IMPORT_PREFIX}/lib/libLLVMExtensions.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMExtensions.dll" )

# Import target "LLVMFrontendHLSL" for configuration "MinSizeRel"
set_property(TARGET LLVMFrontendHLSL APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMFrontendHLSL PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMFrontendHLSL.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMCore;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMFrontendHLSL.dll"
  )

list(APPEND _cmake_import_check_targets LLVMFrontendHLSL )
list(APPEND _cmake_import_check_files_for_LLVMFrontendHLSL "${_IMPORT_PREFIX}/lib/libLLVMFrontendHLSL.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMFrontendHLSL.dll" )

# Import target "LLVMFrontendOpenACC" for configuration "MinSizeRel"
set_property(TARGET LLVMFrontendOpenACC APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMFrontendOpenACC PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMFrontendOpenACC.dll.a"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMFrontendOpenACC.dll"
  )

list(APPEND _cmake_import_check_targets LLVMFrontendOpenACC )
list(APPEND _cmake_import_check_files_for_LLVMFrontendOpenACC "${_IMPORT_PREFIX}/lib/libLLVMFrontendOpenACC.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMFrontendOpenACC.dll" )

# Import target "LLVMFrontendOpenMP" for configuration "MinSizeRel"
set_property(TARGET LLVMFrontendOpenMP APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMFrontendOpenMP PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMFrontendOpenMP.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMCore;LLVMSupport;LLVMTargetParser;LLVMTransformUtils;LLVMAnalysis;LLVMMC;LLVMScalarOpts"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMFrontendOpenMP.dll"
  )

list(APPEND _cmake_import_check_targets LLVMFrontendOpenMP )
list(APPEND _cmake_import_check_files_for_LLVMFrontendOpenMP "${_IMPORT_PREFIX}/lib/libLLVMFrontendOpenMP.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMFrontendOpenMP.dll" )

# Import target "LLVMTransformUtils" for configuration "MinSizeRel"
set_property(TARGET LLVMTransformUtils APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMTransformUtils PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMTransformUtils.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMCore;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMTransformUtils.dll"
  )

list(APPEND _cmake_import_check_targets LLVMTransformUtils )
list(APPEND _cmake_import_check_files_for_LLVMTransformUtils "${_IMPORT_PREFIX}/lib/libLLVMTransformUtils.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMTransformUtils.dll" )

# Import target "LLVMInstrumentation" for configuration "MinSizeRel"
set_property(TARGET LLVMInstrumentation APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMInstrumentation PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMInstrumentation.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMCore;LLVMDemangle;LLVMMC;LLVMSupport;LLVMTargetParser;LLVMTransformUtils;LLVMProfileData"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMInstrumentation.dll"
  )

list(APPEND _cmake_import_check_targets LLVMInstrumentation )
list(APPEND _cmake_import_check_files_for_LLVMInstrumentation "${_IMPORT_PREFIX}/lib/libLLVMInstrumentation.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMInstrumentation.dll" )

# Import target "LLVMAggressiveInstCombine" for configuration "MinSizeRel"
set_property(TARGET LLVMAggressiveInstCombine APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAggressiveInstCombine PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAggressiveInstCombine.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMCore;LLVMSupport;LLVMTransformUtils"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAggressiveInstCombine.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAggressiveInstCombine )
list(APPEND _cmake_import_check_files_for_LLVMAggressiveInstCombine "${_IMPORT_PREFIX}/lib/libLLVMAggressiveInstCombine.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAggressiveInstCombine.dll" )

# Import target "LLVMInstCombine" for configuration "MinSizeRel"
set_property(TARGET LLVMInstCombine APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMInstCombine PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMInstCombine.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMCore;LLVMSupport;LLVMTransformUtils"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMInstCombine.dll"
  )

list(APPEND _cmake_import_check_targets LLVMInstCombine )
list(APPEND _cmake_import_check_files_for_LLVMInstCombine "${_IMPORT_PREFIX}/lib/libLLVMInstCombine.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMInstCombine.dll" )

# Import target "LLVMScalarOpts" for configuration "MinSizeRel"
set_property(TARGET LLVMScalarOpts APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMScalarOpts PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMScalarOpts.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAggressiveInstCombine;LLVMAnalysis;LLVMCore;LLVMInstCombine;LLVMSupport;LLVMTransformUtils"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMScalarOpts.dll"
  )

list(APPEND _cmake_import_check_targets LLVMScalarOpts )
list(APPEND _cmake_import_check_files_for_LLVMScalarOpts "${_IMPORT_PREFIX}/lib/libLLVMScalarOpts.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMScalarOpts.dll" )

# Import target "LLVMipo" for configuration "MinSizeRel"
set_property(TARGET LLVMipo APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMipo PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMipo.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAggressiveInstCombine;LLVMAnalysis;LLVMBitReader;LLVMBitWriter;LLVMCore;LLVMFrontendOpenMP;LLVMInstCombine;LLVMIRReader;LLVMLinker;LLVMObject;LLVMProfileData;LLVMScalarOpts;LLVMSupport;LLVMTargetParser;LLVMTransformUtils;LLVMVectorize;LLVMInstrumentation"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMipo.dll"
  )

list(APPEND _cmake_import_check_targets LLVMipo )
list(APPEND _cmake_import_check_files_for_LLVMipo "${_IMPORT_PREFIX}/lib/libLLVMipo.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMipo.dll" )

# Import target "LLVMVectorize" for configuration "MinSizeRel"
set_property(TARGET LLVMVectorize APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMVectorize PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMVectorize.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMCore;LLVMSupport;LLVMTransformUtils"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMVectorize.dll"
  )

list(APPEND _cmake_import_check_targets LLVMVectorize )
list(APPEND _cmake_import_check_files_for_LLVMVectorize "${_IMPORT_PREFIX}/lib/libLLVMVectorize.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMVectorize.dll" )

# Import target "LLVMObjCARCOpts" for configuration "MinSizeRel"
set_property(TARGET LLVMObjCARCOpts APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMObjCARCOpts PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMObjCARCOpts.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMCore;LLVMSupport;LLVMTransformUtils"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMObjCARCOpts.dll"
  )

list(APPEND _cmake_import_check_targets LLVMObjCARCOpts )
list(APPEND _cmake_import_check_files_for_LLVMObjCARCOpts "${_IMPORT_PREFIX}/lib/libLLVMObjCARCOpts.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMObjCARCOpts.dll" )

# Import target "LLVMCoroutines" for configuration "MinSizeRel"
set_property(TARGET LLVMCoroutines APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMCoroutines PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMCoroutines.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMCore;LLVMipo;LLVMScalarOpts;LLVMSupport;LLVMTransformUtils"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMCoroutines.dll"
  )

list(APPEND _cmake_import_check_targets LLVMCoroutines )
list(APPEND _cmake_import_check_files_for_LLVMCoroutines "${_IMPORT_PREFIX}/lib/libLLVMCoroutines.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMCoroutines.dll" )

# Import target "LLVMCFGuard" for configuration "MinSizeRel"
set_property(TARGET LLVMCFGuard APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMCFGuard PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMCFGuard.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMCore;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMCFGuard.dll"
  )

list(APPEND _cmake_import_check_targets LLVMCFGuard )
list(APPEND _cmake_import_check_files_for_LLVMCFGuard "${_IMPORT_PREFIX}/lib/libLLVMCFGuard.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMCFGuard.dll" )

# Import target "LLVMLinker" for configuration "MinSizeRel"
set_property(TARGET LLVMLinker APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMLinker PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMLinker.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMCore;LLVMObject;LLVMSupport;LLVMTransformUtils;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMLinker.dll"
  )

list(APPEND _cmake_import_check_targets LLVMLinker )
list(APPEND _cmake_import_check_files_for_LLVMLinker "${_IMPORT_PREFIX}/lib/libLLVMLinker.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMLinker.dll" )

# Import target "LLVMAnalysis" for configuration "MinSizeRel"
set_property(TARGET LLVMAnalysis APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAnalysis PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAnalysis.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMBinaryFormat;LLVMCore;LLVMObject;LLVMProfileData;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAnalysis.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAnalysis )
list(APPEND _cmake_import_check_files_for_LLVMAnalysis "${_IMPORT_PREFIX}/lib/libLLVMAnalysis.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAnalysis.dll" )

# Import target "LLVMLTO" for configuration "MinSizeRel"
set_property(TARGET LLVMLTO APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMLTO PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMLTO.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAggressiveInstCombine;LLVMAnalysis;LLVMBinaryFormat;LLVMBitReader;LLVMBitWriter;LLVMCodeGen;LLVMCore;LLVMExtensions;LLVMipo;LLVMInstCombine;LLVMInstrumentation;LLVMLinker;LLVMMC;LLVMObjCARCOpts;LLVMObject;LLVMPasses;LLVMRemarks;LLVMScalarOpts;LLVMSupport;LLVMTarget;LLVMTargetParser;LLVMTransformUtils"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMLTO.dll"
  )

list(APPEND _cmake_import_check_targets LLVMLTO )
list(APPEND _cmake_import_check_files_for_LLVMLTO "${_IMPORT_PREFIX}/lib/libLLVMLTO.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMLTO.dll" )

# Import target "LLVMMC" for configuration "MinSizeRel"
set_property(TARGET LLVMMC APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMMC PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMMC.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport;LLVMTargetParser;LLVMBinaryFormat;LLVMDebugInfoCodeView"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMMC.dll"
  )

list(APPEND _cmake_import_check_targets LLVMMC )
list(APPEND _cmake_import_check_files_for_LLVMMC "${_IMPORT_PREFIX}/lib/libLLVMMC.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMMC.dll" )

# Import target "LLVMMCParser" for configuration "MinSizeRel"
set_property(TARGET LLVMMCParser APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMMCParser PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMMCParser.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMMCParser.dll"
  )

list(APPEND _cmake_import_check_targets LLVMMCParser )
list(APPEND _cmake_import_check_files_for_LLVMMCParser "${_IMPORT_PREFIX}/lib/libLLVMMCParser.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMMCParser.dll" )

# Import target "LLVMMCDisassembler" for configuration "MinSizeRel"
set_property(TARGET LLVMMCDisassembler APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMMCDisassembler PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMMCDisassembler.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMMCDisassembler.dll"
  )

list(APPEND _cmake_import_check_targets LLVMMCDisassembler )
list(APPEND _cmake_import_check_files_for_LLVMMCDisassembler "${_IMPORT_PREFIX}/lib/libLLVMMCDisassembler.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMMCDisassembler.dll" )

# Import target "LLVMMCA" for configuration "MinSizeRel"
set_property(TARGET LLVMMCA APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMMCA PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMMCA.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMMCA.dll"
  )

list(APPEND _cmake_import_check_targets LLVMMCA )
list(APPEND _cmake_import_check_files_for_LLVMMCA "${_IMPORT_PREFIX}/lib/libLLVMMCA.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMMCA.dll" )

# Import target "LLVMObjCopy" for configuration "MinSizeRel"
set_property(TARGET LLVMObjCopy APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMObjCopy PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMObjCopy.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMBinaryFormat;LLVMObject;LLVMSupport;LLVMMC"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMObjCopy.dll"
  )

list(APPEND _cmake_import_check_targets LLVMObjCopy )
list(APPEND _cmake_import_check_files_for_LLVMObjCopy "${_IMPORT_PREFIX}/lib/libLLVMObjCopy.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMObjCopy.dll" )

# Import target "LLVMObject" for configuration "MinSizeRel"
set_property(TARGET LLVMObject APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMObject PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMObject.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMBitReader;LLVMCore;LLVMMC;LLVMIRReader;LLVMBinaryFormat;LLVMMCParser;LLVMSupport;LLVMTargetParser;LLVMTextAPI"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMObject.dll"
  )

list(APPEND _cmake_import_check_targets LLVMObject )
list(APPEND _cmake_import_check_files_for_LLVMObject "${_IMPORT_PREFIX}/lib/libLLVMObject.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMObject.dll" )

# Import target "LLVMObjectYAML" for configuration "MinSizeRel"
set_property(TARGET LLVMObjectYAML APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMObjectYAML PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMObjectYAML.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMBinaryFormat;LLVMObject;LLVMSupport;LLVMTargetParser;LLVMDebugInfoCodeView;LLVMMC"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMObjectYAML.dll"
  )

list(APPEND _cmake_import_check_targets LLVMObjectYAML )
list(APPEND _cmake_import_check_files_for_LLVMObjectYAML "${_IMPORT_PREFIX}/lib/libLLVMObjectYAML.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMObjectYAML.dll" )

# Import target "LLVMOption" for configuration "MinSizeRel"
set_property(TARGET LLVMOption APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMOption PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMOption.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMOption.dll"
  )

list(APPEND _cmake_import_check_targets LLVMOption )
list(APPEND _cmake_import_check_files_for_LLVMOption "${_IMPORT_PREFIX}/lib/libLLVMOption.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMOption.dll" )

# Import target "LLVMRemarks" for configuration "MinSizeRel"
set_property(TARGET LLVMRemarks APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMRemarks PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMRemarks.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMBitstreamReader;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMRemarks.dll"
  )

list(APPEND _cmake_import_check_targets LLVMRemarks )
list(APPEND _cmake_import_check_files_for_LLVMRemarks "${_IMPORT_PREFIX}/lib/libLLVMRemarks.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMRemarks.dll" )

# Import target "LLVMDebuginfod" for configuration "MinSizeRel"
set_property(TARGET LLVMDebuginfod APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMDebuginfod PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMDebuginfod.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport;LLVMSymbolize;LLVMDebugInfoDWARF;LLVMBinaryFormat;LLVMObject"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMDebuginfod.dll"
  )

list(APPEND _cmake_import_check_targets LLVMDebuginfod )
list(APPEND _cmake_import_check_files_for_LLVMDebuginfod "${_IMPORT_PREFIX}/lib/libLLVMDebuginfod.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMDebuginfod.dll" )

# Import target "LLVMDebugInfoDWARF" for configuration "MinSizeRel"
set_property(TARGET LLVMDebugInfoDWARF APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMDebugInfoDWARF PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMDebugInfoDWARF.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMBinaryFormat;LLVMObject;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMDebugInfoDWARF.dll"
  )

list(APPEND _cmake_import_check_targets LLVMDebugInfoDWARF )
list(APPEND _cmake_import_check_files_for_LLVMDebugInfoDWARF "${_IMPORT_PREFIX}/lib/libLLVMDebugInfoDWARF.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMDebugInfoDWARF.dll" )

# Import target "LLVMDebugInfoGSYM" for configuration "MinSizeRel"
set_property(TARGET LLVMDebugInfoGSYM APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMDebugInfoGSYM PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMDebugInfoGSYM.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMObject;LLVMSupport;LLVMTargetParser;LLVMDebugInfoDWARF"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMDebugInfoGSYM.dll"
  )

list(APPEND _cmake_import_check_targets LLVMDebugInfoGSYM )
list(APPEND _cmake_import_check_files_for_LLVMDebugInfoGSYM "${_IMPORT_PREFIX}/lib/libLLVMDebugInfoGSYM.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMDebugInfoGSYM.dll" )

# Import target "LLVMDebugInfoLogicalView" for configuration "MinSizeRel"
set_property(TARGET LLVMDebugInfoLogicalView APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMDebugInfoLogicalView PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMDebugInfoLogicalView.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMBinaryFormat;LLVMObject;LLVMMC;LLVMSupport;LLVMTargetParser;LLVMDebugInfoDWARF"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMDebugInfoLogicalView.dll"
  )

list(APPEND _cmake_import_check_targets LLVMDebugInfoLogicalView )
list(APPEND _cmake_import_check_files_for_LLVMDebugInfoLogicalView "${_IMPORT_PREFIX}/lib/libLLVMDebugInfoLogicalView.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMDebugInfoLogicalView.dll" )

# Import target "LLVMDebugInfoMSF" for configuration "MinSizeRel"
set_property(TARGET LLVMDebugInfoMSF APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMDebugInfoMSF PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMDebugInfoMSF.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMDebugInfoMSF.dll"
  )

list(APPEND _cmake_import_check_targets LLVMDebugInfoMSF )
list(APPEND _cmake_import_check_files_for_LLVMDebugInfoMSF "${_IMPORT_PREFIX}/lib/libLLVMDebugInfoMSF.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMDebugInfoMSF.dll" )

# Import target "LLVMDebugInfoCodeView" for configuration "MinSizeRel"
set_property(TARGET LLVMDebugInfoCodeView APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMDebugInfoCodeView PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMDebugInfoCodeView.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMDebugInfoCodeView.dll"
  )

list(APPEND _cmake_import_check_targets LLVMDebugInfoCodeView )
list(APPEND _cmake_import_check_files_for_LLVMDebugInfoCodeView "${_IMPORT_PREFIX}/lib/libLLVMDebugInfoCodeView.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMDebugInfoCodeView.dll" )

# Import target "LLVMDebugInfoPDB" for configuration "MinSizeRel"
set_property(TARGET LLVMDebugInfoPDB APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMDebugInfoPDB PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMDebugInfoPDB.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMBinaryFormat;LLVMObject;LLVMSupport;LLVMDebugInfoCodeView;LLVMDebugInfoMSF"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMDebugInfoPDB.dll"
  )

list(APPEND _cmake_import_check_targets LLVMDebugInfoPDB )
list(APPEND _cmake_import_check_files_for_LLVMDebugInfoPDB "${_IMPORT_PREFIX}/lib/libLLVMDebugInfoPDB.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMDebugInfoPDB.dll" )

# Import target "LLVMSymbolize" for configuration "MinSizeRel"
set_property(TARGET LLVMSymbolize APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMSymbolize PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMSymbolize.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMDebugInfoDWARF;LLVMDebugInfoPDB;LLVMObject;LLVMSupport;LLVMDemangle;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMSymbolize.dll"
  )

list(APPEND _cmake_import_check_targets LLVMSymbolize )
list(APPEND _cmake_import_check_files_for_LLVMSymbolize "${_IMPORT_PREFIX}/lib/libLLVMSymbolize.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMSymbolize.dll" )

# Import target "LLVMDWP" for configuration "MinSizeRel"
set_property(TARGET LLVMDWP APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMDWP PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMDWP.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMDebugInfoDWARF;LLVMMC;LLVMObject;LLVMSupport;LLVMTarget"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMDWP.dll"
  )

list(APPEND _cmake_import_check_targets LLVMDWP )
list(APPEND _cmake_import_check_files_for_LLVMDWP "${_IMPORT_PREFIX}/lib/libLLVMDWP.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMDWP.dll" )

# Import target "LLVMExecutionEngine" for configuration "MinSizeRel"
set_property(TARGET LLVMExecutionEngine APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMExecutionEngine PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMExecutionEngine.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMCore;LLVMMC;LLVMObject;LLVMOrcTargetProcess;LLVMSupport;LLVMTarget;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMExecutionEngine.dll"
  )

list(APPEND _cmake_import_check_targets LLVMExecutionEngine )
list(APPEND _cmake_import_check_files_for_LLVMExecutionEngine "${_IMPORT_PREFIX}/lib/libLLVMExecutionEngine.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMExecutionEngine.dll" )

# Import target "LLVMInterpreter" for configuration "MinSizeRel"
set_property(TARGET LLVMInterpreter APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMInterpreter PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMInterpreter.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMCodeGen;LLVMCore;LLVMExecutionEngine;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMInterpreter.dll"
  )

list(APPEND _cmake_import_check_targets LLVMInterpreter )
list(APPEND _cmake_import_check_files_for_LLVMInterpreter "${_IMPORT_PREFIX}/lib/libLLVMInterpreter.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMInterpreter.dll" )

# Import target "LLVMJITLink" for configuration "MinSizeRel"
set_property(TARGET LLVMJITLink APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMJITLink PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMJITLink.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMObject;LLVMOrcShared;LLVMOrcTargetProcess;LLVMSupport;LLVMTargetParser;LLVMBinaryFormat;LLVMOption"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMJITLink.dll"
  )

list(APPEND _cmake_import_check_targets LLVMJITLink )
list(APPEND _cmake_import_check_files_for_LLVMJITLink "${_IMPORT_PREFIX}/lib/libLLVMJITLink.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMJITLink.dll" )

# Import target "LLVMMCJIT" for configuration "MinSizeRel"
set_property(TARGET LLVMMCJIT APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMMCJIT PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMMCJIT.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMCore;LLVMExecutionEngine;LLVMObject;LLVMRuntimeDyld;LLVMSupport;LLVMTarget"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMMCJIT.dll"
  )

list(APPEND _cmake_import_check_targets LLVMMCJIT )
list(APPEND _cmake_import_check_files_for_LLVMMCJIT "${_IMPORT_PREFIX}/lib/libLLVMMCJIT.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMMCJIT.dll" )

# Import target "LLVMOrcJIT" for configuration "MinSizeRel"
set_property(TARGET LLVMOrcJIT APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMOrcJIT PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMOrcJIT.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMBitReader;LLVMBitWriter;LLVMPasses;LLVMCore;LLVMExecutionEngine;LLVMJITLink;LLVMObject;LLVMOrcShared;LLVMOrcTargetProcess;LLVMWindowsDriver;LLVMMC;LLVMMCDisassembler;LLVMRuntimeDyld;LLVMSupport;LLVMTarget;LLVMTargetParser;LLVMTransformUtils"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMOrcJIT.dll"
  )

list(APPEND _cmake_import_check_targets LLVMOrcJIT )
list(APPEND _cmake_import_check_files_for_LLVMOrcJIT "${_IMPORT_PREFIX}/lib/libLLVMOrcJIT.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMOrcJIT.dll" )

# Import target "LLVMOrcShared" for configuration "MinSizeRel"
set_property(TARGET LLVMOrcShared APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMOrcShared PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMOrcShared.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMOrcShared.dll"
  )

list(APPEND _cmake_import_check_targets LLVMOrcShared )
list(APPEND _cmake_import_check_files_for_LLVMOrcShared "${_IMPORT_PREFIX}/lib/libLLVMOrcShared.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMOrcShared.dll" )

# Import target "LLVMOrcTargetProcess" for configuration "MinSizeRel"
set_property(TARGET LLVMOrcTargetProcess APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMOrcTargetProcess PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMOrcTargetProcess.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMOrcShared;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMOrcTargetProcess.dll"
  )

list(APPEND _cmake_import_check_targets LLVMOrcTargetProcess )
list(APPEND _cmake_import_check_files_for_LLVMOrcTargetProcess "${_IMPORT_PREFIX}/lib/libLLVMOrcTargetProcess.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMOrcTargetProcess.dll" )

# Import target "LLVMRuntimeDyld" for configuration "MinSizeRel"
set_property(TARGET LLVMRuntimeDyld APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMRuntimeDyld PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMRuntimeDyld.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMCore;LLVMMC;LLVMObject;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMRuntimeDyld.dll"
  )

list(APPEND _cmake_import_check_targets LLVMRuntimeDyld )
list(APPEND _cmake_import_check_files_for_LLVMRuntimeDyld "${_IMPORT_PREFIX}/lib/libLLVMRuntimeDyld.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMRuntimeDyld.dll" )

# Import target "LLVMTarget" for configuration "MinSizeRel"
set_property(TARGET LLVMTarget APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMTarget PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMTarget.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMCore;LLVMMC;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMTarget.dll"
  )

list(APPEND _cmake_import_check_targets LLVMTarget )
list(APPEND _cmake_import_check_files_for_LLVMTarget "${_IMPORT_PREFIX}/lib/libLLVMTarget.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMTarget.dll" )

# Import target "LLVMX86CodeGen" for configuration "MinSizeRel"
set_property(TARGET LLVMX86CodeGen APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMX86CodeGen PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMX86CodeGen.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMAsmPrinter;LLVMCodeGen;LLVMCore;LLVMInstrumentation;LLVMMC;LLVMSelectionDAG;LLVMSupport;LLVMTarget;LLVMTargetParser;LLVMTransformUtils;LLVMX86Desc;LLVMX86Info;LLVMGlobalISel;LLVMProfileData;LLVMCFGuard"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMX86CodeGen.dll"
  )

list(APPEND _cmake_import_check_targets LLVMX86CodeGen )
list(APPEND _cmake_import_check_files_for_LLVMX86CodeGen "${_IMPORT_PREFIX}/lib/libLLVMX86CodeGen.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMX86CodeGen.dll" )

# Import target "LLVMX86AsmParser" for configuration "MinSizeRel"
set_property(TARGET LLVMX86AsmParser APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMX86AsmParser PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMX86AsmParser.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMMCParser;LLVMSupport;LLVMX86Desc;LLVMX86Info"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMX86AsmParser.dll"
  )

list(APPEND _cmake_import_check_targets LLVMX86AsmParser )
list(APPEND _cmake_import_check_files_for_LLVMX86AsmParser "${_IMPORT_PREFIX}/lib/libLLVMX86AsmParser.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMX86AsmParser.dll" )

# Import target "LLVMX86Disassembler" for configuration "MinSizeRel"
set_property(TARGET LLVMX86Disassembler APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMX86Disassembler PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMX86Disassembler.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMCDisassembler;LLVMSupport;LLVMX86Info"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMX86Disassembler.dll"
  )

list(APPEND _cmake_import_check_targets LLVMX86Disassembler )
list(APPEND _cmake_import_check_files_for_LLVMX86Disassembler "${_IMPORT_PREFIX}/lib/libLLVMX86Disassembler.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMX86Disassembler.dll" )

# Import target "LLVMX86TargetMCA" for configuration "MinSizeRel"
set_property(TARGET LLVMX86TargetMCA APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMX86TargetMCA PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMX86TargetMCA.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMMCParser;LLVMX86Desc;LLVMX86Info;LLVMSupport;LLVMTargetParser;LLVMMCA"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMX86TargetMCA.dll"
  )

list(APPEND _cmake_import_check_targets LLVMX86TargetMCA )
list(APPEND _cmake_import_check_files_for_LLVMX86TargetMCA "${_IMPORT_PREFIX}/lib/libLLVMX86TargetMCA.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMX86TargetMCA.dll" )

# Import target "LLVMX86Desc" for configuration "MinSizeRel"
set_property(TARGET LLVMX86Desc APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMX86Desc PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMX86Desc.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMMCDisassembler;LLVMSupport;LLVMTargetParser;LLVMX86Info;LLVMBinaryFormat"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMX86Desc.dll"
  )

list(APPEND _cmake_import_check_targets LLVMX86Desc )
list(APPEND _cmake_import_check_files_for_LLVMX86Desc "${_IMPORT_PREFIX}/lib/libLLVMX86Desc.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMX86Desc.dll" )

# Import target "LLVMX86Info" for configuration "MinSizeRel"
set_property(TARGET LLVMX86Info APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMX86Info PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMX86Info.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMX86Info.dll"
  )

list(APPEND _cmake_import_check_targets LLVMX86Info )
list(APPEND _cmake_import_check_files_for_LLVMX86Info "${_IMPORT_PREFIX}/lib/libLLVMX86Info.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMX86Info.dll" )

# Import target "LLVMARMCodeGen" for configuration "MinSizeRel"
set_property(TARGET LLVMARMCodeGen APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMARMCodeGen PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMARMCodeGen.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMARMDesc;LLVMARMInfo;LLVMAnalysis;LLVMAsmPrinter;LLVMCodeGen;LLVMCore;LLVMipo;LLVMMC;LLVMScalarOpts;LLVMSelectionDAG;LLVMSupport;LLVMTarget;LLVMTargetParser;LLVMGlobalISel;LLVMARMUtils;LLVMTransformUtils;LLVMCFGuard"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMARMCodeGen.dll"
  )

list(APPEND _cmake_import_check_targets LLVMARMCodeGen )
list(APPEND _cmake_import_check_files_for_LLVMARMCodeGen "${_IMPORT_PREFIX}/lib/libLLVMARMCodeGen.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMARMCodeGen.dll" )

# Import target "LLVMARMAsmParser" for configuration "MinSizeRel"
set_property(TARGET LLVMARMAsmParser APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMARMAsmParser PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMARMAsmParser.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMARMDesc;LLVMARMInfo;LLVMMC;LLVMMCParser;LLVMSupport;LLVMTargetParser;LLVMARMUtils"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMARMAsmParser.dll"
  )

list(APPEND _cmake_import_check_targets LLVMARMAsmParser )
list(APPEND _cmake_import_check_files_for_LLVMARMAsmParser "${_IMPORT_PREFIX}/lib/libLLVMARMAsmParser.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMARMAsmParser.dll" )

# Import target "LLVMARMDisassembler" for configuration "MinSizeRel"
set_property(TARGET LLVMARMDisassembler APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMARMDisassembler PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMARMDisassembler.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMARMDesc;LLVMARMInfo;LLVMMCDisassembler;LLVMMC;LLVMSupport;LLVMARMUtils"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMARMDisassembler.dll"
  )

list(APPEND _cmake_import_check_targets LLVMARMDisassembler )
list(APPEND _cmake_import_check_files_for_LLVMARMDisassembler "${_IMPORT_PREFIX}/lib/libLLVMARMDisassembler.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMARMDisassembler.dll" )

# Import target "LLVMARMDesc" for configuration "MinSizeRel"
set_property(TARGET LLVMARMDesc APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMARMDesc PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMARMDesc.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMARMInfo;LLVMARMUtils;LLVMMC;LLVMMCDisassembler;LLVMSupport;LLVMBinaryFormat;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMARMDesc.dll"
  )

list(APPEND _cmake_import_check_targets LLVMARMDesc )
list(APPEND _cmake_import_check_files_for_LLVMARMDesc "${_IMPORT_PREFIX}/lib/libLLVMARMDesc.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMARMDesc.dll" )

# Import target "LLVMARMInfo" for configuration "MinSizeRel"
set_property(TARGET LLVMARMInfo APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMARMInfo PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMARMInfo.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMARMInfo.dll"
  )

list(APPEND _cmake_import_check_targets LLVMARMInfo )
list(APPEND _cmake_import_check_files_for_LLVMARMInfo "${_IMPORT_PREFIX}/lib/libLLVMARMInfo.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMARMInfo.dll" )

# Import target "LLVMARMUtils" for configuration "MinSizeRel"
set_property(TARGET LLVMARMUtils APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMARMUtils PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMARMUtils.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMARMUtils.dll"
  )

list(APPEND _cmake_import_check_targets LLVMARMUtils )
list(APPEND _cmake_import_check_files_for_LLVMARMUtils "${_IMPORT_PREFIX}/lib/libLLVMARMUtils.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMARMUtils.dll" )

# Import target "LLVMAArch64CodeGen" for configuration "MinSizeRel"
set_property(TARGET LLVMAArch64CodeGen APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAArch64CodeGen PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAArch64CodeGen.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAArch64Desc;LLVMAArch64Info;LLVMAArch64Utils;LLVMAnalysis;LLVMAsmPrinter;LLVMCodeGen;LLVMCore;LLVMMC;LLVMScalarOpts;LLVMSelectionDAG;LLVMSupport;LLVMTarget;LLVMTargetParser;LLVMTransformUtils;LLVMGlobalISel;LLVMCFGuard"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAArch64CodeGen.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAArch64CodeGen )
list(APPEND _cmake_import_check_files_for_LLVMAArch64CodeGen "${_IMPORT_PREFIX}/lib/libLLVMAArch64CodeGen.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAArch64CodeGen.dll" )

# Import target "LLVMAArch64AsmParser" for configuration "MinSizeRel"
set_property(TARGET LLVMAArch64AsmParser APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAArch64AsmParser PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAArch64AsmParser.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAArch64Desc;LLVMAArch64Info;LLVMAArch64Utils;LLVMMC;LLVMMCParser;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAArch64AsmParser.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAArch64AsmParser )
list(APPEND _cmake_import_check_files_for_LLVMAArch64AsmParser "${_IMPORT_PREFIX}/lib/libLLVMAArch64AsmParser.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAArch64AsmParser.dll" )

# Import target "LLVMAArch64Disassembler" for configuration "MinSizeRel"
set_property(TARGET LLVMAArch64Disassembler APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAArch64Disassembler PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAArch64Disassembler.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAArch64Desc;LLVMAArch64Info;LLVMAArch64Utils;LLVMMC;LLVMMCDisassembler;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAArch64Disassembler.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAArch64Disassembler )
list(APPEND _cmake_import_check_files_for_LLVMAArch64Disassembler "${_IMPORT_PREFIX}/lib/libLLVMAArch64Disassembler.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAArch64Disassembler.dll" )

# Import target "LLVMAArch64Desc" for configuration "MinSizeRel"
set_property(TARGET LLVMAArch64Desc APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAArch64Desc PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAArch64Desc.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAArch64Info;LLVMAArch64Utils;LLVMMC;LLVMBinaryFormat;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAArch64Desc.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAArch64Desc )
list(APPEND _cmake_import_check_files_for_LLVMAArch64Desc "${_IMPORT_PREFIX}/lib/libLLVMAArch64Desc.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAArch64Desc.dll" )

# Import target "LLVMAArch64Info" for configuration "MinSizeRel"
set_property(TARGET LLVMAArch64Info APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAArch64Info PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAArch64Info.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAArch64Info.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAArch64Info )
list(APPEND _cmake_import_check_files_for_LLVMAArch64Info "${_IMPORT_PREFIX}/lib/libLLVMAArch64Info.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAArch64Info.dll" )

# Import target "LLVMAArch64Utils" for configuration "MinSizeRel"
set_property(TARGET LLVMAArch64Utils APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAArch64Utils PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAArch64Utils.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport;LLVMCore"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAArch64Utils.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAArch64Utils )
list(APPEND _cmake_import_check_files_for_LLVMAArch64Utils "${_IMPORT_PREFIX}/lib/libLLVMAArch64Utils.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAArch64Utils.dll" )

# Import target "LLVMNVPTXCodeGen" for configuration "MinSizeRel"
set_property(TARGET LLVMNVPTXCodeGen APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMNVPTXCodeGen PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMNVPTXCodeGen.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMAsmPrinter;LLVMCodeGen;LLVMCore;LLVMipo;LLVMMC;LLVMNVPTXDesc;LLVMNVPTXInfo;LLVMScalarOpts;LLVMSelectionDAG;LLVMSupport;LLVMTarget;LLVMTargetParser;LLVMTransformUtils;LLVMVectorize"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMNVPTXCodeGen.dll"
  )

list(APPEND _cmake_import_check_targets LLVMNVPTXCodeGen )
list(APPEND _cmake_import_check_files_for_LLVMNVPTXCodeGen "${_IMPORT_PREFIX}/lib/libLLVMNVPTXCodeGen.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMNVPTXCodeGen.dll" )

# Import target "LLVMNVPTXDesc" for configuration "MinSizeRel"
set_property(TARGET LLVMNVPTXDesc APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMNVPTXDesc PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMNVPTXDesc.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMNVPTXInfo;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMNVPTXDesc.dll"
  )

list(APPEND _cmake_import_check_targets LLVMNVPTXDesc )
list(APPEND _cmake_import_check_files_for_LLVMNVPTXDesc "${_IMPORT_PREFIX}/lib/libLLVMNVPTXDesc.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMNVPTXDesc.dll" )

# Import target "LLVMNVPTXInfo" for configuration "MinSizeRel"
set_property(TARGET LLVMNVPTXInfo APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMNVPTXInfo PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMNVPTXInfo.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMNVPTXInfo.dll"
  )

list(APPEND _cmake_import_check_targets LLVMNVPTXInfo )
list(APPEND _cmake_import_check_files_for_LLVMNVPTXInfo "${_IMPORT_PREFIX}/lib/libLLVMNVPTXInfo.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMNVPTXInfo.dll" )

# Import target "LLVMAMDGPUCodeGen" for configuration "MinSizeRel"
set_property(TARGET LLVMAMDGPUCodeGen APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAMDGPUCodeGen PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAMDGPUCodeGen.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMAsmPrinter;LLVMCodeGen;LLVMCore;LLVMipo;LLVMMC;LLVMPasses;LLVMAMDGPUDesc;LLVMAMDGPUInfo;LLVMAMDGPUUtils;LLVMScalarOpts;LLVMSelectionDAG;LLVMSupport;LLVMTarget;LLVMTargetParser;LLVMTransformUtils;LLVMVectorize;LLVMGlobalISel;LLVMBinaryFormat;LLVMMIRParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAMDGPUCodeGen.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAMDGPUCodeGen )
list(APPEND _cmake_import_check_files_for_LLVMAMDGPUCodeGen "${_IMPORT_PREFIX}/lib/libLLVMAMDGPUCodeGen.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAMDGPUCodeGen.dll" )

# Import target "LLVMAMDGPUAsmParser" for configuration "MinSizeRel"
set_property(TARGET LLVMAMDGPUAsmParser APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAMDGPUAsmParser PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAMDGPUAsmParser.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMMCParser;LLVMAMDGPUDesc;LLVMAMDGPUInfo;LLVMAMDGPUUtils;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAMDGPUAsmParser.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAMDGPUAsmParser )
list(APPEND _cmake_import_check_files_for_LLVMAMDGPUAsmParser "${_IMPORT_PREFIX}/lib/libLLVMAMDGPUAsmParser.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAMDGPUAsmParser.dll" )

# Import target "LLVMAMDGPUDisassembler" for configuration "MinSizeRel"
set_property(TARGET LLVMAMDGPUDisassembler APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAMDGPUDisassembler PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAMDGPUDisassembler.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAMDGPUDesc;LLVMAMDGPUInfo;LLVMAMDGPUUtils;LLVMMC;LLVMMCDisassembler;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAMDGPUDisassembler.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAMDGPUDisassembler )
list(APPEND _cmake_import_check_files_for_LLVMAMDGPUDisassembler "${_IMPORT_PREFIX}/lib/libLLVMAMDGPUDisassembler.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAMDGPUDisassembler.dll" )

# Import target "LLVMAMDGPUTargetMCA" for configuration "MinSizeRel"
set_property(TARGET LLVMAMDGPUTargetMCA APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAMDGPUTargetMCA PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAMDGPUTargetMCA.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMMCParser;LLVMAMDGPUDesc;LLVMAMDGPUInfo;LLVMAMDGPUUtils;LLVMSupport;LLVMTargetParser;LLVMMCA"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAMDGPUTargetMCA.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAMDGPUTargetMCA )
list(APPEND _cmake_import_check_files_for_LLVMAMDGPUTargetMCA "${_IMPORT_PREFIX}/lib/libLLVMAMDGPUTargetMCA.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAMDGPUTargetMCA.dll" )

# Import target "LLVMAMDGPUDesc" for configuration "MinSizeRel"
set_property(TARGET LLVMAMDGPUDesc APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAMDGPUDesc PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAMDGPUDesc.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMCore;LLVMMC;LLVMAMDGPUInfo;LLVMAMDGPUUtils;LLVMSupport;LLVMBinaryFormat;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAMDGPUDesc.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAMDGPUDesc )
list(APPEND _cmake_import_check_files_for_LLVMAMDGPUDesc "${_IMPORT_PREFIX}/lib/libLLVMAMDGPUDesc.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAMDGPUDesc.dll" )

# Import target "LLVMAMDGPUInfo" for configuration "MinSizeRel"
set_property(TARGET LLVMAMDGPUInfo APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAMDGPUInfo PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAMDGPUInfo.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAMDGPUInfo.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAMDGPUInfo )
list(APPEND _cmake_import_check_files_for_LLVMAMDGPUInfo "${_IMPORT_PREFIX}/lib/libLLVMAMDGPUInfo.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAMDGPUInfo.dll" )

# Import target "LLVMAMDGPUUtils" for configuration "MinSizeRel"
set_property(TARGET LLVMAMDGPUUtils APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAMDGPUUtils PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAMDGPUUtils.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMCore;LLVMMC;LLVMBinaryFormat;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAMDGPUUtils.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAMDGPUUtils )
list(APPEND _cmake_import_check_files_for_LLVMAMDGPUUtils "${_IMPORT_PREFIX}/lib/libLLVMAMDGPUUtils.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAMDGPUUtils.dll" )

# Import target "LLVMWebAssemblyCodeGen" for configuration "MinSizeRel"
set_property(TARGET LLVMWebAssemblyCodeGen APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMWebAssemblyCodeGen PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMWebAssemblyCodeGen.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMAsmPrinter;LLVMBinaryFormat;LLVMCodeGen;LLVMCore;LLVMMC;LLVMScalarOpts;LLVMSelectionDAG;LLVMSupport;LLVMTarget;LLVMTargetParser;LLVMTransformUtils;LLVMWebAssemblyDesc;LLVMWebAssemblyInfo;LLVMWebAssemblyUtils"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMWebAssemblyCodeGen.dll"
  )

list(APPEND _cmake_import_check_targets LLVMWebAssemblyCodeGen )
list(APPEND _cmake_import_check_files_for_LLVMWebAssemblyCodeGen "${_IMPORT_PREFIX}/lib/libLLVMWebAssemblyCodeGen.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMWebAssemblyCodeGen.dll" )

# Import target "LLVMWebAssemblyAsmParser" for configuration "MinSizeRel"
set_property(TARGET LLVMWebAssemblyAsmParser APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMWebAssemblyAsmParser PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMWebAssemblyAsmParser.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMMCParser;LLVMWebAssemblyInfo;LLVMWebAssemblyUtils;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMWebAssemblyAsmParser.dll"
  )

list(APPEND _cmake_import_check_targets LLVMWebAssemblyAsmParser )
list(APPEND _cmake_import_check_files_for_LLVMWebAssemblyAsmParser "${_IMPORT_PREFIX}/lib/libLLVMWebAssemblyAsmParser.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMWebAssemblyAsmParser.dll" )

# Import target "LLVMWebAssemblyDisassembler" for configuration "MinSizeRel"
set_property(TARGET LLVMWebAssemblyDisassembler APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMWebAssemblyDisassembler PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMWebAssemblyDisassembler.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMWebAssemblyDesc;LLVMMCDisassembler;LLVMWebAssemblyInfo;LLVMWebAssemblyUtils;LLVMSupport;LLVMMC"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMWebAssemblyDisassembler.dll"
  )

list(APPEND _cmake_import_check_targets LLVMWebAssemblyDisassembler )
list(APPEND _cmake_import_check_files_for_LLVMWebAssemblyDisassembler "${_IMPORT_PREFIX}/lib/libLLVMWebAssemblyDisassembler.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMWebAssemblyDisassembler.dll" )

# Import target "LLVMWebAssemblyDesc" for configuration "MinSizeRel"
set_property(TARGET LLVMWebAssemblyDesc APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMWebAssemblyDesc PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMWebAssemblyDesc.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMSupport;LLVMTargetParser;LLVMWebAssemblyInfo;LLVMWebAssemblyUtils"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMWebAssemblyDesc.dll"
  )

list(APPEND _cmake_import_check_targets LLVMWebAssemblyDesc )
list(APPEND _cmake_import_check_files_for_LLVMWebAssemblyDesc "${_IMPORT_PREFIX}/lib/libLLVMWebAssemblyDesc.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMWebAssemblyDesc.dll" )

# Import target "LLVMWebAssemblyInfo" for configuration "MinSizeRel"
set_property(TARGET LLVMWebAssemblyInfo APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMWebAssemblyInfo PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMWebAssemblyInfo.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMMC;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMWebAssemblyInfo.dll"
  )

list(APPEND _cmake_import_check_targets LLVMWebAssemblyInfo )
list(APPEND _cmake_import_check_files_for_LLVMWebAssemblyInfo "${_IMPORT_PREFIX}/lib/libLLVMWebAssemblyInfo.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMWebAssemblyInfo.dll" )

# Import target "LLVMWebAssemblyUtils" for configuration "MinSizeRel"
set_property(TARGET LLVMWebAssemblyUtils APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMWebAssemblyUtils PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMWebAssemblyUtils.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMCodeGen;LLVMCore;LLVMMC;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMWebAssemblyUtils.dll"
  )

list(APPEND _cmake_import_check_targets LLVMWebAssemblyUtils )
list(APPEND _cmake_import_check_files_for_LLVMWebAssemblyUtils "${_IMPORT_PREFIX}/lib/libLLVMWebAssemblyUtils.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMWebAssemblyUtils.dll" )

# Import target "LLVMAsmParser" for configuration "MinSizeRel"
set_property(TARGET LLVMAsmParser APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMAsmParser PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMAsmParser.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMBinaryFormat;LLVMCore;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMAsmParser.dll"
  )

list(APPEND _cmake_import_check_targets LLVMAsmParser )
list(APPEND _cmake_import_check_files_for_LLVMAsmParser "${_IMPORT_PREFIX}/lib/libLLVMAsmParser.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMAsmParser.dll" )

# Import target "LLVMLineEditor" for configuration "MinSizeRel"
set_property(TARGET LLVMLineEditor APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMLineEditor PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMLineEditor.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMLineEditor.dll"
  )

list(APPEND _cmake_import_check_targets LLVMLineEditor )
list(APPEND _cmake_import_check_files_for_LLVMLineEditor "${_IMPORT_PREFIX}/lib/libLLVMLineEditor.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMLineEditor.dll" )

# Import target "LLVMProfileData" for configuration "MinSizeRel"
set_property(TARGET LLVMProfileData APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMProfileData PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMProfileData.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMCore;LLVMObject;LLVMSupport;LLVMDemangle;LLVMSymbolize;LLVMDebugInfoDWARF;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMProfileData.dll"
  )

list(APPEND _cmake_import_check_targets LLVMProfileData )
list(APPEND _cmake_import_check_files_for_LLVMProfileData "${_IMPORT_PREFIX}/lib/libLLVMProfileData.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMProfileData.dll" )

# Import target "LLVMCoverage" for configuration "MinSizeRel"
set_property(TARGET LLVMCoverage APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMCoverage PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMCoverage.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMCore;LLVMObject;LLVMProfileData;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMCoverage.dll"
  )

list(APPEND _cmake_import_check_targets LLVMCoverage )
list(APPEND _cmake_import_check_files_for_LLVMCoverage "${_IMPORT_PREFIX}/lib/libLLVMCoverage.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMCoverage.dll" )

# Import target "LLVMPasses" for configuration "MinSizeRel"
set_property(TARGET LLVMPasses APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMPasses PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMPasses.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAggressiveInstCombine;LLVMAnalysis;LLVMCodeGen;LLVMCore;LLVMCoroutines;LLVMipo;LLVMInstCombine;LLVMIRPrinter;LLVMObjCARCOpts;LLVMScalarOpts;LLVMSupport;LLVMTarget;LLVMTransformUtils;LLVMVectorize;LLVMInstrumentation"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMPasses.dll"
  )

list(APPEND _cmake_import_check_targets LLVMPasses )
list(APPEND _cmake_import_check_files_for_LLVMPasses "${_IMPORT_PREFIX}/lib/libLLVMPasses.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMPasses.dll" )

# Import target "LLVMTargetParser" for configuration "MinSizeRel"
set_property(TARGET LLVMTargetParser APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMTargetParser PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMTargetParser.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMTargetParser.dll"
  )

list(APPEND _cmake_import_check_targets LLVMTargetParser )
list(APPEND _cmake_import_check_files_for_LLVMTargetParser "${_IMPORT_PREFIX}/lib/libLLVMTargetParser.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMTargetParser.dll" )

# Import target "LLVMTextAPI" for configuration "MinSizeRel"
set_property(TARGET LLVMTextAPI APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMTextAPI PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMTextAPI.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport;LLVMBinaryFormat;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMTextAPI.dll"
  )

list(APPEND _cmake_import_check_targets LLVMTextAPI )
list(APPEND _cmake_import_check_files_for_LLVMTextAPI "${_IMPORT_PREFIX}/lib/libLLVMTextAPI.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMTextAPI.dll" )

# Import target "LLVMDlltoolDriver" for configuration "MinSizeRel"
set_property(TARGET LLVMDlltoolDriver APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMDlltoolDriver PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMDlltoolDriver.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMObject;LLVMOption;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMDlltoolDriver.dll"
  )

list(APPEND _cmake_import_check_targets LLVMDlltoolDriver )
list(APPEND _cmake_import_check_files_for_LLVMDlltoolDriver "${_IMPORT_PREFIX}/lib/libLLVMDlltoolDriver.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMDlltoolDriver.dll" )

# Import target "LLVMLibDriver" for configuration "MinSizeRel"
set_property(TARGET LLVMLibDriver APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMLibDriver PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMLibDriver.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMBinaryFormat;LLVMBitReader;LLVMObject;LLVMOption;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMLibDriver.dll"
  )

list(APPEND _cmake_import_check_targets LLVMLibDriver )
list(APPEND _cmake_import_check_files_for_LLVMLibDriver "${_IMPORT_PREFIX}/lib/libLLVMLibDriver.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMLibDriver.dll" )

# Import target "LLVMXRay" for configuration "MinSizeRel"
set_property(TARGET LLVMXRay APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMXRay PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMXRay.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport;LLVMObject;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMXRay.dll"
  )

list(APPEND _cmake_import_check_targets LLVMXRay )
list(APPEND _cmake_import_check_files_for_LLVMXRay "${_IMPORT_PREFIX}/lib/libLLVMXRay.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMXRay.dll" )

# Import target "LLVMWindowsDriver" for configuration "MinSizeRel"
set_property(TARGET LLVMWindowsDriver APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMWindowsDriver PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMWindowsDriver.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMOption;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMWindowsDriver.dll"
  )

list(APPEND _cmake_import_check_targets LLVMWindowsDriver )
list(APPEND _cmake_import_check_files_for_LLVMWindowsDriver "${_IMPORT_PREFIX}/lib/libLLVMWindowsDriver.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMWindowsDriver.dll" )

# Import target "LLVMWindowsManifest" for configuration "MinSizeRel"
set_property(TARGET LLVMWindowsManifest APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMWindowsManifest PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMWindowsManifest.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMWindowsManifest.dll"
  )

list(APPEND _cmake_import_check_targets LLVMWindowsManifest )
list(APPEND _cmake_import_check_files_for_LLVMWindowsManifest "${_IMPORT_PREFIX}/lib/libLLVMWindowsManifest.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMWindowsManifest.dll" )

# Import target "FileCheck" for configuration "MinSizeRel"
set_property(TARGET FileCheck APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(FileCheck PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/FileCheck.exe"
  )

list(APPEND _cmake_import_check_targets FileCheck )
list(APPEND _cmake_import_check_files_for_FileCheck "${_IMPORT_PREFIX}/bin/FileCheck.exe" )

# Import target "llvm-PerfectShuffle" for configuration "MinSizeRel"
set_property(TARGET llvm-PerfectShuffle APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-PerfectShuffle PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-PerfectShuffle.exe"
  )

list(APPEND _cmake_import_check_targets llvm-PerfectShuffle )
list(APPEND _cmake_import_check_files_for_llvm-PerfectShuffle "${_IMPORT_PREFIX}/bin/llvm-PerfectShuffle.exe" )

# Import target "count" for configuration "MinSizeRel"
set_property(TARGET count APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(count PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/count.exe"
  )

list(APPEND _cmake_import_check_targets count )
list(APPEND _cmake_import_check_files_for_count "${_IMPORT_PREFIX}/bin/count.exe" )

# Import target "not" for configuration "MinSizeRel"
set_property(TARGET not APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(not PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/not.exe"
  )

list(APPEND _cmake_import_check_targets not )
list(APPEND _cmake_import_check_files_for_not "${_IMPORT_PREFIX}/bin/not.exe" )

# Import target "UnicodeNameMappingGenerator" for configuration "MinSizeRel"
set_property(TARGET UnicodeNameMappingGenerator APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(UnicodeNameMappingGenerator PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/UnicodeNameMappingGenerator.exe"
  )

list(APPEND _cmake_import_check_targets UnicodeNameMappingGenerator )
list(APPEND _cmake_import_check_files_for_UnicodeNameMappingGenerator "${_IMPORT_PREFIX}/bin/UnicodeNameMappingGenerator.exe" )

# Import target "yaml-bench" for configuration "MinSizeRel"
set_property(TARGET yaml-bench APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(yaml-bench PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/yaml-bench.exe"
  )

list(APPEND _cmake_import_check_targets yaml-bench )
list(APPEND _cmake_import_check_files_for_yaml-bench "${_IMPORT_PREFIX}/bin/yaml-bench.exe" )

# Import target "split-file" for configuration "MinSizeRel"
set_property(TARGET split-file APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(split-file PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/split-file.exe"
  )

list(APPEND _cmake_import_check_targets split-file )
list(APPEND _cmake_import_check_files_for_split-file "${_IMPORT_PREFIX}/bin/split-file.exe" )

# Import target "LTO" for configuration "MinSizeRel"
set_property(TARGET LTO APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LTO PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLTO.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMX86AsmParser;LLVMARMAsmParser;LLVMAArch64AsmParser;LLVMAMDGPUAsmParser;LLVMWebAssemblyAsmParser;LLVMX86CodeGen;LLVMARMCodeGen;LLVMAArch64CodeGen;LLVMNVPTXCodeGen;LLVMAMDGPUCodeGen;LLVMWebAssemblyCodeGen;LLVMX86Desc;LLVMARMDesc;LLVMAArch64Desc;LLVMNVPTXDesc;LLVMAMDGPUDesc;LLVMWebAssemblyDesc;LLVMX86Disassembler;LLVMARMDisassembler;LLVMAArch64Disassembler;LLVMAMDGPUDisassembler;LLVMWebAssemblyDisassembler;LLVMX86Info;LLVMARMInfo;LLVMAArch64Info;LLVMNVPTXInfo;LLVMAMDGPUInfo;LLVMWebAssemblyInfo;LLVMBitReader;LLVMCore;LLVMCodeGen;LLVMLTO;LLVMMC;LLVMMCDisassembler;LLVMSupport;LLVMTarget"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLTO.dll"
  )

list(APPEND _cmake_import_check_targets LTO )
list(APPEND _cmake_import_check_files_for_LTO "${_IMPORT_PREFIX}/lib/libLTO.dll.a" "${_IMPORT_PREFIX}/bin/libLTO.dll" )

# Import target "llvm-ar" for configuration "MinSizeRel"
set_property(TARGET llvm-ar APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-ar PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-ar.exe"
  )

list(APPEND _cmake_import_check_targets llvm-ar )
list(APPEND _cmake_import_check_files_for_llvm-ar "${_IMPORT_PREFIX}/bin/llvm-ar.exe" )

# Import target "llvm-config" for configuration "MinSizeRel"
set_property(TARGET llvm-config APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-config PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-config.exe"
  )

list(APPEND _cmake_import_check_targets llvm-config )
list(APPEND _cmake_import_check_files_for_llvm-config "${_IMPORT_PREFIX}/bin/llvm-config.exe" )

# Import target "llvm-lto" for configuration "MinSizeRel"
set_property(TARGET llvm-lto APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-lto PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-lto.exe"
  )

list(APPEND _cmake_import_check_targets llvm-lto )
list(APPEND _cmake_import_check_files_for_llvm-lto "${_IMPORT_PREFIX}/bin/llvm-lto.exe" )

# Import target "llvm-profdata" for configuration "MinSizeRel"
set_property(TARGET llvm-profdata APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-profdata PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-profdata.exe"
  )

list(APPEND _cmake_import_check_targets llvm-profdata )
list(APPEND _cmake_import_check_files_for_llvm-profdata "${_IMPORT_PREFIX}/bin/llvm-profdata.exe" )

# Import target "bugpoint" for configuration "MinSizeRel"
set_property(TARGET bugpoint APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(bugpoint PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/bugpoint.exe"
  )

list(APPEND _cmake_import_check_targets bugpoint )
list(APPEND _cmake_import_check_files_for_bugpoint "${_IMPORT_PREFIX}/bin/bugpoint.exe" )

# Import target "dsymutil" for configuration "MinSizeRel"
set_property(TARGET dsymutil APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(dsymutil PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/dsymutil.exe"
  )

list(APPEND _cmake_import_check_targets dsymutil )
list(APPEND _cmake_import_check_files_for_dsymutil "${_IMPORT_PREFIX}/bin/dsymutil.exe" )

# Import target "llc" for configuration "MinSizeRel"
set_property(TARGET llc APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llc PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llc.exe"
  )

list(APPEND _cmake_import_check_targets llc )
list(APPEND _cmake_import_check_files_for_llc "${_IMPORT_PREFIX}/bin/llc.exe" )

# Import target "lli-child-target" for configuration "MinSizeRel"
set_property(TARGET lli-child-target APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(lli-child-target PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/lli-child-target.exe"
  )

list(APPEND _cmake_import_check_targets lli-child-target )
list(APPEND _cmake_import_check_files_for_lli-child-target "${_IMPORT_PREFIX}/bin/lli-child-target.exe" )

# Import target "lli" for configuration "MinSizeRel"
set_property(TARGET lli APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(lli PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/lli.exe"
  )

list(APPEND _cmake_import_check_targets lli )
list(APPEND _cmake_import_check_files_for_lli "${_IMPORT_PREFIX}/bin/lli.exe" )

# Import target "llvm-as" for configuration "MinSizeRel"
set_property(TARGET llvm-as APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-as PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-as.exe"
  )

list(APPEND _cmake_import_check_targets llvm-as )
list(APPEND _cmake_import_check_files_for_llvm-as "${_IMPORT_PREFIX}/bin/llvm-as.exe" )

# Import target "llvm-bcanalyzer" for configuration "MinSizeRel"
set_property(TARGET llvm-bcanalyzer APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-bcanalyzer PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-bcanalyzer.exe"
  )

list(APPEND _cmake_import_check_targets llvm-bcanalyzer )
list(APPEND _cmake_import_check_files_for_llvm-bcanalyzer "${_IMPORT_PREFIX}/bin/llvm-bcanalyzer.exe" )

# Import target "llvm-cat" for configuration "MinSizeRel"
set_property(TARGET llvm-cat APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-cat PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-cat.exe"
  )

list(APPEND _cmake_import_check_targets llvm-cat )
list(APPEND _cmake_import_check_files_for_llvm-cat "${_IMPORT_PREFIX}/bin/llvm-cat.exe" )

# Import target "llvm-cfi-verify" for configuration "MinSizeRel"
set_property(TARGET llvm-cfi-verify APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-cfi-verify PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-cfi-verify.exe"
  )

list(APPEND _cmake_import_check_targets llvm-cfi-verify )
list(APPEND _cmake_import_check_files_for_llvm-cfi-verify "${_IMPORT_PREFIX}/bin/llvm-cfi-verify.exe" )

# Import target "LLVMCFIVerify" for configuration "MinSizeRel"
set_property(TARGET LLVMCFIVerify APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMCFIVerify PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMCFIVerify.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMDebugInfoDWARF;LLVMMC;LLVMMCParser;LLVMObject;LLVMSupport;LLVMSymbolize;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMCFIVerify.dll"
  )

list(APPEND _cmake_import_check_targets LLVMCFIVerify )
list(APPEND _cmake_import_check_files_for_LLVMCFIVerify "${_IMPORT_PREFIX}/lib/libLLVMCFIVerify.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMCFIVerify.dll" )

# Import target "llvm-cov" for configuration "MinSizeRel"
set_property(TARGET llvm-cov APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-cov PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-cov.exe"
  )

list(APPEND _cmake_import_check_targets llvm-cov )
list(APPEND _cmake_import_check_files_for_llvm-cov "${_IMPORT_PREFIX}/bin/llvm-cov.exe" )

# Import target "llvm-cvtres" for configuration "MinSizeRel"
set_property(TARGET llvm-cvtres APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-cvtres PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-cvtres.exe"
  )

list(APPEND _cmake_import_check_targets llvm-cvtres )
list(APPEND _cmake_import_check_files_for_llvm-cvtres "${_IMPORT_PREFIX}/bin/llvm-cvtres.exe" )

# Import target "llvm-cxxdump" for configuration "MinSizeRel"
set_property(TARGET llvm-cxxdump APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-cxxdump PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-cxxdump.exe"
  )

list(APPEND _cmake_import_check_targets llvm-cxxdump )
list(APPEND _cmake_import_check_files_for_llvm-cxxdump "${_IMPORT_PREFIX}/bin/llvm-cxxdump.exe" )

# Import target "llvm-cxxfilt" for configuration "MinSizeRel"
set_property(TARGET llvm-cxxfilt APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-cxxfilt PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-cxxfilt.exe"
  )

list(APPEND _cmake_import_check_targets llvm-cxxfilt )
list(APPEND _cmake_import_check_files_for_llvm-cxxfilt "${_IMPORT_PREFIX}/bin/llvm-cxxfilt.exe" )

# Import target "llvm-cxxmap" for configuration "MinSizeRel"
set_property(TARGET llvm-cxxmap APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-cxxmap PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-cxxmap.exe"
  )

list(APPEND _cmake_import_check_targets llvm-cxxmap )
list(APPEND _cmake_import_check_files_for_llvm-cxxmap "${_IMPORT_PREFIX}/bin/llvm-cxxmap.exe" )

# Import target "llvm-debuginfo-analyzer" for configuration "MinSizeRel"
set_property(TARGET llvm-debuginfo-analyzer APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-debuginfo-analyzer PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-debuginfo-analyzer.exe"
  )

list(APPEND _cmake_import_check_targets llvm-debuginfo-analyzer )
list(APPEND _cmake_import_check_files_for_llvm-debuginfo-analyzer "${_IMPORT_PREFIX}/bin/llvm-debuginfo-analyzer.exe" )

# Import target "llvm-debuginfod" for configuration "MinSizeRel"
set_property(TARGET llvm-debuginfod APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-debuginfod PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-debuginfod.exe"
  )

list(APPEND _cmake_import_check_targets llvm-debuginfod )
list(APPEND _cmake_import_check_files_for_llvm-debuginfod "${_IMPORT_PREFIX}/bin/llvm-debuginfod.exe" )

# Import target "llvm-debuginfod-find" for configuration "MinSizeRel"
set_property(TARGET llvm-debuginfod-find APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-debuginfod-find PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-debuginfod-find.exe"
  )

list(APPEND _cmake_import_check_targets llvm-debuginfod-find )
list(APPEND _cmake_import_check_files_for_llvm-debuginfod-find "${_IMPORT_PREFIX}/bin/llvm-debuginfod-find.exe" )

# Import target "llvm-diff" for configuration "MinSizeRel"
set_property(TARGET llvm-diff APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-diff PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-diff.exe"
  )

list(APPEND _cmake_import_check_targets llvm-diff )
list(APPEND _cmake_import_check_files_for_llvm-diff "${_IMPORT_PREFIX}/bin/llvm-diff.exe" )

# Import target "LLVMDiff" for configuration "MinSizeRel"
set_property(TARGET LLVMDiff APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMDiff PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMDiff.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMCore;LLVMSupport"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMDiff.dll"
  )

list(APPEND _cmake_import_check_targets LLVMDiff )
list(APPEND _cmake_import_check_files_for_LLVMDiff "${_IMPORT_PREFIX}/lib/libLLVMDiff.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMDiff.dll" )

# Import target "llvm-dis" for configuration "MinSizeRel"
set_property(TARGET llvm-dis APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-dis PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-dis.exe"
  )

list(APPEND _cmake_import_check_targets llvm-dis )
list(APPEND _cmake_import_check_files_for_llvm-dis "${_IMPORT_PREFIX}/bin/llvm-dis.exe" )

# Import target "llvm-dwarfdump" for configuration "MinSizeRel"
set_property(TARGET llvm-dwarfdump APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-dwarfdump PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-dwarfdump.exe"
  )

list(APPEND _cmake_import_check_targets llvm-dwarfdump )
list(APPEND _cmake_import_check_files_for_llvm-dwarfdump "${_IMPORT_PREFIX}/bin/llvm-dwarfdump.exe" )

# Import target "llvm-dwarfutil" for configuration "MinSizeRel"
set_property(TARGET llvm-dwarfutil APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-dwarfutil PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-dwarfutil.exe"
  )

list(APPEND _cmake_import_check_targets llvm-dwarfutil )
list(APPEND _cmake_import_check_files_for_llvm-dwarfutil "${_IMPORT_PREFIX}/bin/llvm-dwarfutil.exe" )

# Import target "llvm-dwp" for configuration "MinSizeRel"
set_property(TARGET llvm-dwp APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-dwp PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-dwp.exe"
  )

list(APPEND _cmake_import_check_targets llvm-dwp )
list(APPEND _cmake_import_check_files_for_llvm-dwp "${_IMPORT_PREFIX}/bin/llvm-dwp.exe" )

# Import target "llvm-exegesis" for configuration "MinSizeRel"
set_property(TARGET llvm-exegesis APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-exegesis PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-exegesis.exe"
  )

list(APPEND _cmake_import_check_targets llvm-exegesis )
list(APPEND _cmake_import_check_files_for_llvm-exegesis "${_IMPORT_PREFIX}/bin/llvm-exegesis.exe" )

# Import target "LLVMExegesisX86" for configuration "MinSizeRel"
set_property(TARGET LLVMExegesisX86 APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMExegesisX86 PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMExegesisX86.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMX86CodeGen;LLVMX86AsmParser;LLVMX86Desc;LLVMX86Disassembler;LLVMX86Info;LLVMExegesis;LLVMCore;LLVMSupport;LLVMTargetParser;LLVMCodeGen;LLVMMC"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMExegesisX86.dll"
  )

list(APPEND _cmake_import_check_targets LLVMExegesisX86 )
list(APPEND _cmake_import_check_files_for_LLVMExegesisX86 "${_IMPORT_PREFIX}/lib/libLLVMExegesisX86.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMExegesisX86.dll" )

# Import target "LLVMExegesisAArch64" for configuration "MinSizeRel"
set_property(TARGET LLVMExegesisAArch64 APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMExegesisAArch64 PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMExegesisAArch64.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAArch64CodeGen;LLVMAArch64AsmParser;LLVMAArch64Desc;LLVMAArch64Disassembler;LLVMAArch64Info;LLVMAArch64Utils;LLVMExegesis;LLVMCore;LLVMSupport;LLVMMC"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMExegesisAArch64.dll"
  )

list(APPEND _cmake_import_check_targets LLVMExegesisAArch64 )
list(APPEND _cmake_import_check_files_for_LLVMExegesisAArch64 "${_IMPORT_PREFIX}/lib/libLLVMExegesisAArch64.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMExegesisAArch64.dll" )

# Import target "LLVMExegesis" for configuration "MinSizeRel"
set_property(TARGET LLVMExegesis APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(LLVMExegesis PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libLLVMExegesis.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMAnalysis;LLVMCodeGen;LLVMCore;LLVMExecutionEngine;LLVMGlobalISel;LLVMMC;LLVMMCA;LLVMMCDisassembler;LLVMMCJIT;LLVMMCParser;LLVMObject;LLVMObjectYAML;LLVMRuntimeDyld;LLVMSupport;LLVMTargetParser"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libLLVMExegesis.dll"
  )

list(APPEND _cmake_import_check_targets LLVMExegesis )
list(APPEND _cmake_import_check_files_for_LLVMExegesis "${_IMPORT_PREFIX}/lib/libLLVMExegesis.dll.a" "${_IMPORT_PREFIX}/bin/libLLVMExegesis.dll" )

# Import target "llvm-extract" for configuration "MinSizeRel"
set_property(TARGET llvm-extract APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-extract PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-extract.exe"
  )

list(APPEND _cmake_import_check_targets llvm-extract )
list(APPEND _cmake_import_check_files_for_llvm-extract "${_IMPORT_PREFIX}/bin/llvm-extract.exe" )

# Import target "llvm-gsymutil" for configuration "MinSizeRel"
set_property(TARGET llvm-gsymutil APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-gsymutil PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-gsymutil.exe"
  )

list(APPEND _cmake_import_check_targets llvm-gsymutil )
list(APPEND _cmake_import_check_files_for_llvm-gsymutil "${_IMPORT_PREFIX}/bin/llvm-gsymutil.exe" )

# Import target "llvm-ifs" for configuration "MinSizeRel"
set_property(TARGET llvm-ifs APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-ifs PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-ifs.exe"
  )

list(APPEND _cmake_import_check_targets llvm-ifs )
list(APPEND _cmake_import_check_files_for_llvm-ifs "${_IMPORT_PREFIX}/bin/llvm-ifs.exe" )

# Import target "llvm-jitlink-executor" for configuration "MinSizeRel"
set_property(TARGET llvm-jitlink-executor APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-jitlink-executor PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-jitlink-executor.exe"
  )

list(APPEND _cmake_import_check_targets llvm-jitlink-executor )
list(APPEND _cmake_import_check_files_for_llvm-jitlink-executor "${_IMPORT_PREFIX}/bin/llvm-jitlink-executor.exe" )

# Import target "llvm-jitlink" for configuration "MinSizeRel"
set_property(TARGET llvm-jitlink APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-jitlink PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-jitlink.exe"
  )

list(APPEND _cmake_import_check_targets llvm-jitlink )
list(APPEND _cmake_import_check_files_for_llvm-jitlink "${_IMPORT_PREFIX}/bin/llvm-jitlink.exe" )

# Import target "llvm-libtool-darwin" for configuration "MinSizeRel"
set_property(TARGET llvm-libtool-darwin APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-libtool-darwin PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-libtool-darwin.exe"
  )

list(APPEND _cmake_import_check_targets llvm-libtool-darwin )
list(APPEND _cmake_import_check_files_for_llvm-libtool-darwin "${_IMPORT_PREFIX}/bin/llvm-libtool-darwin.exe" )

# Import target "llvm-link" for configuration "MinSizeRel"
set_property(TARGET llvm-link APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-link PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-link.exe"
  )

list(APPEND _cmake_import_check_targets llvm-link )
list(APPEND _cmake_import_check_files_for_llvm-link "${_IMPORT_PREFIX}/bin/llvm-link.exe" )

# Import target "llvm-lipo" for configuration "MinSizeRel"
set_property(TARGET llvm-lipo APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-lipo PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-lipo.exe"
  )

list(APPEND _cmake_import_check_targets llvm-lipo )
list(APPEND _cmake_import_check_files_for_llvm-lipo "${_IMPORT_PREFIX}/bin/llvm-lipo.exe" )

# Import target "llvm-lto2" for configuration "MinSizeRel"
set_property(TARGET llvm-lto2 APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-lto2 PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-lto2.exe"
  )

list(APPEND _cmake_import_check_targets llvm-lto2 )
list(APPEND _cmake_import_check_files_for_llvm-lto2 "${_IMPORT_PREFIX}/bin/llvm-lto2.exe" )

# Import target "llvm-mc" for configuration "MinSizeRel"
set_property(TARGET llvm-mc APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-mc PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-mc.exe"
  )

list(APPEND _cmake_import_check_targets llvm-mc )
list(APPEND _cmake_import_check_files_for_llvm-mc "${_IMPORT_PREFIX}/bin/llvm-mc.exe" )

# Import target "llvm-mca" for configuration "MinSizeRel"
set_property(TARGET llvm-mca APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-mca PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-mca.exe"
  )

list(APPEND _cmake_import_check_targets llvm-mca )
list(APPEND _cmake_import_check_files_for_llvm-mca "${_IMPORT_PREFIX}/bin/llvm-mca.exe" )

# Import target "llvm-ml" for configuration "MinSizeRel"
set_property(TARGET llvm-ml APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-ml PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-ml.exe"
  )

list(APPEND _cmake_import_check_targets llvm-ml )
list(APPEND _cmake_import_check_files_for_llvm-ml "${_IMPORT_PREFIX}/bin/llvm-ml.exe" )

# Import target "llvm-modextract" for configuration "MinSizeRel"
set_property(TARGET llvm-modextract APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-modextract PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-modextract.exe"
  )

list(APPEND _cmake_import_check_targets llvm-modextract )
list(APPEND _cmake_import_check_files_for_llvm-modextract "${_IMPORT_PREFIX}/bin/llvm-modextract.exe" )

# Import target "llvm-mt" for configuration "MinSizeRel"
set_property(TARGET llvm-mt APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-mt PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-mt.exe"
  )

list(APPEND _cmake_import_check_targets llvm-mt )
list(APPEND _cmake_import_check_files_for_llvm-mt "${_IMPORT_PREFIX}/bin/llvm-mt.exe" )

# Import target "llvm-nm" for configuration "MinSizeRel"
set_property(TARGET llvm-nm APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-nm PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-nm.exe"
  )

list(APPEND _cmake_import_check_targets llvm-nm )
list(APPEND _cmake_import_check_files_for_llvm-nm "${_IMPORT_PREFIX}/bin/llvm-nm.exe" )

# Import target "llvm-objcopy" for configuration "MinSizeRel"
set_property(TARGET llvm-objcopy APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-objcopy PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-objcopy.exe"
  )

list(APPEND _cmake_import_check_targets llvm-objcopy )
list(APPEND _cmake_import_check_files_for_llvm-objcopy "${_IMPORT_PREFIX}/bin/llvm-objcopy.exe" )

# Import target "llvm-objdump" for configuration "MinSizeRel"
set_property(TARGET llvm-objdump APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-objdump PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-objdump.exe"
  )

list(APPEND _cmake_import_check_targets llvm-objdump )
list(APPEND _cmake_import_check_files_for_llvm-objdump "${_IMPORT_PREFIX}/bin/llvm-objdump.exe" )

# Import target "llvm-opt-report" for configuration "MinSizeRel"
set_property(TARGET llvm-opt-report APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-opt-report PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-opt-report.exe"
  )

list(APPEND _cmake_import_check_targets llvm-opt-report )
list(APPEND _cmake_import_check_files_for_llvm-opt-report "${_IMPORT_PREFIX}/bin/llvm-opt-report.exe" )

# Import target "llvm-pdbutil" for configuration "MinSizeRel"
set_property(TARGET llvm-pdbutil APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-pdbutil PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-pdbutil.exe"
  )

list(APPEND _cmake_import_check_targets llvm-pdbutil )
list(APPEND _cmake_import_check_files_for_llvm-pdbutil "${_IMPORT_PREFIX}/bin/llvm-pdbutil.exe" )

# Import target "llvm-profgen" for configuration "MinSizeRel"
set_property(TARGET llvm-profgen APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-profgen PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-profgen.exe"
  )

list(APPEND _cmake_import_check_targets llvm-profgen )
list(APPEND _cmake_import_check_files_for_llvm-profgen "${_IMPORT_PREFIX}/bin/llvm-profgen.exe" )

# Import target "llvm-rc" for configuration "MinSizeRel"
set_property(TARGET llvm-rc APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-rc PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-rc.exe"
  )

list(APPEND _cmake_import_check_targets llvm-rc )
list(APPEND _cmake_import_check_files_for_llvm-rc "${_IMPORT_PREFIX}/bin/llvm-rc.exe" )

# Import target "llvm-readobj" for configuration "MinSizeRel"
set_property(TARGET llvm-readobj APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-readobj PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-readobj.exe"
  )

list(APPEND _cmake_import_check_targets llvm-readobj )
list(APPEND _cmake_import_check_files_for_llvm-readobj "${_IMPORT_PREFIX}/bin/llvm-readobj.exe" )

# Import target "llvm-reduce" for configuration "MinSizeRel"
set_property(TARGET llvm-reduce APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-reduce PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-reduce.exe"
  )

list(APPEND _cmake_import_check_targets llvm-reduce )
list(APPEND _cmake_import_check_files_for_llvm-reduce "${_IMPORT_PREFIX}/bin/llvm-reduce.exe" )

# Import target "llvm-remark-size-diff" for configuration "MinSizeRel"
set_property(TARGET llvm-remark-size-diff APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-remark-size-diff PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-remark-size-diff.exe"
  )

list(APPEND _cmake_import_check_targets llvm-remark-size-diff )
list(APPEND _cmake_import_check_files_for_llvm-remark-size-diff "${_IMPORT_PREFIX}/bin/llvm-remark-size-diff.exe" )

# Import target "llvm-remarkutil" for configuration "MinSizeRel"
set_property(TARGET llvm-remarkutil APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-remarkutil PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-remarkutil.exe"
  )

list(APPEND _cmake_import_check_targets llvm-remarkutil )
list(APPEND _cmake_import_check_files_for_llvm-remarkutil "${_IMPORT_PREFIX}/bin/llvm-remarkutil.exe" )

# Import target "llvm-rtdyld" for configuration "MinSizeRel"
set_property(TARGET llvm-rtdyld APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-rtdyld PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-rtdyld.exe"
  )

list(APPEND _cmake_import_check_targets llvm-rtdyld )
list(APPEND _cmake_import_check_files_for_llvm-rtdyld "${_IMPORT_PREFIX}/bin/llvm-rtdyld.exe" )

# Import target "llvm-sim" for configuration "MinSizeRel"
set_property(TARGET llvm-sim APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-sim PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-sim.exe"
  )

list(APPEND _cmake_import_check_targets llvm-sim )
list(APPEND _cmake_import_check_files_for_llvm-sim "${_IMPORT_PREFIX}/bin/llvm-sim.exe" )

# Import target "llvm-size" for configuration "MinSizeRel"
set_property(TARGET llvm-size APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-size PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-size.exe"
  )

list(APPEND _cmake_import_check_targets llvm-size )
list(APPEND _cmake_import_check_files_for_llvm-size "${_IMPORT_PREFIX}/bin/llvm-size.exe" )

# Import target "llvm-split" for configuration "MinSizeRel"
set_property(TARGET llvm-split APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-split PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-split.exe"
  )

list(APPEND _cmake_import_check_targets llvm-split )
list(APPEND _cmake_import_check_files_for_llvm-split "${_IMPORT_PREFIX}/bin/llvm-split.exe" )

# Import target "llvm-stress" for configuration "MinSizeRel"
set_property(TARGET llvm-stress APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-stress PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-stress.exe"
  )

list(APPEND _cmake_import_check_targets llvm-stress )
list(APPEND _cmake_import_check_files_for_llvm-stress "${_IMPORT_PREFIX}/bin/llvm-stress.exe" )

# Import target "llvm-strings" for configuration "MinSizeRel"
set_property(TARGET llvm-strings APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-strings PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-strings.exe"
  )

list(APPEND _cmake_import_check_targets llvm-strings )
list(APPEND _cmake_import_check_files_for_llvm-strings "${_IMPORT_PREFIX}/bin/llvm-strings.exe" )

# Import target "llvm-symbolizer" for configuration "MinSizeRel"
set_property(TARGET llvm-symbolizer APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-symbolizer PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-symbolizer.exe"
  )

list(APPEND _cmake_import_check_targets llvm-symbolizer )
list(APPEND _cmake_import_check_files_for_llvm-symbolizer "${_IMPORT_PREFIX}/bin/llvm-symbolizer.exe" )

# Import target "llvm-tapi-diff" for configuration "MinSizeRel"
set_property(TARGET llvm-tapi-diff APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-tapi-diff PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-tapi-diff.exe"
  )

list(APPEND _cmake_import_check_targets llvm-tapi-diff )
list(APPEND _cmake_import_check_files_for_llvm-tapi-diff "${_IMPORT_PREFIX}/bin/llvm-tapi-diff.exe" )

# Import target "llvm-tli-checker" for configuration "MinSizeRel"
set_property(TARGET llvm-tli-checker APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-tli-checker PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-tli-checker.exe"
  )

list(APPEND _cmake_import_check_targets llvm-tli-checker )
list(APPEND _cmake_import_check_files_for_llvm-tli-checker "${_IMPORT_PREFIX}/bin/llvm-tli-checker.exe" )

# Import target "llvm-undname" for configuration "MinSizeRel"
set_property(TARGET llvm-undname APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-undname PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-undname.exe"
  )

list(APPEND _cmake_import_check_targets llvm-undname )
list(APPEND _cmake_import_check_files_for_llvm-undname "${_IMPORT_PREFIX}/bin/llvm-undname.exe" )

# Import target "llvm-xray" for configuration "MinSizeRel"
set_property(TARGET llvm-xray APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(llvm-xray PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/llvm-xray.exe"
  )

list(APPEND _cmake_import_check_targets llvm-xray )
list(APPEND _cmake_import_check_files_for_llvm-xray "${_IMPORT_PREFIX}/bin/llvm-xray.exe" )

# Import target "obj2yaml" for configuration "MinSizeRel"
set_property(TARGET obj2yaml APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(obj2yaml PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/obj2yaml.exe"
  )

list(APPEND _cmake_import_check_targets obj2yaml )
list(APPEND _cmake_import_check_files_for_obj2yaml "${_IMPORT_PREFIX}/bin/obj2yaml.exe" )

# Import target "opt" for configuration "MinSizeRel"
set_property(TARGET opt APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(opt PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/opt.exe"
  )

list(APPEND _cmake_import_check_targets opt )
list(APPEND _cmake_import_check_files_for_opt "${_IMPORT_PREFIX}/bin/opt.exe" )

# Import target "Remarks" for configuration "MinSizeRel"
set_property(TARGET Remarks APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(Remarks PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/libRemarks.dll.a"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "LLVMRemarks"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/libRemarks.dll"
  )

list(APPEND _cmake_import_check_targets Remarks )
list(APPEND _cmake_import_check_files_for_Remarks "${_IMPORT_PREFIX}/lib/libRemarks.dll.a" "${_IMPORT_PREFIX}/bin/libRemarks.dll" )

# Import target "sancov" for configuration "MinSizeRel"
set_property(TARGET sancov APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(sancov PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/sancov.exe"
  )

list(APPEND _cmake_import_check_targets sancov )
list(APPEND _cmake_import_check_files_for_sancov "${_IMPORT_PREFIX}/bin/sancov.exe" )

# Import target "sanstats" for configuration "MinSizeRel"
set_property(TARGET sanstats APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(sanstats PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/sanstats.exe"
  )

list(APPEND _cmake_import_check_targets sanstats )
list(APPEND _cmake_import_check_files_for_sanstats "${_IMPORT_PREFIX}/bin/sanstats.exe" )

# Import target "verify-uselistorder" for configuration "MinSizeRel"
set_property(TARGET verify-uselistorder APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(verify-uselistorder PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/verify-uselistorder.exe"
  )

list(APPEND _cmake_import_check_targets verify-uselistorder )
list(APPEND _cmake_import_check_files_for_verify-uselistorder "${_IMPORT_PREFIX}/bin/verify-uselistorder.exe" )

# Import target "yaml2obj" for configuration "MinSizeRel"
set_property(TARGET yaml2obj APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(yaml2obj PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/yaml2obj.exe"
  )

list(APPEND _cmake_import_check_targets yaml2obj )
list(APPEND _cmake_import_check_files_for_yaml2obj "${_IMPORT_PREFIX}/bin/yaml2obj.exe" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
