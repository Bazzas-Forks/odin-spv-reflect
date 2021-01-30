package spirv_reflect

foreign import "spirv_reflect.lib"

import _c "core:c"

SpvSourceLanguage :: enum i32 {
    SpvSourceLanguageUnknown = 0,
    SpvSourceLanguageESSL = 1,
    SpvSourceLanguageGLSL = 2,
    SpvSourceLanguageOpenCL_C = 3,
    SpvSourceLanguageOpenCL_CPP = 4,
    SpvSourceLanguageHLSL = 5,
    SpvSourceLanguageMax = 0x7fffffff,
}

SpvExecutionModel :: enum i32 {
    SpvExecutionModelVertex = 0,
    SpvExecutionModelTessellationControl = 1,
    SpvExecutionModelTessellationEvaluation = 2,
    SpvExecutionModelGeometry = 3,
    SpvExecutionModelFragment = 4,
    SpvExecutionModelGLCompute = 5,
    SpvExecutionModelKernel = 6,
    SpvExecutionModelTaskNV = 5267,
    SpvExecutionModelMeshNV = 5268,
    SpvExecutionModelRayGenerationKHR = 5313,
    SpvExecutionModelRayGenerationNV = 5313,
    SpvExecutionModelIntersectionKHR = 5314,
    SpvExecutionModelIntersectionNV = 5314,
    SpvExecutionModelAnyHitKHR = 5315,
    SpvExecutionModelAnyHitNV = 5315,
    SpvExecutionModelClosestHitKHR = 5316,
    SpvExecutionModelClosestHitNV = 5316,
    SpvExecutionModelMissKHR = 5317,
    SpvExecutionModelMissNV = 5317,
    SpvExecutionModelCallableKHR = 5318,
    SpvExecutionModelCallableNV = 5318,
    SpvExecutionModelMax = 0x7fffffff,
}

SpvBuiltIn :: enum i32 {
    SpvBuiltInPosition = 0,
    SpvBuiltInPointSize = 1,
    SpvBuiltInClipDistance = 3,
    SpvBuiltInCullDistance = 4,
    SpvBuiltInVertexId = 5,
    SpvBuiltInInstanceId = 6,
    SpvBuiltInPrimitiveId = 7,
    SpvBuiltInInvocationId = 8,
    SpvBuiltInLayer = 9,
    SpvBuiltInViewportIndex = 10,
    SpvBuiltInTessLevelOuter = 11,
    SpvBuiltInTessLevelInner = 12,
    SpvBuiltInTessCoord = 13,
    SpvBuiltInPatchVertices = 14,
    SpvBuiltInFragCoord = 15,
    SpvBuiltInPointCoord = 16,
    SpvBuiltInFrontFacing = 17,
    SpvBuiltInSampleId = 18,
    SpvBuiltInSamplePosition = 19,
    SpvBuiltInSampleMask = 20,
    SpvBuiltInFragDepth = 22,
    SpvBuiltInHelperInvocation = 23,
    SpvBuiltInNumWorkgroups = 24,
    SpvBuiltInWorkgroupSize = 25,
    SpvBuiltInWorkgroupId = 26,
    SpvBuiltInLocalInvocationId = 27,
    SpvBuiltInGlobalInvocationId = 28,
    SpvBuiltInLocalInvocationIndex = 29,
    SpvBuiltInWorkDim = 30,
    SpvBuiltInGlobalSize = 31,
    SpvBuiltInEnqueuedWorkgroupSize = 32,
    SpvBuiltInGlobalOffset = 33,
    SpvBuiltInGlobalLinearId = 34,
    SpvBuiltInSubgroupSize = 36,
    SpvBuiltInSubgroupMaxSize = 37,
    SpvBuiltInNumSubgroups = 38,
    SpvBuiltInNumEnqueuedSubgroups = 39,
    SpvBuiltInSubgroupId = 40,
    SpvBuiltInSubgroupLocalInvocationId = 41,
    SpvBuiltInVertexIndex = 42,
    SpvBuiltInInstanceIndex = 43,
    SpvBuiltInSubgroupEqMask = 4416,
    SpvBuiltInSubgroupEqMaskKHR = 4416,
    SpvBuiltInSubgroupGeMask = 4417,
    SpvBuiltInSubgroupGeMaskKHR = 4417,
    SpvBuiltInSubgroupGtMask = 4418,
    SpvBuiltInSubgroupGtMaskKHR = 4418,
    SpvBuiltInSubgroupLeMask = 4419,
    SpvBuiltInSubgroupLeMaskKHR = 4419,
    SpvBuiltInSubgroupLtMask = 4420,
    SpvBuiltInSubgroupLtMaskKHR = 4420,
    SpvBuiltInBaseVertex = 4424,
    SpvBuiltInBaseInstance = 4425,
    SpvBuiltInDrawIndex = 4426,
    SpvBuiltInPrimitiveShadingRateKHR = 4432,
    SpvBuiltInDeviceIndex = 4438,
    SpvBuiltInViewIndex = 4440,
    SpvBuiltInShadingRateKHR = 4444,
    SpvBuiltInBaryCoordNoPerspAMD = 4992,
    SpvBuiltInBaryCoordNoPerspCentroidAMD = 4993,
    SpvBuiltInBaryCoordNoPerspSampleAMD = 4994,
    SpvBuiltInBaryCoordSmoothAMD = 4995,
    SpvBuiltInBaryCoordSmoothCentroidAMD = 4996,
    SpvBuiltInBaryCoordSmoothSampleAMD = 4997,
    SpvBuiltInBaryCoordPullModelAMD = 4998,
    SpvBuiltInFragStencilRefEXT = 5014,
    SpvBuiltInViewportMaskNV = 5253,
    SpvBuiltInSecondaryPositionNV = 5257,
    SpvBuiltInSecondaryViewportMaskNV = 5258,
    SpvBuiltInPositionPerViewNV = 5261,
    SpvBuiltInViewportMaskPerViewNV = 5262,
    SpvBuiltInFullyCoveredEXT = 5264,
    SpvBuiltInTaskCountNV = 5274,
    SpvBuiltInPrimitiveCountNV = 5275,
    SpvBuiltInPrimitiveIndicesNV = 5276,
    SpvBuiltInClipDistancePerViewNV = 5277,
    SpvBuiltInCullDistancePerViewNV = 5278,
    SpvBuiltInLayerPerViewNV = 5279,
    SpvBuiltInMeshViewCountNV = 5280,
    SpvBuiltInMeshViewIndicesNV = 5281,
    SpvBuiltInBaryCoordNV = 5286,
    SpvBuiltInBaryCoordNoPerspNV = 5287,
    SpvBuiltInFragSizeEXT = 5292,
    SpvBuiltInFragmentSizeNV = 5292,
    SpvBuiltInFragInvocationCountEXT = 5293,
    SpvBuiltInInvocationsPerPixelNV = 5293,
    SpvBuiltInLaunchIdKHR = 5319,
    SpvBuiltInLaunchIdNV = 5319,
    SpvBuiltInLaunchSizeKHR = 5320,
    SpvBuiltInLaunchSizeNV = 5320,
    SpvBuiltInWorldRayOriginKHR = 5321,
    SpvBuiltInWorldRayOriginNV = 5321,
    SpvBuiltInWorldRayDirectionKHR = 5322,
    SpvBuiltInWorldRayDirectionNV = 5322,
    SpvBuiltInObjectRayOriginKHR = 5323,
    SpvBuiltInObjectRayOriginNV = 5323,
    SpvBuiltInObjectRayDirectionKHR = 5324,
    SpvBuiltInObjectRayDirectionNV = 5324,
    SpvBuiltInRayTminKHR = 5325,
    SpvBuiltInRayTminNV = 5325,
    SpvBuiltInRayTmaxKHR = 5326,
    SpvBuiltInRayTmaxNV = 5326,
    SpvBuiltInInstanceCustomIndexKHR = 5327,
    SpvBuiltInInstanceCustomIndexNV = 5327,
    SpvBuiltInObjectToWorldKHR = 5330,
    SpvBuiltInObjectToWorldNV = 5330,
    SpvBuiltInWorldToObjectKHR = 5331,
    SpvBuiltInWorldToObjectNV = 5331,
    SpvBuiltInHitTNV = 5332,
    SpvBuiltInHitKindKHR = 5333,
    SpvBuiltInHitKindNV = 5333,
    SpvBuiltInIncomingRayFlagsKHR = 5351,
    SpvBuiltInIncomingRayFlagsNV = 5351,
    SpvBuiltInRayGeometryIndexKHR = 5352,
    SpvBuiltInWarpsPerSMNV = 5374,
    SpvBuiltInSMCountNV = 5375,
    SpvBuiltInWarpIDNV = 5376,
    SpvBuiltInSMIDNV = 5377,
    SpvBuiltInMax = 0x7fffffff,
}

SpvStorageClass :: enum i32 {
    SpvStorageClassUniformConstant = 0,
    SpvStorageClassInput = 1,
    SpvStorageClassUniform = 2,
    SpvStorageClassOutput = 3,
    SpvStorageClassWorkgroup = 4,
    SpvStorageClassCrossWorkgroup = 5,
    SpvStorageClassPrivate = 6,
    SpvStorageClassFunction = 7,
    SpvStorageClassGeneric = 8,
    SpvStorageClassPushConstant = 9,
    SpvStorageClassAtomicCounter = 10,
    SpvStorageClassImage = 11,
    SpvStorageClassStorageBuffer = 12,
    SpvStorageClassCallableDataKHR = 5328,
    SpvStorageClassCallableDataNV = 5328,
    SpvStorageClassIncomingCallableDataKHR = 5329,
    SpvStorageClassIncomingCallableDataNV = 5329,
    SpvStorageClassRayPayloadKHR = 5338,
    SpvStorageClassRayPayloadNV = 5338,
    SpvStorageClassHitAttributeKHR = 5339,
    SpvStorageClassHitAttributeNV = 5339,
    SpvStorageClassIncomingRayPayloadKHR = 5342,
    SpvStorageClassIncomingRayPayloadNV = 5342,
    SpvStorageClassShaderRecordBufferKHR = 5343,
    SpvStorageClassShaderRecordBufferNV = 5343,
    SpvStorageClassPhysicalStorageBuffer = 5349,
    SpvStorageClassPhysicalStorageBufferEXT = 5349,
    SpvStorageClassCodeSectionINTEL = 5605,
    SpvStorageClassMax = 0x7fffffff,
}

SpvOp :: enum i32 {
    SpvOpNop = 0,
    SpvOpUndef = 1,
    SpvOpSourceContinued = 2,
    SpvOpSource = 3,
    SpvOpSourceExtension = 4,
    SpvOpName = 5,
    SpvOpMemberName = 6,
    SpvOpString = 7,
    SpvOpLine = 8,
    SpvOpExtension = 10,
    SpvOpExtInstImport = 11,
    SpvOpExtInst = 12,
    SpvOpMemoryModel = 14,
    SpvOpEntryPoint = 15,
    SpvOpExecutionMode = 16,
    SpvOpCapability = 17,
    SpvOpTypeVoid = 19,
    SpvOpTypeBool = 20,
    SpvOpTypeInt = 21,
    SpvOpTypeFloat = 22,
    SpvOpTypeVector = 23,
    SpvOpTypeMatrix = 24,
    SpvOpTypeImage = 25,
    SpvOpTypeSampler = 26,
    SpvOpTypeSampledImage = 27,
    SpvOpTypeArray = 28,
    SpvOpTypeRuntimeArray = 29,
    SpvOpTypeStruct = 30,
    SpvOpTypeOpaque = 31,
    SpvOpTypePointer = 32,
    SpvOpTypeFunction = 33,
    SpvOpTypeEvent = 34,
    SpvOpTypeDeviceEvent = 35,
    SpvOpTypeReserveId = 36,
    SpvOpTypeQueue = 37,
    SpvOpTypePipe = 38,
    SpvOpTypeForwardPointer = 39,
    SpvOpConstantTrue = 41,
    SpvOpConstantFalse = 42,
    SpvOpConstant = 43,
    SpvOpConstantComposite = 44,
    SpvOpConstantSampler = 45,
    SpvOpConstantNull = 46,
    SpvOpSpecConstantTrue = 48,
    SpvOpSpecConstantFalse = 49,
    SpvOpSpecConstant = 50,
    SpvOpSpecConstantComposite = 51,
    SpvOpSpecConstantOp = 52,
    SpvOpFunction = 54,
    SpvOpFunctionParameter = 55,
    SpvOpFunctionEnd = 56,
    SpvOpFunctionCall = 57,
    SpvOpVariable = 59,
    SpvOpImageTexelPointer = 60,
    SpvOpLoad = 61,
    SpvOpStore = 62,
    SpvOpCopyMemory = 63,
    SpvOpCopyMemorySized = 64,
    SpvOpAccessChain = 65,
    SpvOpInBoundsAccessChain = 66,
    SpvOpPtrAccessChain = 67,
    SpvOpArrayLength = 68,
    SpvOpGenericPtrMemSemantics = 69,
    SpvOpInBoundsPtrAccessChain = 70,
    SpvOpDecorate = 71,
    SpvOpMemberDecorate = 72,
    SpvOpDecorationGroup = 73,
    SpvOpGroupDecorate = 74,
    SpvOpGroupMemberDecorate = 75,
    SpvOpVectorExtractDynamic = 77,
    SpvOpVectorInsertDynamic = 78,
    SpvOpVectorShuffle = 79,
    SpvOpCompositeConstruct = 80,
    SpvOpCompositeExtract = 81,
    SpvOpCompositeInsert = 82,
    SpvOpCopyObject = 83,
    SpvOpTranspose = 84,
    SpvOpSampledImage = 86,
    SpvOpImageSampleImplicitLod = 87,
    SpvOpImageSampleExplicitLod = 88,
    SpvOpImageSampleDrefImplicitLod = 89,
    SpvOpImageSampleDrefExplicitLod = 90,
    SpvOpImageSampleProjImplicitLod = 91,
    SpvOpImageSampleProjExplicitLod = 92,
    SpvOpImageSampleProjDrefImplicitLod = 93,
    SpvOpImageSampleProjDrefExplicitLod = 94,
    SpvOpImageFetch = 95,
    SpvOpImageGather = 96,
    SpvOpImageDrefGather = 97,
    SpvOpImageRead = 98,
    SpvOpImageWrite = 99,
    SpvOpImage = 100,
    SpvOpImageQueryFormat = 101,
    SpvOpImageQueryOrder = 102,
    SpvOpImageQuerySizeLod = 103,
    SpvOpImageQuerySize = 104,
    SpvOpImageQueryLod = 105,
    SpvOpImageQueryLevels = 106,
    SpvOpImageQuerySamples = 107,
    SpvOpConvertFToU = 109,
    SpvOpConvertFToS = 110,
    SpvOpConvertSToF = 111,
    SpvOpConvertUToF = 112,
    SpvOpUConvert = 113,
    SpvOpSConvert = 114,
    SpvOpFConvert = 115,
    SpvOpQuantizeToF16 = 116,
    SpvOpConvertPtrToU = 117,
    SpvOpSatConvertSToU = 118,
    SpvOpSatConvertUToS = 119,
    SpvOpConvertUToPtr = 120,
    SpvOpPtrCastToGeneric = 121,
    SpvOpGenericCastToPtr = 122,
    SpvOpGenericCastToPtrExplicit = 123,
    SpvOpBitcast = 124,
    SpvOpSNegate = 126,
    SpvOpFNegate = 127,
    SpvOpIAdd = 128,
    SpvOpFAdd = 129,
    SpvOpISub = 130,
    SpvOpFSub = 131,
    SpvOpIMul = 132,
    SpvOpFMul = 133,
    SpvOpUDiv = 134,
    SpvOpSDiv = 135,
    SpvOpFDiv = 136,
    SpvOpUMod = 137,
    SpvOpSRem = 138,
    SpvOpSMod = 139,
    SpvOpFRem = 140,
    SpvOpFMod = 141,
    SpvOpVectorTimesScalar = 142,
    SpvOpMatrixTimesScalar = 143,
    SpvOpVectorTimesMatrix = 144,
    SpvOpMatrixTimesVector = 145,
    SpvOpMatrixTimesMatrix = 146,
    SpvOpOuterProduct = 147,
    SpvOpDot = 148,
    SpvOpIAddCarry = 149,
    SpvOpISubBorrow = 150,
    SpvOpUMulExtended = 151,
    SpvOpSMulExtended = 152,
    SpvOpAny = 154,
    SpvOpAll = 155,
    SpvOpIsNan = 156,
    SpvOpIsInf = 157,
    SpvOpIsFinite = 158,
    SpvOpIsNormal = 159,
    SpvOpSignBitSet = 160,
    SpvOpLessOrGreater = 161,
    SpvOpOrdered = 162,
    SpvOpUnordered = 163,
    SpvOpLogicalEqual = 164,
    SpvOpLogicalNotEqual = 165,
    SpvOpLogicalOr = 166,
    SpvOpLogicalAnd = 167,
    SpvOpLogicalNot = 168,
    SpvOpSelect = 169,
    SpvOpIEqual = 170,
    SpvOpINotEqual = 171,
    SpvOpUGreaterThan = 172,
    SpvOpSGreaterThan = 173,
    SpvOpUGreaterThanEqual = 174,
    SpvOpSGreaterThanEqual = 175,
    SpvOpULessThan = 176,
    SpvOpSLessThan = 177,
    SpvOpULessThanEqual = 178,
    SpvOpSLessThanEqual = 179,
    SpvOpFOrdEqual = 180,
    SpvOpFUnordEqual = 181,
    SpvOpFOrdNotEqual = 182,
    SpvOpFUnordNotEqual = 183,
    SpvOpFOrdLessThan = 184,
    SpvOpFUnordLessThan = 185,
    SpvOpFOrdGreaterThan = 186,
    SpvOpFUnordGreaterThan = 187,
    SpvOpFOrdLessThanEqual = 188,
    SpvOpFUnordLessThanEqual = 189,
    SpvOpFOrdGreaterThanEqual = 190,
    SpvOpFUnordGreaterThanEqual = 191,
    SpvOpShiftRightLogical = 194,
    SpvOpShiftRightArithmetic = 195,
    SpvOpShiftLeftLogical = 196,
    SpvOpBitwiseOr = 197,
    SpvOpBitwiseXor = 198,
    SpvOpBitwiseAnd = 199,
    SpvOpNot = 200,
    SpvOpBitFieldInsert = 201,
    SpvOpBitFieldSExtract = 202,
    SpvOpBitFieldUExtract = 203,
    SpvOpBitReverse = 204,
    SpvOpBitCount = 205,
    SpvOpDPdx = 207,
    SpvOpDPdy = 208,
    SpvOpFwidth = 209,
    SpvOpDPdxFine = 210,
    SpvOpDPdyFine = 211,
    SpvOpFwidthFine = 212,
    SpvOpDPdxCoarse = 213,
    SpvOpDPdyCoarse = 214,
    SpvOpFwidthCoarse = 215,
    SpvOpEmitVertex = 218,
    SpvOpEndPrimitive = 219,
    SpvOpEmitStreamVertex = 220,
    SpvOpEndStreamPrimitive = 221,
    SpvOpControlBarrier = 224,
    SpvOpMemoryBarrier = 225,
    SpvOpAtomicLoad = 227,
    SpvOpAtomicStore = 228,
    SpvOpAtomicExchange = 229,
    SpvOpAtomicCompareExchange = 230,
    SpvOpAtomicCompareExchangeWeak = 231,
    SpvOpAtomicIIncrement = 232,
    SpvOpAtomicIDecrement = 233,
    SpvOpAtomicIAdd = 234,
    SpvOpAtomicISub = 235,
    SpvOpAtomicSMin = 236,
    SpvOpAtomicUMin = 237,
    SpvOpAtomicSMax = 238,
    SpvOpAtomicUMax = 239,
    SpvOpAtomicAnd = 240,
    SpvOpAtomicOr = 241,
    SpvOpAtomicXor = 242,
    SpvOpPhi = 245,
    SpvOpLoopMerge = 246,
    SpvOpSelectionMerge = 247,
    SpvOpLabel = 248,
    SpvOpBranch = 249,
    SpvOpBranchConditional = 250,
    SpvOpSwitch = 251,
    SpvOpKill = 252,
    SpvOpReturn = 253,
    SpvOpReturnValue = 254,
    SpvOpUnreachable = 255,
    SpvOpLifetimeStart = 256,
    SpvOpLifetimeStop = 257,
    SpvOpGroupAsyncCopy = 259,
    SpvOpGroupWaitEvents = 260,
    SpvOpGroupAll = 261,
    SpvOpGroupAny = 262,
    SpvOpGroupBroadcast = 263,
    SpvOpGroupIAdd = 264,
    SpvOpGroupFAdd = 265,
    SpvOpGroupFMin = 266,
    SpvOpGroupUMin = 267,
    SpvOpGroupSMin = 268,
    SpvOpGroupFMax = 269,
    SpvOpGroupUMax = 270,
    SpvOpGroupSMax = 271,
    SpvOpReadPipe = 274,
    SpvOpWritePipe = 275,
    SpvOpReservedReadPipe = 276,
    SpvOpReservedWritePipe = 277,
    SpvOpReserveReadPipePackets = 278,
    SpvOpReserveWritePipePackets = 279,
    SpvOpCommitReadPipe = 280,
    SpvOpCommitWritePipe = 281,
    SpvOpIsValidReserveId = 282,
    SpvOpGetNumPipePackets = 283,
    SpvOpGetMaxPipePackets = 284,
    SpvOpGroupReserveReadPipePackets = 285,
    SpvOpGroupReserveWritePipePackets = 286,
    SpvOpGroupCommitReadPipe = 287,
    SpvOpGroupCommitWritePipe = 288,
    SpvOpEnqueueMarker = 291,
    SpvOpEnqueueKernel = 292,
    SpvOpGetKernelNDrangeSubGroupCount = 293,
    SpvOpGetKernelNDrangeMaxSubGroupSize = 294,
    SpvOpGetKernelWorkGroupSize = 295,
    SpvOpGetKernelPreferredWorkGroupSizeMultiple = 296,
    SpvOpRetainEvent = 297,
    SpvOpReleaseEvent = 298,
    SpvOpCreateUserEvent = 299,
    SpvOpIsValidEvent = 300,
    SpvOpSetUserEventStatus = 301,
    SpvOpCaptureEventProfilingInfo = 302,
    SpvOpGetDefaultQueue = 303,
    SpvOpBuildNDRange = 304,
    SpvOpImageSparseSampleImplicitLod = 305,
    SpvOpImageSparseSampleExplicitLod = 306,
    SpvOpImageSparseSampleDrefImplicitLod = 307,
    SpvOpImageSparseSampleDrefExplicitLod = 308,
    SpvOpImageSparseSampleProjImplicitLod = 309,
    SpvOpImageSparseSampleProjExplicitLod = 310,
    SpvOpImageSparseSampleProjDrefImplicitLod = 311,
    SpvOpImageSparseSampleProjDrefExplicitLod = 312,
    SpvOpImageSparseFetch = 313,
    SpvOpImageSparseGather = 314,
    SpvOpImageSparseDrefGather = 315,
    SpvOpImageSparseTexelsResident = 316,
    SpvOpNoLine = 317,
    SpvOpAtomicFlagTestAndSet = 318,
    SpvOpAtomicFlagClear = 319,
    SpvOpImageSparseRead = 320,
    SpvOpSizeOf = 321,
    SpvOpTypePipeStorage = 322,
    SpvOpConstantPipeStorage = 323,
    SpvOpCreatePipeFromPipeStorage = 324,
    SpvOpGetKernelLocalSizeForSubgroupCount = 325,
    SpvOpGetKernelMaxNumSubgroups = 326,
    SpvOpTypeNamedBarrier = 327,
    SpvOpNamedBarrierInitialize = 328,
    SpvOpMemoryNamedBarrier = 329,
    SpvOpModuleProcessed = 330,
    SpvOpExecutionModeId = 331,
    SpvOpDecorateId = 332,
    SpvOpGroupNonUniformElect = 333,
    SpvOpGroupNonUniformAll = 334,
    SpvOpGroupNonUniformAny = 335,
    SpvOpGroupNonUniformAllEqual = 336,
    SpvOpGroupNonUniformBroadcast = 337,
    SpvOpGroupNonUniformBroadcastFirst = 338,
    SpvOpGroupNonUniformBallot = 339,
    SpvOpGroupNonUniformInverseBallot = 340,
    SpvOpGroupNonUniformBallotBitExtract = 341,
    SpvOpGroupNonUniformBallotBitCount = 342,
    SpvOpGroupNonUniformBallotFindLSB = 343,
    SpvOpGroupNonUniformBallotFindMSB = 344,
    SpvOpGroupNonUniformShuffle = 345,
    SpvOpGroupNonUniformShuffleXor = 346,
    SpvOpGroupNonUniformShuffleUp = 347,
    SpvOpGroupNonUniformShuffleDown = 348,
    SpvOpGroupNonUniformIAdd = 349,
    SpvOpGroupNonUniformFAdd = 350,
    SpvOpGroupNonUniformIMul = 351,
    SpvOpGroupNonUniformFMul = 352,
    SpvOpGroupNonUniformSMin = 353,
    SpvOpGroupNonUniformUMin = 354,
    SpvOpGroupNonUniformFMin = 355,
    SpvOpGroupNonUniformSMax = 356,
    SpvOpGroupNonUniformUMax = 357,
    SpvOpGroupNonUniformFMax = 358,
    SpvOpGroupNonUniformBitwiseAnd = 359,
    SpvOpGroupNonUniformBitwiseOr = 360,
    SpvOpGroupNonUniformBitwiseXor = 361,
    SpvOpGroupNonUniformLogicalAnd = 362,
    SpvOpGroupNonUniformLogicalOr = 363,
    SpvOpGroupNonUniformLogicalXor = 364,
    SpvOpGroupNonUniformQuadBroadcast = 365,
    SpvOpGroupNonUniformQuadSwap = 366,
    SpvOpCopyLogical = 400,
    SpvOpPtrEqual = 401,
    SpvOpPtrNotEqual = 402,
    SpvOpPtrDiff = 403,
    SpvOpTerminateInvocation = 4416,
    SpvOpSubgroupBallotKHR = 4421,
    SpvOpSubgroupFirstInvocationKHR = 4422,
    SpvOpSubgroupAllKHR = 4428,
    SpvOpSubgroupAnyKHR = 4429,
    SpvOpSubgroupAllEqualKHR = 4430,
    SpvOpSubgroupReadInvocationKHR = 4432,
    SpvOpTraceRayKHR = 4445,
    SpvOpExecuteCallableKHR = 4446,
    SpvOpConvertUToAccelerationStructureKHR = 4447,
    SpvOpIgnoreIntersectionKHR = 4448,
    SpvOpTerminateRayKHR = 4449,
    SpvOpTypeRayQueryKHR = 4472,
    SpvOpRayQueryInitializeKHR = 4473,
    SpvOpRayQueryTerminateKHR = 4474,
    SpvOpRayQueryGenerateIntersectionKHR = 4475,
    SpvOpRayQueryConfirmIntersectionKHR = 4476,
    SpvOpRayQueryProceedKHR = 4477,
    SpvOpRayQueryGetIntersectionTypeKHR = 4479,
    SpvOpGroupIAddNonUniformAMD = 5000,
    SpvOpGroupFAddNonUniformAMD = 5001,
    SpvOpGroupFMinNonUniformAMD = 5002,
    SpvOpGroupUMinNonUniformAMD = 5003,
    SpvOpGroupSMinNonUniformAMD = 5004,
    SpvOpGroupFMaxNonUniformAMD = 5005,
    SpvOpGroupUMaxNonUniformAMD = 5006,
    SpvOpGroupSMaxNonUniformAMD = 5007,
    SpvOpFragmentMaskFetchAMD = 5011,
    SpvOpFragmentFetchAMD = 5012,
    SpvOpReadClockKHR = 5056,
    SpvOpImageSampleFootprintNV = 5283,
    SpvOpGroupNonUniformPartitionNV = 5296,
    SpvOpWritePackedPrimitiveIndices4x8NV = 5299,
    SpvOpReportIntersectionKHR = 5334,
    SpvOpReportIntersectionNV = 5334,
    SpvOpIgnoreIntersectionNV = 5335,
    SpvOpTerminateRayNV = 5336,
    SpvOpTraceNV = 5337,
    SpvOpTypeAccelerationStructureKHR = 5341,
    SpvOpTypeAccelerationStructureNV = 5341,
    SpvOpExecuteCallableNV = 5344,
    SpvOpTypeCooperativeMatrixNV = 5358,
    SpvOpCooperativeMatrixLoadNV = 5359,
    SpvOpCooperativeMatrixStoreNV = 5360,
    SpvOpCooperativeMatrixMulAddNV = 5361,
    SpvOpCooperativeMatrixLengthNV = 5362,
    SpvOpBeginInvocationInterlockEXT = 5364,
    SpvOpEndInvocationInterlockEXT = 5365,
    SpvOpDemoteToHelperInvocationEXT = 5380,
    SpvOpIsHelperInvocationEXT = 5381,
    SpvOpSubgroupShuffleINTEL = 5571,
    SpvOpSubgroupShuffleDownINTEL = 5572,
    SpvOpSubgroupShuffleUpINTEL = 5573,
    SpvOpSubgroupShuffleXorINTEL = 5574,
    SpvOpSubgroupBlockReadINTEL = 5575,
    SpvOpSubgroupBlockWriteINTEL = 5576,
    SpvOpSubgroupImageBlockReadINTEL = 5577,
    SpvOpSubgroupImageBlockWriteINTEL = 5578,
    SpvOpSubgroupImageMediaBlockReadINTEL = 5580,
    SpvOpSubgroupImageMediaBlockWriteINTEL = 5581,
    SpvOpUCountLeadingZerosINTEL = 5585,
    SpvOpUCountTrailingZerosINTEL = 5586,
    SpvOpAbsISubINTEL = 5587,
    SpvOpAbsUSubINTEL = 5588,
    SpvOpIAddSatINTEL = 5589,
    SpvOpUAddSatINTEL = 5590,
    SpvOpIAverageINTEL = 5591,
    SpvOpUAverageINTEL = 5592,
    SpvOpIAverageRoundedINTEL = 5593,
    SpvOpUAverageRoundedINTEL = 5594,
    SpvOpISubSatINTEL = 5595,
    SpvOpUSubSatINTEL = 5596,
    SpvOpIMul32x16INTEL = 5597,
    SpvOpUMul32x16INTEL = 5598,
    SpvOpFunctionPointerINTEL = 5600,
    SpvOpFunctionPointerCallINTEL = 5601,
    SpvOpDecorateString = 5632,
    SpvOpDecorateStringGOOGLE = 5632,
    SpvOpMemberDecorateString = 5633,
    SpvOpMemberDecorateStringGOOGLE = 5633,
    SpvOpVmeImageINTEL = 5699,
    SpvOpTypeVmeImageINTEL = 5700,
    SpvOpTypeAvcImePayloadINTEL = 5701,
    SpvOpTypeAvcRefPayloadINTEL = 5702,
    SpvOpTypeAvcSicPayloadINTEL = 5703,
    SpvOpTypeAvcMcePayloadINTEL = 5704,
    SpvOpTypeAvcMceResultINTEL = 5705,
    SpvOpTypeAvcImeResultINTEL = 5706,
    SpvOpTypeAvcImeResultSingleReferenceStreamoutINTEL = 5707,
    SpvOpTypeAvcImeResultDualReferenceStreamoutINTEL = 5708,
    SpvOpTypeAvcImeSingleReferenceStreaminINTEL = 5709,
    SpvOpTypeAvcImeDualReferenceStreaminINTEL = 5710,
    SpvOpTypeAvcRefResultINTEL = 5711,
    SpvOpTypeAvcSicResultINTEL = 5712,
    SpvOpSubgroupAvcMceGetDefaultInterBaseMultiReferencePenaltyINTEL = 5713,
    SpvOpSubgroupAvcMceSetInterBaseMultiReferencePenaltyINTEL = 5714,
    SpvOpSubgroupAvcMceGetDefaultInterShapePenaltyINTEL = 5715,
    SpvOpSubgroupAvcMceSetInterShapePenaltyINTEL = 5716,
    SpvOpSubgroupAvcMceGetDefaultInterDirectionPenaltyINTEL = 5717,
    SpvOpSubgroupAvcMceSetInterDirectionPenaltyINTEL = 5718,
    SpvOpSubgroupAvcMceGetDefaultIntraLumaShapePenaltyINTEL = 5719,
    SpvOpSubgroupAvcMceGetDefaultInterMotionVectorCostTableINTEL = 5720,
    SpvOpSubgroupAvcMceGetDefaultHighPenaltyCostTableINTEL = 5721,
    SpvOpSubgroupAvcMceGetDefaultMediumPenaltyCostTableINTEL = 5722,
    SpvOpSubgroupAvcMceGetDefaultLowPenaltyCostTableINTEL = 5723,
    SpvOpSubgroupAvcMceSetMotionVectorCostFunctionINTEL = 5724,
    SpvOpSubgroupAvcMceGetDefaultIntraLumaModePenaltyINTEL = 5725,
    SpvOpSubgroupAvcMceGetDefaultNonDcLumaIntraPenaltyINTEL = 5726,
    SpvOpSubgroupAvcMceGetDefaultIntraChromaModeBasePenaltyINTEL = 5727,
    SpvOpSubgroupAvcMceSetAcOnlyHaarINTEL = 5728,
    SpvOpSubgroupAvcMceSetSourceInterlacedFieldPolarityINTEL = 5729,
    SpvOpSubgroupAvcMceSetSingleReferenceInterlacedFieldPolarityINTEL = 5730,
    SpvOpSubgroupAvcMceSetDualReferenceInterlacedFieldPolaritiesINTEL = 5731,
    SpvOpSubgroupAvcMceConvertToImePayloadINTEL = 5732,
    SpvOpSubgroupAvcMceConvertToImeResultINTEL = 5733,
    SpvOpSubgroupAvcMceConvertToRefPayloadINTEL = 5734,
    SpvOpSubgroupAvcMceConvertToRefResultINTEL = 5735,
    SpvOpSubgroupAvcMceConvertToSicPayloadINTEL = 5736,
    SpvOpSubgroupAvcMceConvertToSicResultINTEL = 5737,
    SpvOpSubgroupAvcMceGetMotionVectorsINTEL = 5738,
    SpvOpSubgroupAvcMceGetInterDistortionsINTEL = 5739,
    SpvOpSubgroupAvcMceGetBestInterDistortionsINTEL = 5740,
    SpvOpSubgroupAvcMceGetInterMajorShapeINTEL = 5741,
    SpvOpSubgroupAvcMceGetInterMinorShapeINTEL = 5742,
    SpvOpSubgroupAvcMceGetInterDirectionsINTEL = 5743,
    SpvOpSubgroupAvcMceGetInterMotionVectorCountINTEL = 5744,
    SpvOpSubgroupAvcMceGetInterReferenceIdsINTEL = 5745,
    SpvOpSubgroupAvcMceGetInterReferenceInterlacedFieldPolaritiesINTEL = 5746,
    SpvOpSubgroupAvcImeInitializeINTEL = 5747,
    SpvOpSubgroupAvcImeSetSingleReferenceINTEL = 5748,
    SpvOpSubgroupAvcImeSetDualReferenceINTEL = 5749,
    SpvOpSubgroupAvcImeRefWindowSizeINTEL = 5750,
    SpvOpSubgroupAvcImeAdjustRefOffsetINTEL = 5751,
    SpvOpSubgroupAvcImeConvertToMcePayloadINTEL = 5752,
    SpvOpSubgroupAvcImeSetMaxMotionVectorCountINTEL = 5753,
    SpvOpSubgroupAvcImeSetUnidirectionalMixDisableINTEL = 5754,
    SpvOpSubgroupAvcImeSetEarlySearchTerminationThresholdINTEL = 5755,
    SpvOpSubgroupAvcImeSetWeightedSadINTEL = 5756,
    SpvOpSubgroupAvcImeEvaluateWithSingleReferenceINTEL = 5757,
    SpvOpSubgroupAvcImeEvaluateWithDualReferenceINTEL = 5758,
    SpvOpSubgroupAvcImeEvaluateWithSingleReferenceStreaminINTEL = 5759,
    SpvOpSubgroupAvcImeEvaluateWithDualReferenceStreaminINTEL = 5760,
    SpvOpSubgroupAvcImeEvaluateWithSingleReferenceStreamoutINTEL = 5761,
    SpvOpSubgroupAvcImeEvaluateWithDualReferenceStreamoutINTEL = 5762,
    SpvOpSubgroupAvcImeEvaluateWithSingleReferenceStreaminoutINTEL = 5763,
    SpvOpSubgroupAvcImeEvaluateWithDualReferenceStreaminoutINTEL = 5764,
    SpvOpSubgroupAvcImeConvertToMceResultINTEL = 5765,
    SpvOpSubgroupAvcImeGetSingleReferenceStreaminINTEL = 5766,
    SpvOpSubgroupAvcImeGetDualReferenceStreaminINTEL = 5767,
    SpvOpSubgroupAvcImeStripSingleReferenceStreamoutINTEL = 5768,
    SpvOpSubgroupAvcImeStripDualReferenceStreamoutINTEL = 5769,
    SpvOpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeMotionVectorsINTEL = 5770,
    SpvOpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeDistortionsINTEL = 5771,
    SpvOpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeReferenceIdsINTEL = 5772,
    SpvOpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeMotionVectorsINTEL = 5773,
    SpvOpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeDistortionsINTEL = 5774,
    SpvOpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeReferenceIdsINTEL = 5775,
    SpvOpSubgroupAvcImeGetBorderReachedINTEL = 5776,
    SpvOpSubgroupAvcImeGetTruncatedSearchIndicationINTEL = 5777,
    SpvOpSubgroupAvcImeGetUnidirectionalEarlySearchTerminationINTEL = 5778,
    SpvOpSubgroupAvcImeGetWeightingPatternMinimumMotionVectorINTEL = 5779,
    SpvOpSubgroupAvcImeGetWeightingPatternMinimumDistortionINTEL = 5780,
    SpvOpSubgroupAvcFmeInitializeINTEL = 5781,
    SpvOpSubgroupAvcBmeInitializeINTEL = 5782,
    SpvOpSubgroupAvcRefConvertToMcePayloadINTEL = 5783,
    SpvOpSubgroupAvcRefSetBidirectionalMixDisableINTEL = 5784,
    SpvOpSubgroupAvcRefSetBilinearFilterEnableINTEL = 5785,
    SpvOpSubgroupAvcRefEvaluateWithSingleReferenceINTEL = 5786,
    SpvOpSubgroupAvcRefEvaluateWithDualReferenceINTEL = 5787,
    SpvOpSubgroupAvcRefEvaluateWithMultiReferenceINTEL = 5788,
    SpvOpSubgroupAvcRefEvaluateWithMultiReferenceInterlacedINTEL = 5789,
    SpvOpSubgroupAvcRefConvertToMceResultINTEL = 5790,
    SpvOpSubgroupAvcSicInitializeINTEL = 5791,
    SpvOpSubgroupAvcSicConfigureSkcINTEL = 5792,
    SpvOpSubgroupAvcSicConfigureIpeLumaINTEL = 5793,
    SpvOpSubgroupAvcSicConfigureIpeLumaChromaINTEL = 5794,
    SpvOpSubgroupAvcSicGetMotionVectorMaskINTEL = 5795,
    SpvOpSubgroupAvcSicConvertToMcePayloadINTEL = 5796,
    SpvOpSubgroupAvcSicSetIntraLumaShapePenaltyINTEL = 5797,
    SpvOpSubgroupAvcSicSetIntraLumaModeCostFunctionINTEL = 5798,
    SpvOpSubgroupAvcSicSetIntraChromaModeCostFunctionINTEL = 5799,
    SpvOpSubgroupAvcSicSetBilinearFilterEnableINTEL = 5800,
    SpvOpSubgroupAvcSicSetSkcForwardTransformEnableINTEL = 5801,
    SpvOpSubgroupAvcSicSetBlockBasedRawSkipSadINTEL = 5802,
    SpvOpSubgroupAvcSicEvaluateIpeINTEL = 5803,
    SpvOpSubgroupAvcSicEvaluateWithSingleReferenceINTEL = 5804,
    SpvOpSubgroupAvcSicEvaluateWithDualReferenceINTEL = 5805,
    SpvOpSubgroupAvcSicEvaluateWithMultiReferenceINTEL = 5806,
    SpvOpSubgroupAvcSicEvaluateWithMultiReferenceInterlacedINTEL = 5807,
    SpvOpSubgroupAvcSicConvertToMceResultINTEL = 5808,
    SpvOpSubgroupAvcSicGetIpeLumaShapeINTEL = 5809,
    SpvOpSubgroupAvcSicGetBestIpeLumaDistortionINTEL = 5810,
    SpvOpSubgroupAvcSicGetBestIpeChromaDistortionINTEL = 5811,
    SpvOpSubgroupAvcSicGetPackedIpeLumaModesINTEL = 5812,
    SpvOpSubgroupAvcSicGetIpeChromaModeINTEL = 5813,
    SpvOpSubgroupAvcSicGetPackedSkcLumaCountThresholdINTEL = 5814,
    SpvOpSubgroupAvcSicGetPackedSkcLumaSumThresholdINTEL = 5815,
    SpvOpSubgroupAvcSicGetInterRawSadsINTEL = 5816,
    SpvOpLoopControlINTEL = 5887,
    SpvOpReadPipeBlockingINTEL = 5946,
    SpvOpWritePipeBlockingINTEL = 5947,
    SpvOpFPGARegINTEL = 5949,
    SpvOpRayQueryGetRayTMinKHR = 6016,
    SpvOpRayQueryGetRayFlagsKHR = 6017,
    SpvOpRayQueryGetIntersectionTKHR = 6018,
    SpvOpRayQueryGetIntersectionInstanceCustomIndexKHR = 6019,
    SpvOpRayQueryGetIntersectionInstanceIdKHR = 6020,
    SpvOpRayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetKHR = 6021,
    SpvOpRayQueryGetIntersectionGeometryIndexKHR = 6022,
    SpvOpRayQueryGetIntersectionPrimitiveIndexKHR = 6023,
    SpvOpRayQueryGetIntersectionBarycentricsKHR = 6024,
    SpvOpRayQueryGetIntersectionFrontFaceKHR = 6025,
    SpvOpRayQueryGetIntersectionCandidateAABBOpaqueKHR = 6026,
    SpvOpRayQueryGetIntersectionObjectRayDirectionKHR = 6027,
    SpvOpRayQueryGetIntersectionObjectRayOriginKHR = 6028,
    SpvOpRayQueryGetWorldRayDirectionKHR = 6029,
    SpvOpRayQueryGetWorldRayOriginKHR = 6030,
    SpvOpRayQueryGetIntersectionObjectToWorldKHR = 6031,
    SpvOpRayQueryGetIntersectionWorldToObjectKHR = 6032,
    SpvOpAtomicFAddEXT = 6035,
    SpvOpMax = 0x7fffffff,
}

SpvDim :: enum i32 {
    SpvDim1D = 0,
    SpvDim2D = 1,
    SpvDim3D = 2,
    SpvDimCube = 3,
    SpvDimRect = 4,
    SpvDimBuffer = 5,
    SpvDimSubpassData = 6,
    SpvDimMax = 0x7fffffff,
}

SpvImageFormat :: enum i32 {
    SpvImageFormatUnknown = 0,
    SpvImageFormatRgba32f = 1,
    SpvImageFormatRgba16f = 2,
    SpvImageFormatR32f = 3,
    SpvImageFormatRgba8 = 4,
    SpvImageFormatRgba8Snorm = 5,
    SpvImageFormatRg32f = 6,
    SpvImageFormatRg16f = 7,
    SpvImageFormatR11fG11fB10f = 8,
    SpvImageFormatR16f = 9,
    SpvImageFormatRgba16 = 10,
    SpvImageFormatRgb10A2 = 11,
    SpvImageFormatRg16 = 12,
    SpvImageFormatRg8 = 13,
    SpvImageFormatR16 = 14,
    SpvImageFormatR8 = 15,
    SpvImageFormatRgba16Snorm = 16,
    SpvImageFormatRg16Snorm = 17,
    SpvImageFormatRg8Snorm = 18,
    SpvImageFormatR16Snorm = 19,
    SpvImageFormatR8Snorm = 20,
    SpvImageFormatRgba32i = 21,
    SpvImageFormatRgba16i = 22,
    SpvImageFormatRgba8i = 23,
    SpvImageFormatR32i = 24,
    SpvImageFormatRg32i = 25,
    SpvImageFormatRg16i = 26,
    SpvImageFormatRg8i = 27,
    SpvImageFormatR16i = 28,
    SpvImageFormatR8i = 29,
    SpvImageFormatRgba32ui = 30,
    SpvImageFormatRgba16ui = 31,
    SpvImageFormatRgba8ui = 32,
    SpvImageFormatR32ui = 33,
    SpvImageFormatRgb10a2ui = 34,
    SpvImageFormatRg32ui = 35,
    SpvImageFormatRg16ui = 36,
    SpvImageFormatRg8ui = 37,
    SpvImageFormatR16ui = 38,
    SpvImageFormatR8ui = 39,
    SpvImageFormatR64ui = 40,
    SpvImageFormatR64i = 41,
    SpvImageFormatMax = 0x7fffffff,
}

TypeFlags :: u32;
DecorationFlags :: u32;
VariableFlags :: u32;

Result :: enum i32 {
    SPV_REFLECT_RESULT_SUCCESS,
    SPV_REFLECT_RESULT_NOT_READY,
    SPV_REFLECT_RESULT_ERROR_PARSE_FAILED,
    SPV_REFLECT_RESULT_ERROR_ALLOC_FAILED,
    SPV_REFLECT_RESULT_ERROR_RANGE_EXCEEDED,
    SPV_REFLECT_RESULT_ERROR_NULL_POINTER,
    SPV_REFLECT_RESULT_ERROR_INTERNAL_ERROR,
    SPV_REFLECT_RESULT_ERROR_COUNT_MISMATCH,
    SPV_REFLECT_RESULT_ERROR_ELEMENT_NOT_FOUND,
    SPV_REFLECT_RESULT_ERROR_SPIRV_INVALID_CODE_SIZE,
    SPV_REFLECT_RESULT_ERROR_SPIRV_INVALID_MAGIC_NUMBER,
    SPV_REFLECT_RESULT_ERROR_SPIRV_UNEXPECTED_EOF,
    SPV_REFLECT_RESULT_ERROR_SPIRV_INVALID_ID_REFERENCE,
    SPV_REFLECT_RESULT_ERROR_SPIRV_SET_NUMBER_OVERFLOW,
    SPV_REFLECT_RESULT_ERROR_SPIRV_INVALID_STORAGE_CLASS,
    SPV_REFLECT_RESULT_ERROR_SPIRV_RECURSION,
    SPV_REFLECT_RESULT_ERROR_SPIRV_INVALID_INSTRUCTION,
    SPV_REFLECT_RESULT_ERROR_SPIRV_UNEXPECTED_BLOCK_DATA,
    SPV_REFLECT_RESULT_ERROR_SPIRV_INVALID_BLOCK_MEMBER_REFERENCE,
    SPV_REFLECT_RESULT_ERROR_SPIRV_INVALID_ENTRY_POINT,
    SPV_REFLECT_RESULT_ERROR_SPIRV_INVALID_EXECUTION_MODE,
};

TypeFlagBits :: enum i32 {
    SPV_REFLECT_TYPE_FLAG_UNDEFINED = 0,
    SPV_REFLECT_TYPE_FLAG_VOID = 1,
    SPV_REFLECT_TYPE_FLAG_BOOL = 2,
    SPV_REFLECT_TYPE_FLAG_INT = 4,
    SPV_REFLECT_TYPE_FLAG_FLOAT = 8,
    SPV_REFLECT_TYPE_FLAG_VECTOR = 256,
    SPV_REFLECT_TYPE_FLAG_MATRIX = 512,
    SPV_REFLECT_TYPE_FLAG_EXTERNAL_IMAGE = 65536,
    SPV_REFLECT_TYPE_FLAG_EXTERNAL_SAMPLER = 131072,
    SPV_REFLECT_TYPE_FLAG_EXTERNAL_SAMPLED_IMAGE = 262144,
    SPV_REFLECT_TYPE_FLAG_EXTERNAL_BLOCK = 524288,
    SPV_REFLECT_TYPE_FLAG_EXTERNAL_ACCELERATION_STRUCTURE = 1048576,
    SPV_REFLECT_TYPE_FLAG_EXTERNAL_MASK = 16711680,
    SPV_REFLECT_TYPE_FLAG_STRUCT = 268435456,
    SPV_REFLECT_TYPE_FLAG_ARRAY = 536870912,
};

DecorationFlagBits :: enum i32 {
    SPV_REFLECT_DECORATION_NONE = 0,
    SPV_REFLECT_DECORATION_BLOCK = 1,
    SPV_REFLECT_DECORATION_BUFFER_BLOCK = 2,
    SPV_REFLECT_DECORATION_ROW_MAJOR = 4,
    SPV_REFLECT_DECORATION_COLUMN_MAJOR = 8,
    SPV_REFLECT_DECORATION_BUILT_IN = 16,
    SPV_REFLECT_DECORATION_NOPERSPECTIVE = 32,
    SPV_REFLECT_DECORATION_FLAT = 64,
    SPV_REFLECT_DECORATION_NON_WRITABLE = 128,
};

ResourceType :: enum i32 {
    SPV_REFLECT_RESOURCE_FLAG_UNDEFINED = 0,
    SPV_REFLECT_RESOURCE_FLAG_SAMPLER = 1,
    SPV_REFLECT_RESOURCE_FLAG_CBV = 2,
    SPV_REFLECT_RESOURCE_FLAG_SRV = 4,
    SPV_REFLECT_RESOURCE_FLAG_UAV = 8,
};

Format :: enum i32 {
    SPV_REFLECT_FORMAT_UNDEFINED = 0,
    SPV_REFLECT_FORMAT_R32_UINT = 98,
    SPV_REFLECT_FORMAT_R32_SINT = 99,
    SPV_REFLECT_FORMAT_R32_SFLOAT = 100,
    SPV_REFLECT_FORMAT_R32G32_UINT = 101,
    SPV_REFLECT_FORMAT_R32G32_SINT = 102,
    SPV_REFLECT_FORMAT_R32G32_SFLOAT = 103,
    SPV_REFLECT_FORMAT_R32G32B32_UINT = 104,
    SPV_REFLECT_FORMAT_R32G32B32_SINT = 105,
    SPV_REFLECT_FORMAT_R32G32B32_SFLOAT = 106,
    SPV_REFLECT_FORMAT_R32G32B32A32_UINT = 107,
    SPV_REFLECT_FORMAT_R32G32B32A32_SINT = 108,
    SPV_REFLECT_FORMAT_R32G32B32A32_SFLOAT = 109,
    SPV_REFLECT_FORMAT_R64_UINT = 110,
    SPV_REFLECT_FORMAT_R64_SINT = 111,
    SPV_REFLECT_FORMAT_R64_SFLOAT = 112,
    SPV_REFLECT_FORMAT_R64G64_UINT = 113,
    SPV_REFLECT_FORMAT_R64G64_SINT = 114,
    SPV_REFLECT_FORMAT_R64G64_SFLOAT = 115,
    SPV_REFLECT_FORMAT_R64G64B64_UINT = 116,
    SPV_REFLECT_FORMAT_R64G64B64_SINT = 117,
    SPV_REFLECT_FORMAT_R64G64B64_SFLOAT = 118,
    SPV_REFLECT_FORMAT_R64G64B64A64_UINT = 119,
    SPV_REFLECT_FORMAT_R64G64B64A64_SINT = 120,
    SPV_REFLECT_FORMAT_R64G64B64A64_SFLOAT = 121,
};

VariableFlagBits :: enum i32 {
    SPV_REFLECT_VARIABLE_FLAGS_NONE = 0,
    SPV_REFLECT_VARIABLE_FLAGS_UNUSED = 1,
};

DescriptorType :: enum i32 {
    SPV_REFLECT_DESCRIPTOR_TYPE_SAMPLER = 0,
    SPV_REFLECT_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER = 1,
    SPV_REFLECT_DESCRIPTOR_TYPE_SAMPLED_IMAGE = 2,
    SPV_REFLECT_DESCRIPTOR_TYPE_STORAGE_IMAGE = 3,
    SPV_REFLECT_DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER = 4,
    SPV_REFLECT_DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER = 5,
    SPV_REFLECT_DESCRIPTOR_TYPE_UNIFORM_BUFFER = 6,
    SPV_REFLECT_DESCRIPTOR_TYPE_STORAGE_BUFFER = 7,
    SPV_REFLECT_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC = 8,
    SPV_REFLECT_DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC = 9,
    SPV_REFLECT_DESCRIPTOR_TYPE_INPUT_ATTACHMENT = 10,
    SPV_REFLECT_DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_KHR = 1000150000,
};

ShaderStageFlagBits :: enum i32 {
    SPV_REFLECT_SHADER_STAGE_VERTEX_BIT = 1,
    SPV_REFLECT_SHADER_STAGE_TESSELLATION_CONTROL_BIT = 2,
    SPV_REFLECT_SHADER_STAGE_TESSELLATION_EVALUATION_BIT = 4,
    SPV_REFLECT_SHADER_STAGE_GEOMETRY_BIT = 8,
    SPV_REFLECT_SHADER_STAGE_FRAGMENT_BIT = 16,
    SPV_REFLECT_SHADER_STAGE_COMPUTE_BIT = 32,
    SPV_REFLECT_SHADER_STAGE_TASK_BIT_NV = 64,
    SPV_REFLECT_SHADER_STAGE_MESH_BIT_NV = 128,
    SPV_REFLECT_SHADER_STAGE_RAYGEN_BIT_KHR = 256,
    SPV_REFLECT_SHADER_STAGE_ANY_HIT_BIT_KHR = 512,
    SPV_REFLECT_SHADER_STAGE_CLOSEST_HIT_BIT_KHR = 1024,
    SPV_REFLECT_SHADER_STAGE_MISS_BIT_KHR = 2048,
    SPV_REFLECT_SHADER_STAGE_INTERSECTION_BIT_KHR = 4096,
    SPV_REFLECT_SHADER_STAGE_CALLABLE_BIT_KHR = 8192,
};

Generator :: enum i32 {
    SPV_REFLECT_GENERATOR_KHRONOS_LLVM_SPIRV_TRANSLATOR = 6,
    SPV_REFLECT_GENERATOR_KHRONOS_SPIRV_TOOLS_ASSEMBLER = 7,
    SPV_REFLECT_GENERATOR_KHRONOS_GLSLANG_REFERENCE_FRONT_END = 8,
    SPV_REFLECT_GENERATOR_GOOGLE_SHADERC_OVER_GLSLANG = 13,
    SPV_REFLECT_GENERATOR_GOOGLE_SPIREGG = 14,
    SPV_REFLECT_GENERATOR_GOOGLE_RSPIRV = 15,
    SPV_REFLECT_GENERATOR_X_LEGEND_MESA_MESAIR_SPIRV_TRANSLATOR = 16,
    SPV_REFLECT_GENERATOR_KHRONOS_SPIRV_TOOLS_LINKER = 17,
    SPV_REFLECT_GENERATOR_WINE_VKD3D_SHADER_COMPILER = 18,
    SPV_REFLECT_GENERATOR_CLAY_CLAY_SHADER_COMPILER = 19,
};

AnonymousEnum0 :: enum i32 {
    SPV_REFLECT_MAX_ARRAY_DIMS = 32,
    SPV_REFLECT_MAX_DESCRIPTOR_SETS = 64,
};

AnonymousEnum1 :: enum i32 {
    SPV_REFLECT_BINDING_NUMBER_DONT_CHANGE = -1,
    SPV_REFLECT_SET_NUMBER_DONT_CHANGE = -1,
};

Scalar :: struct {
    width : u32,
    signedness : u32,
};

Vector :: struct {
    component_count : u32,
};

Matrix :: struct {
    column_count : u32,
    row_count : u32,
    stride : u32,
};

NumericTraits :: struct {
    scalar : Scalar,
    vector : Vector,
    matrix : Matrix,
};

ImageTraits :: struct {
    dim : SpvDim,
    depth : u32,
    arrayed : u32,
    ms : u32,
    sampled : u32,
    image_format : SpvImageFormat,
};

ArrayTraits :: struct {
    dims_count : u32,
    dims : [32]u32,
    stride : u32,
};

BindingArrayTraits :: struct {
    dims_count : u32,
    dims : [32]u32,
};

Traits :: struct {
    numeric : NumericTraits,
    image : ImageTraits,
    array : ArrayTraits,
};

TypeDescription :: struct {
    id : u32,
    op : SpvOp,
    type_name : cstring,
    struct_member_name : cstring,
    storage_class : SpvStorageClass,
    type_flags : TypeFlags,
    decoration_flags : DecorationFlags,
    traits : Traits,
    member_count : u32,
    members : ^TypeDescription,
};

InterfaceVariable :: struct {
    spirv_id : u32,
    name : cstring,
    location : u32,
    storage_class : SpvStorageClass,
    semantic : cstring,
    decoration_flags : DecorationFlags,
    built_in : SpvBuiltIn,
    numeric : NumericTraits,
    array : ArrayTraits,
    member_count : u32,
    members : ^InterfaceVariable,
    format : Format,
    type_description : ^TypeDescription,
    word_offset : AnonymousStruct0,
};

AnonymousStruct0 :: struct {
    location : u32,
};

BlockVariable :: struct {
    spirv_id : u32,
    name : cstring,
    offset : u32,
    absolute_offset : u32,
    size : u32,
    padded_size : u32,
    decoration_flags : DecorationFlags,
    numeric : NumericTraits,
    array : ArrayTraits,
    flags : VariableFlags,
    member_count : u32,
    members : ^BlockVariable,
    type_description : ^TypeDescription,
};

DescriptorBinding :: struct {
    spirv_id : u32,
    name : cstring,
    binding : u32,
    input_attachment_index : u32,
    set : u32,
    descriptor_type : DescriptorType,
    resource_type : ResourceType,
    image : ImageTraits,
    block : BlockVariable,
    array : BindingArrayTraits,
    count : u32,
    accessed : u32,
    uav_counter_id : u32,
    uav_counter_binding : ^DescriptorBinding,
    type_description : ^TypeDescription,
    word_offset : AnonymousStruct1,
};

AnonymousStruct1 :: struct {
    binding : u32,
    set : u32,
};

DescriptorSet :: struct {
    set : u32,
    binding_count : u32,
    bindings : ^^DescriptorBinding,
};

LocalSize :: struct {
    x : u32,
    y : u32,
    z : u32,
};

EntryPoint :: struct {
    name : cstring,
    id : u32,
    spirv_execution_model : SpvExecutionModel,
    shader_stage : ShaderStageFlagBits,
    input_variable_count : u32,
    input_variables : ^^InterfaceVariable,
    output_variable_count : u32,
    output_variables : ^^InterfaceVariable,
    interface_variable_count : u32,
    interface_variables : ^InterfaceVariable,
    descriptor_set_count : u32,
    descriptor_sets : ^DescriptorSet,
    used_uniform_count : u32,
    used_uniforms : ^u32,
    used_push_constant_count : u32,
    used_push_constants : ^u32,
    local_size : LocalSize,
};

Internal :: struct {
    spirv_size : _c.size_t,
    spirv_code : ^u32,
    spirv_word_count : u32,
    type_description_count : _c.size_t,
    type_descriptions : ^TypeDescription,
};

ShaderModule :: struct {
    generator : Generator,
    entry_point_name : cstring,
    entry_point_id : u32,
    entry_point_count : u32,
    entry_points : ^EntryPoint,
    source_language : SpvSourceLanguage,
    source_language_version : u32,
    source_file : cstring,
    source_source : cstring,
    spirv_execution_model : SpvExecutionModel,
    shader_stage : ShaderStageFlagBits,
    descriptor_binding_count : u32,
    descriptor_bindings : ^DescriptorBinding,
    descriptor_set_count : u32,
    descriptor_sets : [64]DescriptorSet,
    input_variable_count : u32,
    input_variables : ^^InterfaceVariable,
    output_variable_count : u32,
    output_variables : ^^InterfaceVariable,
    interface_variable_count : u32,
    interface_variables : ^InterfaceVariable,
    push_constant_block_count : u32,
    push_constant_blocks : ^BlockVariable,
    internal : ^Internal,
};

@(default_calling_convention="c")
foreign spirv_reflect {

    @(link_name="spvReflectCreateShaderModule")
    CreateShaderModule :: proc(
        size : _c.size_t,
        p_code : rawptr,
        p_module : ^ShaderModule
    ) -> Result ---;

    @(link_name="spvReflectDestroyShaderModule")
    DestroyShaderModule :: proc(p_module : ^ShaderModule) ---;

    @(link_name="spvReflectGetCodeSize")
    GetCodeSize :: proc(p_module : ^ShaderModule) -> u32 ---;

    @(link_name="spvReflectGetCode")
    GetCode :: proc(p_module : ^ShaderModule) -> ^u32 ---;

    @(link_name="spvReflectGetEntryPoint")
    GetEntryPoint :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring
    ) -> ^EntryPoint ---;

    @(link_name="spvReflectEnumerateDescriptorBindings")
    EnumerateDescriptorBindings :: proc(
        p_module : ^ShaderModule,
        p_count : ^u32,
        pp_bindings : ^^DescriptorBinding
    ) -> Result ---;

    @(link_name="spvReflectEnumerateEntryPointDescriptorBindings")
    EnumerateEntryPointDescriptorBindings :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        p_count : ^u32,
        pp_bindings : ^^DescriptorBinding
    ) -> Result ---;

    @(link_name="spvReflectEnumerateDescriptorSets")
    EnumerateDescriptorSets :: proc(
        p_module : ^ShaderModule,
        p_count : ^u32,
        pp_sets : ^^DescriptorSet
    ) -> Result ---;

    @(link_name="spvReflectEnumerateEntryPointDescriptorSets")
    EnumerateEntryPointDescriptorSets :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        p_count : ^u32,
        pp_sets : ^^DescriptorSet
    ) -> Result ---;

    @(link_name="spvReflectEnumerateInterfaceVariables")
    EnumerateInterfaceVariables :: proc(
        p_module : ^ShaderModule,
        p_count : ^u32,
        pp_variables : ^^InterfaceVariable
    ) -> Result ---;

    @(link_name="spvReflectEnumerateEntryPointInterfaceVariables")
    EnumerateEntryPointInterfaceVariables :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        p_count : ^u32,
        pp_variables : ^^InterfaceVariable
    ) -> Result ---;

    @(link_name="spvReflectEnumerateInputVariables")
    EnumerateInputVariables :: proc(
        p_module : ^ShaderModule,
        p_count : ^u32,
        pp_variables : ^^InterfaceVariable
    ) -> Result ---;

    @(link_name="spvReflectEnumerateEntryPointInputVariables")
    EnumerateEntryPointInputVariables :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        p_count : ^u32,
        pp_variables : ^^InterfaceVariable
    ) -> Result ---;

    @(link_name="spvReflectEnumerateOutputVariables")
    EnumerateOutputVariables :: proc(
        p_module : ^ShaderModule,
        p_count : ^u32,
        pp_variables : ^^InterfaceVariable
    ) -> Result ---;

    @(link_name="spvReflectEnumerateEntryPointOutputVariables")
    EnumerateEntryPointOutputVariables :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        p_count : ^u32,
        pp_variables : ^^InterfaceVariable
    ) -> Result ---;

    @(link_name="spvReflectEnumeratePushConstantBlocks")
    EnumeratePushConstantBlocks :: proc(
        p_module : ^ShaderModule,
        p_count : ^u32,
        pp_blocks : ^^BlockVariable
    ) -> Result ---;

    @(link_name="spvReflectEnumerateEntryPointPushConstantBlocks")
    EnumerateEntryPointPushConstantBlocks :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        p_count : ^u32,
        pp_blocks : ^^BlockVariable
    ) -> Result ---;

    @(link_name="spvReflectGetDescriptorBinding")
    GetDescriptorBinding :: proc(
        p_module : ^ShaderModule,
        binding_number : u32,
        set_number : u32,
        p_result : ^Result
    ) -> ^DescriptorBinding ---;

    @(link_name="spvReflectGetEntryPointDescriptorBinding")
    GetEntryPointDescriptorBinding :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        binding_number : u32,
        set_number : u32,
        p_result : ^Result
    ) -> ^DescriptorBinding ---;

    @(link_name="spvReflectGetDescriptorSet")
    GetDescriptorSet :: proc(
        p_module : ^ShaderModule,
        set_number : u32,
        p_result : ^Result
    ) -> ^DescriptorSet ---;

    @(link_name="spvReflectGetEntryPointDescriptorSet")
    GetEntryPointDescriptorSet :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        set_number : u32,
        p_result : ^Result
    ) -> ^DescriptorSet ---;

    @(link_name="spvReflectGetInputVariableByLocation")
    GetInputVariableByLocation :: proc(
        p_module : ^ShaderModule,
        location : u32,
        p_result : ^Result
    ) -> ^InterfaceVariable ---;

    @(link_name="spvReflectGetEntryPointInputVariableByLocation")
    GetEntryPointInputVariableByLocation :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        location : u32,
        p_result : ^Result
    ) -> ^InterfaceVariable ---;

    @(link_name="spvReflectGetInputVariableBySemantic")
    GetInputVariableBySemantic :: proc(
        p_module : ^ShaderModule,
        semantic : cstring,
        p_result : ^Result
    ) -> ^InterfaceVariable ---;

    @(link_name="spvReflectGetEntryPointInputVariableBySemantic")
    GetEntryPointInputVariableBySemantic :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        semantic : cstring,
        p_result : ^Result
    ) -> ^InterfaceVariable ---;

    @(link_name="spvReflectGetOutputVariableByLocation")
    GetOutputVariableByLocation :: proc(
        p_module : ^ShaderModule,
        location : u32,
        p_result : ^Result
    ) -> ^InterfaceVariable ---;

    @(link_name="spvReflectGetEntryPointOutputVariableByLocation")
    GetEntryPointOutputVariableByLocation :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        location : u32,
        p_result : ^Result
    ) -> ^InterfaceVariable ---;

    @(link_name="spvReflectGetOutputVariableBySemantic")
    GetOutputVariableBySemantic :: proc(
        p_module : ^ShaderModule,
        semantic : cstring,
        p_result : ^Result
    ) -> ^InterfaceVariable ---;

    @(link_name="spvReflectGetEntryPointOutputVariableBySemantic")
    GetEntryPointOutputVariableBySemantic :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        semantic : cstring,
        p_result : ^Result
    ) -> ^InterfaceVariable ---;

    @(link_name="spvReflectGetPushConstantBlock")
    GetPushConstantBlock :: proc(
        p_module : ^ShaderModule,
        index : u32,
        p_result : ^Result
    ) -> ^BlockVariable ---;

    @(link_name="spvReflectGetEntryPointPushConstantBlock")
    GetEntryPointPushConstantBlock :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        p_result : ^Result
    ) -> ^BlockVariable ---;

    @(link_name="spvReflectChangeDescriptorBindingNumbers")
    ChangeDescriptorBindingNumbers :: proc(
        p_module : ^ShaderModule,
        p_binding : ^DescriptorBinding,
        new_binding_number : u32,
        new_set_number : u32
    ) -> Result ---;

    @(link_name="spvReflectChangeDescriptorSetNumber")
    ChangeDescriptorSetNumber :: proc(
        p_module : ^ShaderModule,
        p_set : ^DescriptorSet,
        new_set_number : u32
    ) -> Result ---;

    @(link_name="spvReflectChangeInputVariableLocation")
    ChangeInputVariableLocation :: proc(
        p_module : ^ShaderModule,
        p_input_variable : ^InterfaceVariable,
        new_location : u32
    ) -> Result ---;

    @(link_name="spvReflectChangeOutputVariableLocation")
    ChangeOutputVariableLocation :: proc(
        p_module : ^ShaderModule,
        p_output_variable : ^InterfaceVariable,
        new_location : u32
    ) -> Result ---;

    @(link_name="spvReflectSourceLanguage")
    SourceLanguage :: proc(source_lang : SpvSourceLanguage) -> cstring ---;

}
