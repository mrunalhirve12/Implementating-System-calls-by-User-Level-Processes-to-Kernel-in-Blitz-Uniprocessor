! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareCondition
	.export	_Method_P_Kernel_HoareCondition_1
	.export	_Method_P_Kernel_HoareCondition_2
	.export	_Method_P_Kernel_HoareCondition_3
	.export	_Method_P_Kernel_HoareCondition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_TestHoareSemantic
	.export	_Method_P_Kernel_TestHoareSemantic_1
	.export	_Method_P_Kernel_TestHoareSemantic_2
	.export	_Method_P_Kernel_TestHoareSemantic_3
	.export	_Method_P_Kernel_TestHoareSemantic_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_testHoareSemantic
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	76
_P_Kernel_testHoareSemantic:
	.skip	41716
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_226:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_225:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_224:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_223:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_222:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_221:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_220:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_219:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_218:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_217:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_216:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_215:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_214:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_213:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_212:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_211:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_210:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_209:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_208:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_207:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_206:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_205:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_204:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_203:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_202:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_201:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_200:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_199:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_198:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_197:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_196:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_195:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_194:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_193:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_192:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_191:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_190:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_189:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_188:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_187:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_186:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_185:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_184:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_183:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_182:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_181:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_180:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_179:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_178:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_177:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_176:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_175:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_174:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_173:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_172:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_171:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_170:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_169:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_168:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_167:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_166:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_165:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_164:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_163:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_162:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_161:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_160:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_159:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_158:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_157:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_156:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_155:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_154:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_153:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_152:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_151:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_150:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_149:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_148:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_147:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_146:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_145:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_144:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_143:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_142:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_141:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_140:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_139:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_138:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_137:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_136:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_135:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_134:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_133:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_132:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_131:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_130:
	.word	15			! length
	.ascii	"Did not remove "
	.align
_StringConst_129:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_128:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_127:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_126:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_125:
	.word	1			! length
	.ascii	"J"
	.align
_StringConst_124:
	.word	1			! length
	.ascii	"I"
	.align
_StringConst_123:
	.word	1			! length
	.ascii	"H"
	.align
_StringConst_122:
	.word	1			! length
	.ascii	"G"
	.align
_StringConst_121:
	.word	1			! length
	.ascii	"F"
	.align
_StringConst_120:
	.word	1			! length
	.ascii	"E"
	.align
_StringConst_119:
	.word	1			! length
	.ascii	"D"
	.align
_StringConst_118:
	.word	1			! length
	.ascii	"C"
	.align
_StringConst_117:
	.word	1			! length
	.ascii	"B"
	.align
_StringConst_116:
	.word	1			! length
	.ascii	"A"
	.align
_StringConst_115:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_114:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_113:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_112:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_111:
	.word	9			! length
	.ascii	"My Thread"
	.align
_StringConst_110:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_109:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_108:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_107:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_106:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_105:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_104:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_103:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_102:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_101:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_100:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_99:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_98:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_97:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_96:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_95:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_94:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_93:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_92:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_91:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_90:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_89:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_88:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_87:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_86:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_85:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_84:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_83:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_82:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_81:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_80:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_79:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_78:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_77:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_76:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_75:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_74:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_73:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_72:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_71:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_70:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_69:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_68:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_67:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_66:
	.word	26			! length
	.ascii	"Handle_Sys_Close invoked!\n"
	.align
_StringConst_65:
	.word	17			! length
	.ascii	"\nnewCurrentPos = "
	.align
_StringConst_64:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_63:
	.word	25			! length
	.ascii	"Handle_Sys_Seek invoked!\n"
	.align
_StringConst_62:
	.word	17			! length
	.ascii	"\nSize in bytes = "
	.align
_StringConst_61:
	.word	29			! length
	.ascii	"\nVirtual address of buffer = "
	.align
_StringConst_60:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_59:
	.word	26			! length
	.ascii	"Handle_Sys_Write invoked!\n"
	.align
_StringConst_58:
	.word	17			! length
	.ascii	"\nSize in bytes = "
	.align
_StringConst_57:
	.word	29			! length
	.ascii	"\nVirtual address of buffer = "
	.align
_StringConst_56:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_55:
	.word	25			! length
	.ascii	"Handle_Sys_Read invoked!\n"
	.align
_StringConst_54:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_53:
	.word	27			! length
	.ascii	"Virtual address of filename"
	.align
_StringConst_52:
	.word	25			! length
	.ascii	"Handle_Sys_Open invoked!\n"
	.align
_StringConst_51:
	.word	40			! length
	.ascii	"ERROR attempting to GetStringFromVirtual"
	.align
_StringConst_50:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_49:
	.word	27			! length
	.ascii	"Virtual address of filename"
	.align
_StringConst_48:
	.word	28			! length
	.ascii	"Handle_Sys_Create invoked..\n"
	.align
_StringConst_47:
	.word	32			! length
	.ascii	"Error using GetStringFromVirtual"
	.align
_StringConst_46:
	.word	47			! length
	.ascii	"In Handle_Sys_Exec, could not get newAddrSpace\n"
	.align
_StringConst_45:
	.word	10			! length
	.ascii	"processID:"
	.align
_StringConst_44:
	.word	24			! length
	.ascii	"Handle_Sys_Join invoked\n"
	.align
_StringConst_43:
	.word	24			! length
	.ascii	"Handle_Sys_Fork invoked\n"
	.align
_StringConst_42:
	.word	25			! length
	.ascii	"Handle_Sys_Yeild invoked\n"
	.align
_StringConst_41:
	.word	30			! length
	.ascii	"Syscall shutdown was invoked.."
	.align
_StringConst_40:
	.word	13			! length
	.ascii	"returnStatus:"
	.align
_StringConst_39:
	.word	24			! length
	.ascii	"Handle_Sys_Exit invoked\n"
	.align
_StringConst_38:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_37:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_36:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_35:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_34:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_33:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_32:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_31:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_26:
	.word	24			! length
	.ascii	"Could Not Open the File "
	.align
_StringConst_25:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_24:
	.word	22			! length
	.ascii	"UserLevelProgramThread"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x180aa933,r4		! myHashVal = 403351859
	cmp	r3,r4
	be	_Label_235
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_235:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_236
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_236
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_236
_Label_236:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_3273:
	push	r0
	sub	r1,1,r1
	bne	_Label_3273
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_237 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_237  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3274:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3274
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_241 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_242 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_241  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_243 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_244 = _temp_243 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_244 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3275:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3275
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_246 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_247 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_246  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_248 = _function_234_IdleFunction
	set	_function_234_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_249 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_248  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_250
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_251
	.word	-12
	.word	4
	.word	_Label_252
	.word	-16
	.word	4
	.word	_Label_253
	.word	-20
	.word	4
	.word	_Label_254
	.word	-24
	.word	4
	.word	_Label_255
	.word	-28
	.word	4
	.word	_Label_256
	.word	-32
	.word	4
	.word	_Label_257
	.word	-36
	.word	4
	.word	_Label_258
	.word	-40
	.word	4
	.word	_Label_259
	.word	-44
	.word	4
	.word	_Label_260
	.word	-48
	.word	4
	.word	_Label_261
	.word	-52
	.word	4
	.word	_Label_262
	.word	-56
	.word	4
	.word	_Label_263
	.word	-60
	.word	4
	.word	0
_Label_250:
	.ascii	"InitializeScheduler\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_234_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_234_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3276:
	push	r0
	sub	r1,1,r1
	bne	_Label_3276
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_264:
!	jmp	_Label_265
_Label_265:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_269 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_267 else goto _Label_268
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_268
	jmp	_Label_267
_Label_267:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_270
_Label_268:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_270:
! END WHILE...
	jmp	_Label_264
_Label_266:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_234_IdleFunction:
	.word	_sourceFileName
	.word	_Label_271
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_272
	.word	8
	.word	4
	.word	_Label_273
	.word	-12
	.word	4
	.word	_Label_274
	.word	-16
	.word	4
	.word	0
_Label_271:
	.ascii	"IdleFunction\0"
	.align
_Label_272:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_274:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_3277:
	push	r0
	sub	r1,1,r1
	bne	_Label_3277
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_277 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_277 ) then goto _Label_276		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_276
!	jmp	_Label_275
_Label_275:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_279 [0 ] into _temp_280
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_278 = _temp_280		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_278  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_276:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_281 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_281 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_282:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_286 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_285  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_285 then goto _Label_284 else goto _Label_283
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_283
	jmp	_Label_284
_Label_283:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_287 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_288 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_282
_Label_284:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_291 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_291 ) then goto _Label_290		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_290
!	jmp	_Label_289
_Label_289:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_293 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_293 [0 ] into _temp_294
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_292 = _temp_294		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_292  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_296 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_295 = *_temp_296  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_295) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_297 = _temp_295 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_290:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_298
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_299
	.word	8
	.word	4
	.word	_Label_300
	.word	-16
	.word	4
	.word	_Label_301
	.word	-20
	.word	4
	.word	_Label_302
	.word	-24
	.word	4
	.word	_Label_303
	.word	-28
	.word	4
	.word	_Label_304
	.word	-32
	.word	4
	.word	_Label_305
	.word	-36
	.word	4
	.word	_Label_306
	.word	-40
	.word	4
	.word	_Label_307
	.word	-44
	.word	4
	.word	_Label_308
	.word	-48
	.word	4
	.word	_Label_309
	.word	-52
	.word	4
	.word	_Label_310
	.word	-9
	.word	1
	.word	_Label_311
	.word	-56
	.word	4
	.word	_Label_312
	.word	-60
	.word	4
	.word	_Label_313
	.word	-64
	.word	4
	.word	_Label_314
	.word	-68
	.word	4
	.word	_Label_315
	.word	-72
	.word	4
	.word	_Label_316
	.word	-76
	.word	4
	.word	_Label_317
	.word	-80
	.word	4
	.word	0
_Label_298:
	.ascii	"Run\0"
	.align
_Label_299:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_310:
	.byte	'C'
	.ascii	"_temp_285\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_316:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_317:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_3278:
	push	r0
	sub	r1,1,r1
	bne	_Label_3278
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_318 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_319 = _function_233_ThreadPrintShort
	set	_function_233_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_320 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_319  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_321
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_322
	.word	-12
	.word	4
	.word	_Label_323
	.word	-16
	.word	4
	.word	_Label_324
	.word	-20
	.word	4
	.word	_Label_325
	.word	-24
	.word	4
	.word	0
_Label_321:
	.ascii	"PrintReadyList\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_325:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_3279:
	push	r0
	sub	r1,1,r1
	bne	_Label_3279
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_326 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_326  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_328 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_327 = *_temp_328  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_329 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_330
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_331
	.word	-12
	.word	4
	.word	_Label_332
	.word	-16
	.word	4
	.word	_Label_333
	.word	-20
	.word	4
	.word	_Label_334
	.word	-24
	.word	4
	.word	_Label_335
	.word	-28
	.word	4
	.word	_Label_336
	.word	-32
	.word	4
	.word	0
_Label_330:
	.ascii	"ThreadStartMain\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_335:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_336:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_3280:
	push	r0
	sub	r1,1,r1
	bne	_Label_3280
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_337 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_338 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_339
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_340
	.word	-12
	.word	4
	.word	_Label_341
	.word	-16
	.word	4
	.word	_Label_342
	.word	-20
	.word	4
	.word	0
_Label_339:
	.ascii	"ThreadFinish\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_342:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_3281:
	push	r0
	sub	r1,1,r1
	bne	_Label_3281
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_343 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_345		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_345
!	jmp	_Label_344
_Label_344:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_346 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_348 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_347 = *_temp_348  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_345:
! CALL STATEMENT...
!   _temp_349 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_350 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_351 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_352
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_353
	.word	8
	.word	4
	.word	_Label_354
	.word	-12
	.word	4
	.word	_Label_355
	.word	-16
	.word	4
	.word	_Label_356
	.word	-20
	.word	4
	.word	_Label_357
	.word	-24
	.word	4
	.word	_Label_358
	.word	-28
	.word	4
	.word	_Label_359
	.word	-32
	.word	4
	.word	_Label_360
	.word	-36
	.word	4
	.word	_Label_361
	.word	-40
	.word	4
	.word	0
_Label_352:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_353:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_361:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_3282:
	push	r0
	sub	r1,1,r1
	bne	_Label_3282
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_363		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_363
!	jmp	_Label_362
_Label_362:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_364
_Label_363:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_364:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_365
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_366
	.word	8
	.word	4
	.word	_Label_367
	.word	-12
	.word	4
	.word	0
_Label_365:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_366:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_367:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_233_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_233_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3283:
	push	r0
	sub	r1,1,r1
	bne	_Label_3283
	mov	744,r13		! source line 744
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	751,r13		! source line 751
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_371		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_371
!   _temp_370 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_372
_Label_371:
!   _temp_370 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_372:
!   if _temp_370 then goto _Label_369 else goto _Label_368
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_368
	jmp	_Label_369
_Label_368:
! THEN...
	mov	753,r13		! source line 753
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_373 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	753,r13		! source line 753
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_369:
! CALL STATEMENT...
!   _temp_374 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	756,r13		! source line 756
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_376 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_375 = *_temp_376  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	757,r13		! source line 757
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_377 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	759,r13		! source line 759
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_386 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_385 = *_temp_386  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_380
	cmp	r1,2
	be	_Label_381
	cmp	r1,3
	be	_Label_382
	cmp	r1,4
	be	_Label_383
	cmp	r1,5
	be	_Label_384
	jmp	_Label_378
! CASE 1...
_Label_380:
! CALL STATEMENT...
!   _temp_387 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	761,r13		! source line 761
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0BR",r10
	jmp	_Label_379
! CASE 2...
_Label_381:
! CALL STATEMENT...
!   _temp_388 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	764,r13		! source line 764
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0BR",r10
	jmp	_Label_379
! CASE 3...
_Label_382:
! CALL STATEMENT...
!   _temp_389 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	767,r13		! source line 767
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0BR",r10
	jmp	_Label_379
! CASE 4...
_Label_383:
! CALL STATEMENT...
!   _temp_390 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	771,r13		! source line 771
	mov	"\0\0BR",r10
	jmp	_Label_379
! CASE 5...
_Label_384:
! CALL STATEMENT...
!   _temp_391 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0BR",r10
	jmp	_Label_379
! DEFAULT CASE...
_Label_378:
! CALL STATEMENT...
!   _temp_392 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	776,r13		! source line 776
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_379:
! CALL STATEMENT...
!   _temp_393 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_394 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_395 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_233_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_396
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_397
	.word	8
	.word	4
	.word	_Label_398
	.word	-16
	.word	4
	.word	_Label_399
	.word	-20
	.word	4
	.word	_Label_400
	.word	-24
	.word	4
	.word	_Label_401
	.word	-28
	.word	4
	.word	_Label_402
	.word	-32
	.word	4
	.word	_Label_403
	.word	-36
	.word	4
	.word	_Label_404
	.word	-40
	.word	4
	.word	_Label_405
	.word	-44
	.word	4
	.word	_Label_406
	.word	-48
	.word	4
	.word	_Label_407
	.word	-52
	.word	4
	.word	_Label_408
	.word	-56
	.word	4
	.word	_Label_409
	.word	-60
	.word	4
	.word	_Label_410
	.word	-64
	.word	4
	.word	_Label_411
	.word	-68
	.word	4
	.word	_Label_412
	.word	-72
	.word	4
	.word	_Label_413
	.word	-76
	.word	4
	.word	_Label_414
	.word	-9
	.word	1
	.word	_Label_415
	.word	-80
	.word	4
	.word	0
_Label_396:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_397:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_414:
	.byte	'C'
	.ascii	"_temp_370\0"
	.align
_Label_415:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_232_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_232_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3284:
	push	r0
	sub	r1,1,r1
	bne	_Label_3284
	mov	1100,r13		! source line 1100
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_416 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_416  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1104,r13		! source line 1104
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1105,r13		! source line 1105
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_232_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_417
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_418
	.word	8
	.word	4
	.word	_Label_419
	.word	-12
	.word	4
	.word	0
_Label_417:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_418:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_3285:
	push	r0
	sub	r1,1,r1
	bne	_Label_3285
	mov	1110,r13		! source line 1110
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_420 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1116,r13		! source line 1116
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1116,r13		! source line 1116
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_421
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_422
	.word	8
	.word	4
	.word	_Label_423
	.word	-12
	.word	4
	.word	0
_Label_421:
	.ascii	"ProcessFinish\0"
	.align
_Label_422:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_3286:
	push	r0
	sub	r1,1,r1
	bne	_Label_3286
	mov	1120,r13		! source line 1120
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0AS",r10
	mov	1126,r13		! source line 1126
	mov	"\0\0SE",r10
!   _temp_424 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_425 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_425  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_426 = _function_231_StartUserProcess
	set	_function_231_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_426  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_427
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_428
	.word	-12
	.word	4
	.word	_Label_429
	.word	-16
	.word	4
	.word	_Label_430
	.word	-20
	.word	4
	.word	_Label_431
	.word	-24
	.word	4
	.word	0
_Label_427:
	.ascii	"InitFirstProcess\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_431:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_231_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_231_StartUserProcess,r1
	push	r1
	mov	26,r1
_Label_3287:
	push	r0
	sub	r1,1,r1
	bne	_Label_3287
	mov	1133,r13		! source line 1133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1150,r13		! source line 1150
	mov	"\0\0AS",r10
	mov	1150,r13		! source line 1150
	mov	"\0\0SE",r10
!   _temp_432 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-76]
!   Send message GetANewProcess
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pNewPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0AS",r10
!   if intIsZero (pNewPCB) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_433 = pNewPCB + 24
	load	[r14+-80],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_433 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-72],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_434 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_434 = pNewPCB  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0AS",r10
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_435 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-64]
!   _temp_436 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_435  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pOpenFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0IF",r10
!   if intIsZero (pOpenFile) then goto _Label_437
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_437
	jmp	_Label_438
_Label_437:
! THEN...
	mov	1160,r13		! source line 1160
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_439 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_439  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1160,r13		! source line 1160
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_438:
! ASSIGNMENT STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0AS",r10
	mov	1166,r13		! source line 1166
	mov	"\0\0SE",r10
!   if intIsZero (pNewPCB) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_441 = pNewPCB + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_440 = _temp_441		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (pOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_440  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! SEND STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0SE",r10
!   _temp_442 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=pOpenFile  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0AS",r10
!   if intIsZero (pNewPCB) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_444 = pNewPCB + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_445 = _temp_444 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_443 = *_temp_445  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_443 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_446 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_446 [999 ] into _temp_447
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   initSystemStackTop = _temp_447		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-100]
! ASSIGNMENT STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1186,r13		! source line 1186
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
!   if intIsZero (pNewPCB) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_448 = pNewPCB + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_449 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_450 = initSystemStackTop		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_450  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1189,r13		! source line 1189
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1189,r13		! source line 1189
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_231_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_451
	.word	4		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_452
	.word	8
	.word	4
	.word	_Label_453
	.word	-12
	.word	4
	.word	_Label_454
	.word	-16
	.word	4
	.word	_Label_455
	.word	-20
	.word	4
	.word	_Label_456
	.word	-24
	.word	4
	.word	_Label_457
	.word	-28
	.word	4
	.word	_Label_458
	.word	-32
	.word	4
	.word	_Label_459
	.word	-36
	.word	4
	.word	_Label_460
	.word	-40
	.word	4
	.word	_Label_461
	.word	-44
	.word	4
	.word	_Label_462
	.word	-48
	.word	4
	.word	_Label_463
	.word	-52
	.word	4
	.word	_Label_464
	.word	-56
	.word	4
	.word	_Label_465
	.word	-60
	.word	4
	.word	_Label_466
	.word	-64
	.word	4
	.word	_Label_467
	.word	-68
	.word	4
	.word	_Label_468
	.word	-72
	.word	4
	.word	_Label_469
	.word	-76
	.word	4
	.word	_Label_470
	.word	-80
	.word	4
	.word	_Label_471
	.word	-84
	.word	4
	.word	_Label_472
	.word	-88
	.word	4
	.word	_Label_473
	.word	-92
	.word	4
	.word	_Label_474
	.word	-96
	.word	4
	.word	_Label_475
	.word	-100
	.word	4
	.word	0
_Label_451:
	.ascii	"StartUserProcess\0"
	.align
_Label_452:
	.byte	'I'
	.ascii	"procnum\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_470:
	.byte	'P'
	.ascii	"pNewPCB\0"
	.align
_Label_471:
	.byte	'P'
	.ascii	"pOpenFile\0"
	.align
_Label_472:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_473:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
_Label_474:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_475:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_3288:
	push	r0
	sub	r1,1,r1
	bne	_Label_3288
	mov	1815,r13		! source line 1815
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_476
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_476:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_3289:
	push	r0
	sub	r1,1,r1
	bne	_Label_3289
	mov	1833,r13		! source line 1833
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1844,r13		! source line 1844
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1846,r13		! source line 1846
	mov	"\0\0IF",r10
!   _temp_480 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_481 = _temp_480 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_479 = *_temp_481  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_479 == 0 then goto _Label_478		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_478
!	jmp	_Label_477
_Label_477:
! THEN...
	mov	1847,r13		! source line 1847
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1847,r13		! source line 1847
	mov	"\0\0SE",r10
!   _temp_483 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_484 = _temp_483 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_482 = *_temp_484  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_482) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_478:
! RETURN STATEMENT...
	mov	1846,r13		! source line 1846
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_485
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_486
	.word	-12
	.word	4
	.word	_Label_487
	.word	-16
	.word	4
	.word	_Label_488
	.word	-20
	.word	4
	.word	_Label_489
	.word	-24
	.word	4
	.word	_Label_490
	.word	-28
	.word	4
	.word	_Label_491
	.word	-32
	.word	4
	.word	0
_Label_485:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1853,r13		! source line 1853
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_492
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_492:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3290:
	push	r0
	sub	r1,1,r1
	bne	_Label_3290
	mov	1867,r13		! source line 1867
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1873,r13		! source line 1873
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_493 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_493  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1874,r13		! source line 1874
	mov	"\0\0CA",r10
	call	_function_230_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_494
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_495
	.word	-12
	.word	4
	.word	0
_Label_494:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3291:
	push	r0
	sub	r1,1,r1
	bne	_Label_3291
	mov	1879,r13		! source line 1879
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_496 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_496  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1886,r13		! source line 1886
	mov	"\0\0CA",r10
	call	_function_230_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1886,r13		! source line 1886
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_497
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_498
	.word	-12
	.word	4
	.word	0
_Label_497:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3292:
	push	r0
	sub	r1,1,r1
	bne	_Label_3292
	mov	1891,r13		! source line 1891
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_499 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_499  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CA",r10
	call	_function_230_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_500
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_501
	.word	-12
	.word	4
	.word	0
_Label_500:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3293:
	push	r0
	sub	r1,1,r1
	bne	_Label_3293
	mov	1903,r13		! source line 1903
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_502 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1910,r13		! source line 1910
	mov	"\0\0CA",r10
	call	_function_230_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1910,r13		! source line 1910
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_503
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_504
	.word	-12
	.word	4
	.word	0
_Label_503:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3294:
	push	r0
	sub	r1,1,r1
	bne	_Label_3294
	mov	1915,r13		! source line 1915
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_505 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1922,r13		! source line 1922
	mov	"\0\0CA",r10
	call	_function_230_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_506
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_507
	.word	-12
	.word	4
	.word	0
_Label_506:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3295:
	push	r0
	sub	r1,1,r1
	bne	_Label_3295
	mov	1927,r13		! source line 1927
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1933,r13		! source line 1933
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_508 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_508  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1934,r13		! source line 1934
	mov	"\0\0CA",r10
	call	_function_230_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_509
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_510
	.word	-12
	.word	4
	.word	0
_Label_509:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3296:
	push	r0
	sub	r1,1,r1
	bne	_Label_3296
	mov	1939,r13		! source line 1939
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1945,r13		! source line 1945
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_511 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_511  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1946,r13		! source line 1946
	mov	"\0\0CA",r10
	call	_function_230_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_512
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_513
	.word	-12
	.word	4
	.word	0
_Label_512:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_230_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_230_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3297:
	push	r0
	sub	r1,1,r1
	bne	_Label_3297
	mov	1951,r13		! source line 1951
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_514 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_514  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1956,r13		! source line 1956
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1957,r13		! source line 1957
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_515 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_515  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1958,r13		! source line 1958
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_519 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_518 = *_temp_519  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_518 == 0 then goto _Label_517		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_517
!	jmp	_Label_516
_Label_516:
! THEN...
	mov	1962,r13		! source line 1962
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_521 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_520 = *_temp_521  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_520) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_522
_Label_517:
! ELSE...
	mov	1964,r13		! source line 1964
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_523 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_523  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1964,r13		! source line 1964
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_522:
! SEND STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1972,r13		! source line 1972
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_230_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_524
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_525
	.word	8
	.word	4
	.word	_Label_526
	.word	-12
	.word	4
	.word	_Label_527
	.word	-16
	.word	4
	.word	_Label_528
	.word	-20
	.word	4
	.word	_Label_529
	.word	-24
	.word	4
	.word	_Label_530
	.word	-28
	.word	4
	.word	_Label_531
	.word	-32
	.word	4
	.word	_Label_532
	.word	-36
	.word	4
	.word	0
_Label_524:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_525:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3298:
	push	r0
	sub	r1,1,r1
	bne	_Label_3298
	mov	1977,r13		! source line 1977
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1998,r13		! source line 1998
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3299
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_533
_Label_3299:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_533
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_533
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_547,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_547:
	jmp	_Label_539	! 1:	
	jmp	_Label_546	! 2:	
	jmp	_Label_536	! 3:	
	jmp	_Label_535	! 4:	
	jmp	_Label_538	! 5:	
	jmp	_Label_537	! 6:	
	jmp	_Label_540	! 7:	
	jmp	_Label_541	! 8:	
	jmp	_Label_542	! 9:	
	jmp	_Label_543	! 10:	
	jmp	_Label_544	! 11:	
	jmp	_Label_545	! 12:	
! CASE 4...
_Label_535:
! RETURN STATEMENT...
	mov	2000,r13		! source line 2000
	mov	"\0\0RE",r10
!   Call the function
	mov	2000,r13		! source line 2000
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_548  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_548  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_536:
! CALL STATEMENT...
!   Call the function
	mov	2002,r13		! source line 2002
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_537:
! RETURN STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2005,r13		! source line 2005
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_549  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_549  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_538:
! RETURN STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2007,r13		! source line 2007
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_550  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_550  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_539:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2009,r13		! source line 2009
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_540:
! RETURN STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2012,r13		! source line 2012
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_551  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_551  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_541:
! RETURN STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2014,r13		! source line 2014
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_552  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_552  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_542:
! RETURN STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	2016,r13		! source line 2016
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_553  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_553  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_543:
! RETURN STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	2018,r13		! source line 2018
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_554  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_554  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_544:
! RETURN STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2020,r13		! source line 2020
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_555  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_555  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_545:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2022,r13		! source line 2022
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_546:
! CALL STATEMENT...
!   Call the function
	mov	2025,r13		! source line 2025
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_533:
! CALL STATEMENT...
!   _temp_556 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_556  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2028,r13		! source line 2028
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2029,r13		! source line 2029
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2030,r13		! source line 2030
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_557 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_557  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2031,r13		! source line 2031
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_534:
! RETURN STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_558
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_559
	.word	8
	.word	4
	.word	_Label_560
	.word	12
	.word	4
	.word	_Label_561
	.word	16
	.word	4
	.word	_Label_562
	.word	20
	.word	4
	.word	_Label_563
	.word	24
	.word	4
	.word	_Label_564
	.word	-12
	.word	4
	.word	_Label_565
	.word	-16
	.word	4
	.word	_Label_566
	.word	-20
	.word	4
	.word	_Label_567
	.word	-24
	.word	4
	.word	_Label_568
	.word	-28
	.word	4
	.word	_Label_569
	.word	-32
	.word	4
	.word	_Label_570
	.word	-36
	.word	4
	.word	_Label_571
	.word	-40
	.word	4
	.word	_Label_572
	.word	-44
	.word	4
	.word	_Label_573
	.word	-48
	.word	4
	.word	0
_Label_558:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_559:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_560:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_561:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_562:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_563:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	3,r1
_Label_3300:
	push	r0
	sub	r1,1,r1
	bne	_Label_3300
	mov	2038,r13		! source line 2038
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_574 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2040,r13		! source line 2040
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_575 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_575  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2041,r13		! source line 2041
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2042,r13		! source line 2042
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2043,r13		! source line 2043
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_576
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_577
	.word	8
	.word	4
	.word	_Label_578
	.word	-12
	.word	4
	.word	_Label_579
	.word	-16
	.word	4
	.word	0
_Label_576:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_577:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_3301:
	push	r0
	sub	r1,1,r1
	bne	_Label_3301
	mov	2049,r13		! source line 2049
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_580 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_580  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2050,r13		! source line 2050
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_581
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_582
	.word	-12
	.word	4
	.word	0
_Label_581:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	2,r1
_Label_3302:
	push	r0
	sub	r1,1,r1
	bne	_Label_3302
	mov	2055,r13		! source line 2055
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_583 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_583  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2056,r13		! source line 2056
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_584
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_585
	.word	-12
	.word	4
	.word	0
_Label_584:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	2,r1
_Label_3303:
	push	r0
	sub	r1,1,r1
	bne	_Label_3303
	mov	2061,r13		! source line 2061
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_586 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_586  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2062,r13		! source line 2062
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_587
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_588
	.word	-12
	.word	4
	.word	0
_Label_587:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	3,r1
_Label_3304:
	push	r0
	sub	r1,1,r1
	bne	_Label_3304
	mov	2068,r13		! source line 2068
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_589 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_589  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2069,r13		! source line 2069
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_590 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_590  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2070,r13		! source line 2070
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2071,r13		! source line 2071
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2072,r13		! source line 2072
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_591
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_592
	.word	8
	.word	4
	.word	_Label_593
	.word	-12
	.word	4
	.word	_Label_594
	.word	-16
	.word	4
	.word	0
_Label_591:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_592:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	68,r1
_Label_3305:
	push	r0
	sub	r1,1,r1
	bne	_Label_3305
	mov	2079,r13		! source line 2079
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-264,r4
	mov	23,r3
_Label_3306:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3306
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0AS",r10
	mov	2100,r13		! source line 2100
	mov	"\0\0SE",r10
!   _temp_596 = &strBuffer
	add	r14,-172,r1
	store	r1,[r14+-120]
!   _temp_597 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_599 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_598 = *_temp_599  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_598) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_600 = _temp_598 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_596  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_597  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-148]
! IF STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_602		(int)
	load	[r14+-148],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_602
!	jmp	_Label_601
_Label_601:
! THEN...
	mov	2106,r13		! source line 2106
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_602:
! ASSIGNMENT STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0AS",r10
	mov	2110,r13		! source line 2110
	mov	"\0\0SE",r10
!   _temp_603 = &strBuffer
	add	r14,-172,r1
	store	r1,[r14+-100]
!   _temp_604 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_603  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pOpenFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
! IF STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0IF",r10
!   if intIsZero (pOpenFile) then goto _Label_605
	load	[r14+-128],r1
	cmp	r1,r0
	be	_Label_605
	jmp	_Label_606
_Label_605:
! THEN...
	mov	2112,r13		! source line 2112
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_606:
! SEND STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0SE",r10
!   _temp_607 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-92]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0AS",r10
	mov	2119,r13		! source line 2119
	mov	"\0\0SE",r10
!   _temp_608 = &newAddrSpace
	add	r14,-264,r1
	store	r1,[r14+-88]
!   if intIsZero (pOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_608  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_610		(int)
	load	[r14+-132],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_610
!	jmp	_Label_609
_Label_609:
! THEN...
	mov	2121,r13		! source line 2121
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_611 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_611  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	2121,r13		! source line 2121
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_610:
! SEND STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_613 = *_temp_614  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_613) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = _temp_613 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   _temp_612 = _temp_615		(4 bytes)
	load	[r14+-68],r1
	store	r1,[r14+-80]
!   _temp_616 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_612  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_618 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_617 = *_temp_618  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_617) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_619 = _temp_617 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_619 = newAddrSpace  (sizeInBytes=92)
	add	r14,-264,r5
	load	[r14+-52],r4
	mov	23,r3
_Label_3307:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3307
! SEND STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0SE",r10
!   _temp_620 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=pOpenFile  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_622 = *_temp_623  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_622) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_624 = _temp_622 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_625 = _temp_624 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_621 = *_temp_625  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_621 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_626 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_626 [999 ] into _temp_627
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_627		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2146,r13		! source line 2146
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_628 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_629 = initSystemStackTop		(4 bytes)
	load	[r14+-144],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_629  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	2148,r13		! source line 2148
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_630
	.word	4		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_631
	.word	8
	.word	4
	.word	_Label_632
	.word	-12
	.word	4
	.word	_Label_633
	.word	-16
	.word	4
	.word	_Label_634
	.word	-20
	.word	4
	.word	_Label_635
	.word	-24
	.word	4
	.word	_Label_636
	.word	-28
	.word	4
	.word	_Label_637
	.word	-32
	.word	4
	.word	_Label_638
	.word	-36
	.word	4
	.word	_Label_639
	.word	-40
	.word	4
	.word	_Label_640
	.word	-44
	.word	4
	.word	_Label_641
	.word	-48
	.word	4
	.word	_Label_642
	.word	-52
	.word	4
	.word	_Label_643
	.word	-56
	.word	4
	.word	_Label_644
	.word	-60
	.word	4
	.word	_Label_645
	.word	-64
	.word	4
	.word	_Label_646
	.word	-68
	.word	4
	.word	_Label_647
	.word	-72
	.word	4
	.word	_Label_648
	.word	-76
	.word	4
	.word	_Label_649
	.word	-80
	.word	4
	.word	_Label_650
	.word	-84
	.word	4
	.word	_Label_651
	.word	-88
	.word	4
	.word	_Label_652
	.word	-92
	.word	4
	.word	_Label_653
	.word	-96
	.word	4
	.word	_Label_654
	.word	-100
	.word	4
	.word	_Label_655
	.word	-104
	.word	4
	.word	_Label_656
	.word	-108
	.word	4
	.word	_Label_657
	.word	-112
	.word	4
	.word	_Label_658
	.word	-116
	.word	4
	.word	_Label_659
	.word	-120
	.word	4
	.word	_Label_660
	.word	-124
	.word	4
	.word	_Label_661
	.word	-128
	.word	4
	.word	_Label_662
	.word	-132
	.word	4
	.word	_Label_663
	.word	-136
	.word	4
	.word	_Label_664
	.word	-140
	.word	4
	.word	_Label_665
	.word	-144
	.word	4
	.word	_Label_666
	.word	-148
	.word	4
	.word	_Label_667
	.word	-172
	.word	24
	.word	_Label_668
	.word	-264
	.word	92
	.word	0
_Label_630:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_631:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_661:
	.byte	'P'
	.ascii	"pOpenFile\0"
	.align
_Label_662:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_663:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
_Label_664:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_665:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_666:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_667:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_668:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	22,r1
_Label_3308:
	push	r0
	sub	r1,1,r1
	bne	_Label_3308
	mov	2155,r13		! source line 2155
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0AS",r10
	mov	2160,r13		! source line 2160
	mov	"\0\0SE",r10
!   _temp_669 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-52]
!   _temp_670 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-48]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_672 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_671 = *_temp_672  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_671) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_673 = _temp_671 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_669  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_670  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_675		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_675
!	jmp	_Label_674
_Label_674:
! THEN...
	mov	2165,r13		! source line 2165
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_676 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_676  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2165,r13		! source line 2165
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_675:
! CALL STATEMENT...
!   _temp_677 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_677  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2168,r13		! source line 2168
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_678 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   _temp_679 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_678  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_679  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2170,r13		! source line 2170
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_680 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_680  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2171,r13		! source line 2171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_681 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_681  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2172,r13		! source line 2172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2173,r13		! source line 2173
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_682
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_683
	.word	8
	.word	4
	.word	_Label_684
	.word	-12
	.word	4
	.word	_Label_685
	.word	-16
	.word	4
	.word	_Label_686
	.word	-20
	.word	4
	.word	_Label_687
	.word	-24
	.word	4
	.word	_Label_688
	.word	-28
	.word	4
	.word	_Label_689
	.word	-32
	.word	4
	.word	_Label_690
	.word	-36
	.word	4
	.word	_Label_691
	.word	-40
	.word	4
	.word	_Label_692
	.word	-44
	.word	4
	.word	_Label_693
	.word	-48
	.word	4
	.word	_Label_694
	.word	-52
	.word	4
	.word	_Label_695
	.word	-76
	.word	24
	.word	_Label_696
	.word	-80
	.word	4
	.word	0
_Label_682:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_683:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_695:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_696:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	22,r1
_Label_3309:
	push	r0
	sub	r1,1,r1
	bne	_Label_3309
	mov	2182,r13		! source line 2182
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0AS",r10
	mov	2187,r13		! source line 2187
	mov	"\0\0SE",r10
!   _temp_697 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-52]
!   _temp_698 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-48]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_700 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_699 = *_temp_700  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_699) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_701 = _temp_699 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_697  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_698  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_703		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_703
!	jmp	_Label_702
_Label_702:
! THEN...
	mov	2190,r13		! source line 2190
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_704 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2190,r13		! source line 2190
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_703:
! CALL STATEMENT...
!   _temp_705 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_705  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2193,r13		! source line 2193
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_706 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-24]
!   _temp_707 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_706  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_707  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2195,r13		! source line 2195
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_708 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_708  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2196,r13		! source line 2196
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_709 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_709  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2197,r13		! source line 2197
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2198,r13		! source line 2198
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_710
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_711
	.word	8
	.word	4
	.word	_Label_712
	.word	-12
	.word	4
	.word	_Label_713
	.word	-16
	.word	4
	.word	_Label_714
	.word	-20
	.word	4
	.word	_Label_715
	.word	-24
	.word	4
	.word	_Label_716
	.word	-28
	.word	4
	.word	_Label_717
	.word	-32
	.word	4
	.word	_Label_718
	.word	-36
	.word	4
	.word	_Label_719
	.word	-40
	.word	4
	.word	_Label_720
	.word	-44
	.word	4
	.word	_Label_721
	.word	-48
	.word	4
	.word	_Label_722
	.word	-52
	.word	4
	.word	_Label_723
	.word	-76
	.word	24
	.word	_Label_724
	.word	-80
	.word	4
	.word	0
_Label_710:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_711:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_723:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_724:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	6,r1
_Label_3310:
	push	r0
	sub	r1,1,r1
	bne	_Label_3310
	mov	2207,r13		! source line 2207
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_725 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2208,r13		! source line 2208
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_726 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_726  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2209,r13		! source line 2209
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2210,r13		! source line 2210
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_727 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2211,r13		! source line 2211
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_728 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2212,r13		! source line 2212
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_729 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2213,r13		! source line 2213
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2214,r13		! source line 2214
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2215,r13		! source line 2215
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_730
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_731
	.word	8
	.word	4
	.word	_Label_732
	.word	12
	.word	4
	.word	_Label_733
	.word	16
	.word	4
	.word	_Label_734
	.word	-12
	.word	4
	.word	_Label_735
	.word	-16
	.word	4
	.word	_Label_736
	.word	-20
	.word	4
	.word	_Label_737
	.word	-24
	.word	4
	.word	_Label_738
	.word	-28
	.word	4
	.word	0
_Label_730:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_731:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_732:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_733:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	6,r1
_Label_3311:
	push	r0
	sub	r1,1,r1
	bne	_Label_3311
	mov	2222,r13		! source line 2222
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_739 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2223,r13		! source line 2223
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_740 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2224,r13		! source line 2224
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2225,r13		! source line 2225
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_741 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2226,r13		! source line 2226
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_742 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2227,r13		! source line 2227
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_743 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_743  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2228,r13		! source line 2228
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2229,r13		! source line 2229
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2230,r13		! source line 2230
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_744
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_745
	.word	8
	.word	4
	.word	_Label_746
	.word	12
	.word	4
	.word	_Label_747
	.word	16
	.word	4
	.word	_Label_748
	.word	-12
	.word	4
	.word	_Label_749
	.word	-16
	.word	4
	.word	_Label_750
	.word	-20
	.word	4
	.word	_Label_751
	.word	-24
	.word	4
	.word	_Label_752
	.word	-28
	.word	4
	.word	0
_Label_744:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_745:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_746:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_747:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	4,r1
_Label_3312:
	push	r0
	sub	r1,1,r1
	bne	_Label_3312
	mov	2237,r13		! source line 2237
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_753 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_753  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2239,r13		! source line 2239
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_754 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_754  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2240,r13		! source line 2240
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2241,r13		! source line 2241
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_755 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2242,r13		! source line 2242
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2243,r13		! source line 2243
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2244,r13		! source line 2244
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_756
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_757
	.word	8
	.word	4
	.word	_Label_758
	.word	12
	.word	4
	.word	_Label_759
	.word	-12
	.word	4
	.word	_Label_760
	.word	-16
	.word	4
	.word	_Label_761
	.word	-20
	.word	4
	.word	0
_Label_756:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_757:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_758:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	3,r1
_Label_3313:
	push	r0
	sub	r1,1,r1
	bne	_Label_3313
	mov	2251,r13		! source line 2251
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_762 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_762  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2252,r13		! source line 2252
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_763 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_763  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2253,r13		! source line 2253
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2254,r13		! source line 2254
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2255,r13		! source line 2255
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_764
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_765
	.word	8
	.word	4
	.word	_Label_766
	.word	-12
	.word	4
	.word	_Label_767
	.word	-16
	.word	4
	.word	0
_Label_764:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_765:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_229_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_229_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3314:
	push	r0
	sub	r1,1,r1
	bne	_Label_3314
	mov	2848,r13		! source line 2848
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2852,r13		! source line 2852
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_768 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_768  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2853,r13		! source line 2853
	mov	"\0\0AS",r10
!   _temp_769 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_769) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_771 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_771) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_770 = *_temp_771  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_769 = _temp_770  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2854,r13		! source line 2854
	mov	"\0\0AS",r10
!   _temp_772 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_772) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_774 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_774) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_773 = *_temp_774  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_772 = _temp_773  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2855,r13		! source line 2855
	mov	"\0\0AS",r10
!   _temp_775 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_775) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_777 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_777) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_776 = *_temp_777  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_775 = _temp_776  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2855,r13		! source line 2855
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_229_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_778
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_779
	.word	8
	.word	4
	.word	_Label_780
	.word	12
	.word	4
	.word	_Label_781
	.word	-16
	.word	4
	.word	_Label_782
	.word	-9
	.word	1
	.word	_Label_783
	.word	-20
	.word	4
	.word	_Label_784
	.word	-24
	.word	4
	.word	_Label_785
	.word	-10
	.word	1
	.word	_Label_786
	.word	-28
	.word	4
	.word	_Label_787
	.word	-32
	.word	4
	.word	_Label_788
	.word	-11
	.word	1
	.word	_Label_789
	.word	-36
	.word	4
	.word	_Label_790
	.word	-12
	.word	1
	.word	_Label_791
	.word	-40
	.word	4
	.word	_Label_792
	.word	-44
	.word	4
	.word	0
_Label_778:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_779:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_780:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_782:
	.byte	'C'
	.ascii	"_temp_776\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_785:
	.byte	'C'
	.ascii	"_temp_773\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_788:
	.byte	'C'
	.ascii	"_temp_770\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_790:
	.byte	'C'
	.ascii	"_temp_768\0"
	.align
_Label_791:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_792:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_228_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_228_printFCB,r1
	push	r1
	mov	3,r1
_Label_3315:
	push	r0
	sub	r1,1,r1
	bne	_Label_3315
	mov	2858,r13		! source line 2858
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_794 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_793 = *_temp_794  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_793  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2859,r13		! source line 2859
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2860,r13		! source line 2860
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2860,r13		! source line 2860
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_228_printFCB:
	.word	_sourceFileName
	.word	_Label_795
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_796
	.word	8
	.word	4
	.word	_Label_797
	.word	-12
	.word	4
	.word	_Label_798
	.word	-16
	.word	4
	.word	0
_Label_795:
	.ascii	"printFCB\0"
	.align
_Label_796:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_227_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_227_printOpen,r1
	push	r1
	mov	4,r1
_Label_3316:
	push	r0
	sub	r1,1,r1
	bne	_Label_3316
	mov	2863,r13		! source line 2863
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_799 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_799  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2864,r13		! source line 2864
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_800 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_800  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2865,r13		! source line 2865
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_801 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_801  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2866,r13		! source line 2866
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_227_printOpen:
	.word	_sourceFileName
	.word	_Label_802
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_803
	.word	8
	.word	4
	.word	_Label_804
	.word	-12
	.word	4
	.word	_Label_805
	.word	-16
	.word	4
	.word	_Label_806
	.word	-20
	.word	4
	.word	0
_Label_802:
	.ascii	"printOpen\0"
	.align
_Label_803:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_807
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_807:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_808
	.word	_sourceFileName
	.word	127		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_808:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_3317:
	push	r0
	sub	r1,1,r1
	bne	_Label_3317
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_810		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_810
!	jmp	_Label_809
_Label_809:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_811 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_811  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_810:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_813
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_814
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_815
	.word	12
	.word	4
	.word	_Label_816
	.word	-12
	.word	4
	.word	_Label_817
	.word	-16
	.word	4
	.word	0
_Label_813:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_814:
	.ascii	"Pself\0"
	.align
_Label_815:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_3318:
	push	r0
	sub	r1,1,r1
	bne	_Label_3318
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_819		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_819
!	jmp	_Label_818
_Label_818:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_820 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_820  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_819:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_822		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_822
!	jmp	_Label_821
_Label_821:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_823 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_824 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_824 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_825 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_822:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_826
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_827
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_828
	.word	-12
	.word	4
	.word	_Label_829
	.word	-16
	.word	4
	.word	_Label_830
	.word	-20
	.word	4
	.word	_Label_831
	.word	-24
	.word	4
	.word	_Label_832
	.word	-28
	.word	4
	.word	_Label_833
	.word	-32
	.word	4
	.word	0
_Label_826:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_827:
	.ascii	"Pself\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_832:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_833:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_3319:
	push	r0
	sub	r1,1,r1
	bne	_Label_3319
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_835		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_835
!	jmp	_Label_834
_Label_834:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_836 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_836  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_835:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_838		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_838
!	jmp	_Label_837
_Label_837:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_839 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_838:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_840
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_841
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_842
	.word	-12
	.word	4
	.word	_Label_843
	.word	-16
	.word	4
	.word	_Label_844
	.word	-20
	.word	4
	.word	0
_Label_840:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_841:
	.ascii	"Pself\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_844:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_845
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_845:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_846
	.word	_sourceFileName
	.word	140		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_846:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_3320:
	push	r0
	sub	r1,1,r1
	bne	_Label_3320
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_848
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_849
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_850
	.word	-12
	.word	4
	.word	0
_Label_848:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_849:
	.ascii	"Pself\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_3321:
	push	r0
	sub	r1,1,r1
	bne	_Label_3321
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_852		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_852
!	jmp	_Label_851
_Label_851:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_853 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_853  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_852:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_857		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_857
!   _temp_856 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_858
_Label_857:
!   _temp_856 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_858:
!   if _temp_856 then goto _Label_855 else goto _Label_854
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_854
	jmp	_Label_855
_Label_854:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_859
_Label_855:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_860 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_859:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_861
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_862
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_863
	.word	-16
	.word	4
	.word	_Label_864
	.word	-9
	.word	1
	.word	_Label_865
	.word	-20
	.word	4
	.word	_Label_866
	.word	-24
	.word	4
	.word	0
_Label_861:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_862:
	.ascii	"Pself\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_864:
	.byte	'C'
	.ascii	"_temp_856\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_866:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_3322:
	push	r0
	sub	r1,1,r1
	bne	_Label_3322
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_868		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_868
!	jmp	_Label_867
_Label_867:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_869 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_869  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_868:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_870 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_872		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_872
!	jmp	_Label_871
_Label_871:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_873 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_873 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_874 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_875
_Label_872:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_875:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_876
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_877
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_878
	.word	-12
	.word	4
	.word	_Label_879
	.word	-16
	.word	4
	.word	_Label_880
	.word	-20
	.word	4
	.word	_Label_881
	.word	-24
	.word	4
	.word	_Label_882
	.word	-28
	.word	4
	.word	_Label_883
	.word	-32
	.word	4
	.word	0
_Label_876:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_877:
	.ascii	"Pself\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_882:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_883:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_3323:
	push	r0
	sub	r1,1,r1
	bne	_Label_3323
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_886		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_886
!	jmp	_Label_885
_Label_885:
!   _temp_884 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_887
_Label_886:
!   _temp_884 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_887:
!   ReturnResult: _temp_884  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_888
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_889
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_890
	.word	-9
	.word	1
	.word	0
_Label_888:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_889:
	.ascii	"Pself\0"
	.align
_Label_890:
	.byte	'C'
	.ascii	"_temp_884\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_891
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_891:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_892
	.word	_sourceFileName
	.word	154		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_892:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_3324:
	push	r0
	sub	r1,1,r1
	bne	_Label_3324
	mov	380,r13		! source line 380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_894
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_895
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_896
	.word	-12
	.word	4
	.word	0
_Label_894:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_895:
	.ascii	"Pself\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_3325:
	push	r0
	sub	r1,1,r1
	bne	_Label_3325
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
	mov	389,r13		! source line 389
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_899  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_899 then goto _Label_898 else goto _Label_897
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_897
	jmp	_Label_898
_Label_897:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_900 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_900  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	390,r13		! source line 390
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_898:
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   _temp_901 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_902
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_903
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_904
	.word	12
	.word	4
	.word	_Label_905
	.word	-16
	.word	4
	.word	_Label_906
	.word	-20
	.word	4
	.word	_Label_907
	.word	-9
	.word	1
	.word	_Label_908
	.word	-24
	.word	4
	.word	0
_Label_902:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_903:
	.ascii	"Pself\0"
	.align
_Label_904:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_907:
	.byte	'C'
	.ascii	"_temp_899\0"
	.align
_Label_908:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_3326:
	push	r0
	sub	r1,1,r1
	bne	_Label_3326
	mov	402,r13		! source line 402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0IF",r10
	mov	406,r13		! source line 406
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_911  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_911 then goto _Label_910 else goto _Label_909
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_909
	jmp	_Label_910
_Label_909:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_912 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_912  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	407,r13		! source line 407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_910:
! ASSIGNMENT STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
!   _temp_913 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_915		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_915
!	jmp	_Label_914
_Label_914:
! THEN...
	mov	412,r13		! source line 412
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_916 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_916 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_917 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_915:
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	415,r13		! source line 415
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_918
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_919
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_920
	.word	12
	.word	4
	.word	_Label_921
	.word	-16
	.word	4
	.word	_Label_922
	.word	-20
	.word	4
	.word	_Label_923
	.word	-24
	.word	4
	.word	_Label_924
	.word	-28
	.word	4
	.word	_Label_925
	.word	-9
	.word	1
	.word	_Label_926
	.word	-32
	.word	4
	.word	_Label_927
	.word	-36
	.word	4
	.word	0
_Label_918:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_919:
	.ascii	"Pself\0"
	.align
_Label_920:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_925:
	.byte	'C'
	.ascii	"_temp_911\0"
	.align
_Label_926:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_927:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_3327:
	push	r0
	sub	r1,1,r1
	bne	_Label_3327
	mov	420,r13		! source line 420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0IF",r10
	mov	424,r13		! source line 424
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_930  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_930 then goto _Label_929 else goto _Label_928
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_928
	jmp	_Label_929
_Label_928:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_931 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_931  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	425,r13		! source line 425
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_929:
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0WH",r10
_Label_932:
!	jmp	_Label_933
_Label_933:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_935 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_936
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_936
	jmp	_Label_937
_Label_936:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_934
! END IF...
_Label_937:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_938 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_938 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_939 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_932
_Label_934:
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_940
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_941
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_942
	.word	12
	.word	4
	.word	_Label_943
	.word	-16
	.word	4
	.word	_Label_944
	.word	-20
	.word	4
	.word	_Label_945
	.word	-24
	.word	4
	.word	_Label_946
	.word	-28
	.word	4
	.word	_Label_947
	.word	-9
	.word	1
	.word	_Label_948
	.word	-32
	.word	4
	.word	_Label_949
	.word	-36
	.word	4
	.word	0
_Label_940:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_941:
	.ascii	"Pself\0"
	.align
_Label_942:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_947:
	.byte	'C'
	.ascii	"_temp_930\0"
	.align
_Label_948:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_949:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_950
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	jmp	_Method_P_Kernel_HoareCondition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_950:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_951
	.word	_sourceFileName
	.word	167		! line number
	.word	36		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_951:
	.ascii	"HoareCondition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareCondition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_1,r1
	push	r1
	mov	1,r1
_Label_3328:
	push	r0
	sub	r1,1,r1
	bne	_Label_3328
	mov	475,r13		! source line 475
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_953
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_954
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_955
	.word	-12
	.word	4
	.word	0
_Label_953:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_954:
	.ascii	"Pself\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_HoareCondition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_2,r1
	push	r1
	mov	6,r1
_Label_3329:
	push	r0
	sub	r1,1,r1
	bne	_Label_3329
	mov	481,r13		! source line 481
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0IF",r10
	mov	484,r13		! source line 484
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_958  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_958 then goto _Label_957 else goto _Label_956
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_956
	jmp	_Label_957
_Label_956:
! THEN...
	mov	485,r13		! source line 485
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_959 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_959  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	485,r13		! source line 485
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_957:
! ASSIGNMENT STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	487,r13		! source line 487
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0SE",r10
!   _temp_960 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	491,r13		! source line 491
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_961
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_962
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_963
	.word	12
	.word	4
	.word	_Label_964
	.word	-16
	.word	4
	.word	_Label_965
	.word	-20
	.word	4
	.word	_Label_966
	.word	-9
	.word	1
	.word	_Label_967
	.word	-24
	.word	4
	.word	0
_Label_961:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_962:
	.ascii	"Pself\0"
	.align
_Label_963:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_966:
	.byte	'C'
	.ascii	"_temp_958\0"
	.align
_Label_967:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_HoareCondition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_3,r1
	push	r1
	mov	10,r1
_Label_3330:
	push	r0
	sub	r1,1,r1
	bne	_Label_3330
	mov	496,r13		! source line 496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0IF",r10
	mov	503,r13		! source line 503
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_970  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_970 then goto _Label_969 else goto _Label_968
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_968
	jmp	_Label_969
_Label_968:
! THEN...
	mov	504,r13		! source line 504
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_971 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_971  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	504,r13		! source line 504
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_969:
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	506,r13		! source line 506
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0AS",r10
	mov	507,r13		! source line 507
	mov	"\0\0SE",r10
!   _temp_972 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! IF STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_974		(int)
	load	[r14+-40],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_974
!	jmp	_Label_973
_Label_973:
! THEN...
	mov	510,r13		! source line 510
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_975 = t + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_975 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	511,r13		! source line 511
	mov	"\0\0SE",r10
!   _temp_976 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0AS",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_977 = mutex + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_977 = t  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_974:
! ASSIGNMENT STATEMENT...
	mov	516,r13		! source line 516
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	516,r13		! source line 516
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! RETURN STATEMENT...
	mov	516,r13		! source line 516
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_978
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_979
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_980
	.word	12
	.word	4
	.word	_Label_981
	.word	-16
	.word	4
	.word	_Label_982
	.word	-20
	.word	4
	.word	_Label_983
	.word	-24
	.word	4
	.word	_Label_984
	.word	-28
	.word	4
	.word	_Label_985
	.word	-32
	.word	4
	.word	_Label_986
	.word	-9
	.word	1
	.word	_Label_987
	.word	-36
	.word	4
	.word	_Label_988
	.word	-40
	.word	4
	.word	0
_Label_978:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_979:
	.ascii	"Pself\0"
	.align
_Label_980:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_986:
	.byte	'C'
	.ascii	"_temp_970\0"
	.align
_Label_987:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_988:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_HoareCondition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_4,r1
	push	r1
	mov	9,r1
_Label_3331:
	push	r0
	sub	r1,1,r1
	bne	_Label_3331
	mov	521,r13		! source line 521
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0IF",r10
	mov	525,r13		! source line 525
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_991  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_991 then goto _Label_990 else goto _Label_989
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_989
	jmp	_Label_990
_Label_989:
! THEN...
	mov	526,r13		! source line 526
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_992 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_992  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	526,r13		! source line 526
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_990:
! ASSIGNMENT STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	528,r13		! source line 528
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	529,r13		! source line 529
	mov	"\0\0WH",r10
_Label_993:
!	jmp	_Label_994
_Label_994:
	mov	529,r13		! source line 529
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	530,r13		! source line 530
	mov	"\0\0AS",r10
	mov	530,r13		! source line 530
	mov	"\0\0SE",r10
!   _temp_996 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	531,r13		! source line 531
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_997
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_997
	jmp	_Label_998
_Label_997:
! THEN...
	mov	532,r13		! source line 532
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	532,r13		! source line 532
	mov	"\0\0BR",r10
	jmp	_Label_995
! END IF...
_Label_998:
! ASSIGNMENT STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_999 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_999 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	535,r13		! source line 535
	mov	"\0\0SE",r10
!   _temp_1000 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_993
_Label_995:
! ASSIGNMENT STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	537,r13		! source line 537
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_4:
	.word	_sourceFileName
	.word	_Label_1001
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1002
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1003
	.word	12
	.word	4
	.word	_Label_1004
	.word	-16
	.word	4
	.word	_Label_1005
	.word	-20
	.word	4
	.word	_Label_1006
	.word	-24
	.word	4
	.word	_Label_1007
	.word	-28
	.word	4
	.word	_Label_1008
	.word	-9
	.word	1
	.word	_Label_1009
	.word	-32
	.word	4
	.word	_Label_1010
	.word	-36
	.word	4
	.word	0
_Label_1001:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1002:
	.ascii	"Pself\0"
	.align
_Label_1003:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1008:
	.byte	'C'
	.ascii	"_temp_991\0"
	.align
_Label_1009:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1010:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1011
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_1011:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1012
	.word	_sourceFileName
	.word	181		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1012:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_3332:
	push	r0
	sub	r1,1,r1
	bne	_Label_3332
	mov	551,r13		! source line 551
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0AS",r10
!   _temp_1013 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1013) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1013 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0AS",r10
!   _temp_1014 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1014 [0 ] into _temp_1015
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_1015 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0AS",r10
!   _temp_1016 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1016 [999 ] into _temp_1017
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_1017 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0AS",r10
!   _temp_1018 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1018 [999 ] into _temp_1019
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_1019		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0AS",r10
!   _temp_1020 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1022 = &_temp_1021
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1022 = _temp_1022 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1024:
!   Data Move: *_temp_1022 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1022 = _temp_1022 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1023 = _temp_1023 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1023) then goto _Label_1024
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1024
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1025 = &_temp_1021
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3333
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3333:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1020 = *_temp_1025  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3334:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3334
! ASSIGNMENT STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0AS",r10
!   _temp_1026 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1028 = &_temp_1027
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1028 = _temp_1028 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1030:
!   Data Move: *_temp_1028 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1028 = _temp_1028 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1029 = _temp_1029 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1029) then goto _Label_1030
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1030
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1031 = &_temp_1027
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3335
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3335:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1026 = *_temp_1031  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3336:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3336
! RETURN STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_1032
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1033
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1034
	.word	12
	.word	4
	.word	_Label_1035
	.word	-12
	.word	4
	.word	_Label_1036
	.word	-16
	.word	4
	.word	_Label_1037
	.word	-20
	.word	4
	.word	_Label_1038
	.word	-84
	.word	64
	.word	_Label_1039
	.word	-88
	.word	4
	.word	_Label_1040
	.word	-92
	.word	4
	.word	_Label_1041
	.word	-96
	.word	4
	.word	_Label_1042
	.word	-100
	.word	4
	.word	_Label_1043
	.word	-156
	.word	56
	.word	_Label_1044
	.word	-160
	.word	4
	.word	_Label_1045
	.word	-164
	.word	4
	.word	_Label_1046
	.word	-168
	.word	4
	.word	_Label_1047
	.word	-172
	.word	4
	.word	_Label_1048
	.word	-176
	.word	4
	.word	_Label_1049
	.word	-180
	.word	4
	.word	_Label_1050
	.word	-184
	.word	4
	.word	_Label_1051
	.word	-188
	.word	4
	.word	0
_Label_1032:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1033:
	.ascii	"Pself\0"
	.align
_Label_1034:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_3337:
	push	r0
	sub	r1,1,r1
	bne	_Label_3337
	mov	570,r13		! source line 570
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	581,r13		! source line 581
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	581,r13		! source line 581
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	583,r13		! source line 583
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	585,r13		! source line 585
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1052 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1052  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1054 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1053  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_1055
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1056
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1057
	.word	12
	.word	4
	.word	_Label_1058
	.word	16
	.word	4
	.word	_Label_1059
	.word	-12
	.word	4
	.word	_Label_1060
	.word	-16
	.word	4
	.word	_Label_1061
	.word	-20
	.word	4
	.word	_Label_1062
	.word	-24
	.word	4
	.word	_Label_1063
	.word	-28
	.word	4
	.word	0
_Label_1055:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1056:
	.ascii	"Pself\0"
	.align
_Label_1057:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1058:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1062:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1063:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3338:
	push	r0
	sub	r1,1,r1
	bne	_Label_3338
	mov	594,r13		! source line 594
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1066 == _P_Kernel_currentThread then goto _Label_1065		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1065
!	jmp	_Label_1064
_Label_1064:
! THEN...
	mov	611,r13		! source line 611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1067 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1067  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	611,r13		! source line 611
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1065:
! ASSIGNMENT STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0AS",r10
	mov	617,r13		! source line 617
	mov	"\0\0SE",r10
!   _temp_1068 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1070		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1070
!	jmp	_Label_1069
_Label_1069:
! THEN...
	mov	622,r13		! source line 622
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	622,r13		! source line 622
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1072		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1072
!	jmp	_Label_1071
_Label_1071:
! THEN...
	mov	623,r13		! source line 623
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1073 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1073  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	623,r13		! source line 623
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1072:
! ASSIGNMENT STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	626,r13		! source line 626
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1075 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1074  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1070:
! ASSIGNMENT STATEMENT...
	mov	629,r13		! source line 629
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	629,r13		! source line 629
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_1076
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1077
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1078
	.word	-12
	.word	4
	.word	_Label_1079
	.word	-16
	.word	4
	.word	_Label_1080
	.word	-20
	.word	4
	.word	_Label_1081
	.word	-24
	.word	4
	.word	_Label_1082
	.word	-28
	.word	4
	.word	_Label_1083
	.word	-32
	.word	4
	.word	_Label_1084
	.word	-36
	.word	4
	.word	_Label_1085
	.word	-40
	.word	4
	.word	_Label_1086
	.word	-44
	.word	4
	.word	0
_Label_1076:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1077:
	.ascii	"Pself\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1084:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1085:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1086:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_3339:
	push	r0
	sub	r1,1,r1
	bne	_Label_3339
	mov	634,r13		! source line 634
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	646,r13		! source line 646
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1088		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1088
!	jmp	_Label_1087
_Label_1087:
! THEN...
	mov	647,r13		! source line 647
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1089 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1089  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	647,r13		! source line 647
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1088:
! IF STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1092 == _P_Kernel_currentThread then goto _Label_1091		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1091
!	jmp	_Label_1090
_Label_1090:
! THEN...
	mov	651,r13		! source line 651
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1093 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1093  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	651,r13		! source line 651
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1091:
! ASSIGNMENT STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	657,r13		! source line 657
	mov	"\0\0AS",r10
	mov	657,r13		! source line 657
	mov	"\0\0SE",r10
!   _temp_1094 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1095
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1095
	jmp	_Label_1096
_Label_1095:
! THEN...
	mov	659,r13		! source line 659
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1097 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1097  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	659,r13		! source line 659
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1096:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1098
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1099
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1100
	.word	-12
	.word	4
	.word	_Label_1101
	.word	-16
	.word	4
	.word	_Label_1102
	.word	-20
	.word	4
	.word	_Label_1103
	.word	-24
	.word	4
	.word	_Label_1104
	.word	-28
	.word	4
	.word	_Label_1105
	.word	-32
	.word	4
	.word	0
_Label_1098:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1099:
	.ascii	"Pself\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1105:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_3340:
	push	r0
	sub	r1,1,r1
	bne	_Label_3340
	mov	666,r13		! source line 666
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0IF",r10
!   _temp_1109 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1109 [0 ] into _temp_1110
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1108 = *_temp_1110  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1108 == 606348324 then goto _Label_1107		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1107
!	jmp	_Label_1106
_Label_1106:
! THEN...
	mov	673,r13		! source line 673
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1111 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1111  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	673,r13		! source line 673
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1112
_Label_1107:
! ELSE...
	mov	674,r13		! source line 674
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	674,r13		! source line 674
	mov	"\0\0IF",r10
!   _temp_1116 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1116 [999 ] into _temp_1117
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1115 = *_temp_1117  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1115 == 606348324 then goto _Label_1114		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1114
!	jmp	_Label_1113
_Label_1113:
! THEN...
	mov	675,r13		! source line 675
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1118 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1118  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	675,r13		! source line 675
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1114:
! END IF...
_Label_1112:
! RETURN STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1119
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1120
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1121
	.word	-12
	.word	4
	.word	_Label_1122
	.word	-16
	.word	4
	.word	_Label_1123
	.word	-20
	.word	4
	.word	_Label_1124
	.word	-24
	.word	4
	.word	_Label_1125
	.word	-28
	.word	4
	.word	_Label_1126
	.word	-32
	.word	4
	.word	_Label_1127
	.word	-36
	.word	4
	.word	_Label_1128
	.word	-40
	.word	4
	.word	0
_Label_1119:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1120:
	.ascii	"Pself\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_3341:
	push	r0
	sub	r1,1,r1
	bne	_Label_3341
	mov	681,r13		! source line 681
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	687,r13		! source line 687
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	687,r13		! source line 687
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1129 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1129  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	688,r13		! source line 688
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1130 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1130  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	690,r13		! source line 690
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1131  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	691,r13		! source line 691
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1132 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1132  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1133 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1133  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	694,r13		! source line 694
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1138 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1139 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1138  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1134:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1139 then goto _Label_1137		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1137
_Label_1135:
	mov	694,r13		! source line 694
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1140 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1140  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1141 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1141  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1142 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1142  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1144 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1144 [i ] into _temp_1145
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_1143 = *_temp_1145  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1143  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1146 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1146  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1148 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1148 [i ] into _temp_1149
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_1147 = *_temp_1149  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1147  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	700,r13		! source line 700
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1150 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1150  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1136:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1134
! END FOR
_Label_1137:
! CALL STATEMENT...
!   _temp_1151 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-116]
!   _temp_1152 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1151  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1152  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1153 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-108]
!   _temp_1155 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1155 [0 ] into _temp_1156
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1154 = _temp_1156		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1153  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1154  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	705,r13		! source line 705
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1159
	cmp	r1,2
	be	_Label_1160
	cmp	r1,3
	be	_Label_1161
	cmp	r1,4
	be	_Label_1162
	cmp	r1,5
	be	_Label_1163
	jmp	_Label_1157
! CASE 1...
_Label_1159:
! CALL STATEMENT...
!   _temp_1164 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1164  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0BR",r10
	jmp	_Label_1158
! CASE 2...
_Label_1160:
! CALL STATEMENT...
!   _temp_1165 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1165  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	710,r13		! source line 710
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0BR",r10
	jmp	_Label_1158
! CASE 3...
_Label_1161:
! CALL STATEMENT...
!   _temp_1166 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1166  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	714,r13		! source line 714
	mov	"\0\0BR",r10
	jmp	_Label_1158
! CASE 4...
_Label_1162:
! CALL STATEMENT...
!   _temp_1167 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1167  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0BR",r10
	jmp	_Label_1158
! CASE 5...
_Label_1163:
! CALL STATEMENT...
!   _temp_1168 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1168  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0BR",r10
	jmp	_Label_1158
! DEFAULT CASE...
_Label_1157:
! CALL STATEMENT...
!   _temp_1169 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1169  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	722,r13		! source line 722
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1158:
! CALL STATEMENT...
!   _temp_1170 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1170  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1171 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1171  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1176 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1177 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1176  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1172:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1177 then goto _Label_1175		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1175
_Label_1173:
	mov	728,r13		! source line 728
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1178 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1178  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1179 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1179  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1180 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1180  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1182 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1182 [i ] into _temp_1183
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1181 = *_temp_1183  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1181  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1184 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1184  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1186 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1186 [i ] into _temp_1187
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1185 = *_temp_1187  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1185  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	734,r13		! source line 734
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1188 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1188  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1174:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1172
! END FOR
_Label_1175:
! ASSIGNMENT STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1189
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1190
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1191
	.word	-12
	.word	4
	.word	_Label_1192
	.word	-16
	.word	4
	.word	_Label_1193
	.word	-20
	.word	4
	.word	_Label_1194
	.word	-24
	.word	4
	.word	_Label_1195
	.word	-28
	.word	4
	.word	_Label_1196
	.word	-32
	.word	4
	.word	_Label_1197
	.word	-36
	.word	4
	.word	_Label_1198
	.word	-40
	.word	4
	.word	_Label_1199
	.word	-44
	.word	4
	.word	_Label_1200
	.word	-48
	.word	4
	.word	_Label_1201
	.word	-52
	.word	4
	.word	_Label_1202
	.word	-56
	.word	4
	.word	_Label_1203
	.word	-60
	.word	4
	.word	_Label_1204
	.word	-64
	.word	4
	.word	_Label_1205
	.word	-68
	.word	4
	.word	_Label_1206
	.word	-72
	.word	4
	.word	_Label_1207
	.word	-76
	.word	4
	.word	_Label_1208
	.word	-80
	.word	4
	.word	_Label_1209
	.word	-84
	.word	4
	.word	_Label_1210
	.word	-88
	.word	4
	.word	_Label_1211
	.word	-92
	.word	4
	.word	_Label_1212
	.word	-96
	.word	4
	.word	_Label_1213
	.word	-100
	.word	4
	.word	_Label_1214
	.word	-104
	.word	4
	.word	_Label_1215
	.word	-108
	.word	4
	.word	_Label_1216
	.word	-112
	.word	4
	.word	_Label_1217
	.word	-116
	.word	4
	.word	_Label_1218
	.word	-120
	.word	4
	.word	_Label_1219
	.word	-124
	.word	4
	.word	_Label_1220
	.word	-128
	.word	4
	.word	_Label_1221
	.word	-132
	.word	4
	.word	_Label_1222
	.word	-136
	.word	4
	.word	_Label_1223
	.word	-140
	.word	4
	.word	_Label_1224
	.word	-144
	.word	4
	.word	_Label_1225
	.word	-148
	.word	4
	.word	_Label_1226
	.word	-152
	.word	4
	.word	_Label_1227
	.word	-156
	.word	4
	.word	_Label_1228
	.word	-160
	.word	4
	.word	_Label_1229
	.word	-164
	.word	4
	.word	_Label_1230
	.word	-168
	.word	4
	.word	_Label_1231
	.word	-172
	.word	4
	.word	_Label_1232
	.word	-176
	.word	4
	.word	_Label_1233
	.word	-180
	.word	4
	.word	_Label_1234
	.word	-184
	.word	4
	.word	_Label_1235
	.word	-188
	.word	4
	.word	_Label_1236
	.word	-192
	.word	4
	.word	_Label_1237
	.word	-196
	.word	4
	.word	0
_Label_1189:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1190:
	.ascii	"Pself\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1236:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1237:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1238
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1238:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1239
	.word	_sourceFileName
	.word	208		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1239:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11478,r1
_Label_3342:
	push	r0
	sub	r1,1,r1
	bne	_Label_3342
	mov	807,r13		! source line 807
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1240 = _StringConst_110
	set	_StringConst_110,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1240  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0AS",r10
!   _temp_1241 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1243 = &_temp_1242
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1243 = _temp_1243 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1245 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3343:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3343
!   _temp_1245 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1247:
!   Data Move: *_temp_1243 = _temp_1245  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3344:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3344
!   _temp_1243 = _temp_1243 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1244 = _temp_1244 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1244) then goto _Label_1247
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1247
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1248 = &_temp_1242
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3345
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3345:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1241 = *_temp_1248  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3346:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3346
! ASSIGNMENT STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	815,r13		! source line 815
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41676,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41676,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	817,r13		! source line 817
	mov	"\0\0SE",r10
!   _temp_1252 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0SE",r10
!   _temp_1253 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-60]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	820,r13		! source line 820
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1258 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1259 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_1258  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1254:
!   Perform the FOR-LOOP termination test
!   if j > _temp_1259 then goto _Label_1257		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1257
_Label_1255:
	mov	820,r13		! source line 820
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	821,r13		! source line 821
	mov	"\0\0SE",r10
!   _temp_1260 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-48]
!   _temp_1261 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1261 [j ] into _temp_1262
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1260  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0AS",r10
!   _temp_1263 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1263 [j ] into _temp_1264
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1265 = _temp_1264 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1265 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0SE",r10
!   _temp_1267 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1267 [j ] into _temp_1268
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1266 = _temp_1268		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1269 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1266  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1256:
!   j = j + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1254
! END FOR
_Label_1257:
! RETURN STATEMENT...
	mov	820,r13		! source line 820
	mov	"\0\0RE",r10
	set	45916,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1270
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1271
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1272
	.word	-12
	.word	4
	.word	_Label_1273
	.word	-16
	.word	4
	.word	_Label_1274
	.word	-20
	.word	4
	.word	_Label_1275
	.word	-24
	.word	4
	.word	_Label_1276
	.word	-28
	.word	4
	.word	_Label_1277
	.word	-32
	.word	4
	.word	_Label_1278
	.word	-36
	.word	4
	.word	_Label_1279
	.word	-40
	.word	4
	.word	_Label_1280
	.word	-44
	.word	4
	.word	_Label_1281
	.word	-48
	.word	4
	.word	_Label_1282
	.word	-52
	.word	4
	.word	_Label_1283
	.word	-56
	.word	4
	.word	_Label_1284
	.word	-60
	.word	4
	.word	_Label_1285
	.word	-64
	.word	4
	.word	_Label_1286
	.word	-68
	.word	4
	.word	_Label_1287
	.word	-72
	.word	4
	.word	_Label_1288
	.word	-76
	.word	4
	.word	_Label_1289
	.word	-80
	.word	4
	.word	_Label_1290
	.word	-84
	.word	4
	.word	_Label_1291
	.word	-4248
	.word	4164
	.word	_Label_1292
	.word	-4252
	.word	4
	.word	_Label_1293
	.word	-4256
	.word	4
	.word	_Label_1294
	.word	-45900
	.word	41644
	.word	_Label_1295
	.word	-45904
	.word	4
	.word	_Label_1296
	.word	-45908
	.word	4
	.word	_Label_1297
	.word	-45912
	.word	4
	.word	0
_Label_1270:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1271:
	.ascii	"Pself\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1297:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_3347:
	push	r0
	sub	r1,1,r1
	bne	_Label_3347
	mov	831,r13		! source line 831
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	838,r13		! source line 838
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	838,r13		! source line 838
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1298 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1298  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1303 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1304 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1303  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1299:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1304 then goto _Label_1302		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1302
_Label_1300:
	mov	840,r13		! source line 840
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1305 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1306 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1306  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1308 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1308 [i ] into _temp_1309
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1307 = _temp_1309		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1307  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	844,r13		! source line 844
	mov	"\0\0CA",r10
	call	_function_233_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1301:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1299
! END FOR
_Label_1302:
! CALL STATEMENT...
!   _temp_1310 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1310  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0SE",r10
!   _temp_1311 = _function_232_PrintObjectAddr
	set	_function_232_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1312 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1311  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1313
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1314
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1315
	.word	-12
	.word	4
	.word	_Label_1316
	.word	-16
	.word	4
	.word	_Label_1317
	.word	-20
	.word	4
	.word	_Label_1318
	.word	-24
	.word	4
	.word	_Label_1319
	.word	-28
	.word	4
	.word	_Label_1320
	.word	-32
	.word	4
	.word	_Label_1321
	.word	-36
	.word	4
	.word	_Label_1322
	.word	-40
	.word	4
	.word	_Label_1323
	.word	-44
	.word	4
	.word	_Label_1324
	.word	-48
	.word	4
	.word	_Label_1325
	.word	-52
	.word	4
	.word	_Label_1326
	.word	-56
	.word	4
	.word	_Label_1327
	.word	-60
	.word	4
	.word	0
_Label_1313:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1314:
	.ascii	"Pself\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1326:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1327:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	12,r1
_Label_3348:
	push	r0
	sub	r1,1,r1
	bne	_Label_3348
	mov	854,r13		! source line 854
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0SE",r10
!   _temp_1328 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0IF",r10
	mov	861,r13		! source line 861
	mov	"\0\0SE",r10
!   _temp_1331 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1329 else goto _Label_1330
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1330
	jmp	_Label_1329
_Label_1329:
! THEN...
	mov	862,r13		! source line 862
	mov	"\0\0TN",r10
! WHILE STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0WH",r10
_Label_1332:
!   if threadInUse == 0 then goto _Label_1336		(int)
	load	[r14+-48],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1336
!   _temp_1335 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_1337
_Label_1336:
!   _temp_1335 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_1337:
!   if _temp_1335 then goto _Label_1334 else goto _Label_1333
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1333
	jmp	_Label_1334
_Label_1333:
	mov	862,r13		! source line 862
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0AS",r10
	mov	863,r13		! source line 863
	mov	"\0\0SE",r10
!   _temp_1338 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Remove
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadInUse  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0IF",r10
!   if threadInUse == 0 then goto _Label_1342		(int)
	load	[r14+-48],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1342
!   _temp_1341 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1343
_Label_1342:
!   _temp_1341 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1343:
!   if _temp_1341 then goto _Label_1340 else goto _Label_1339
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1339
	jmp	_Label_1340
_Label_1339:
! THEN...
	mov	865,r13		! source line 865
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0SE",r10
!   _temp_1344 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_1345 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1344  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1340:
! END WHILE...
	jmp	_Label_1332
_Label_1334:
	jmp	_Label_1346
_Label_1330:
! ELSE...
	mov	869,r13		! source line 869
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0AS",r10
	mov	869,r13		! source line 869
	mov	"\0\0SE",r10
!   _temp_1347 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadInUse  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! END IF...
_Label_1346:
! ASSIGNMENT STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0AS",r10
!   if intIsZero (threadInUse) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1348 = threadInUse + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1348 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	875,r13		! source line 875
	mov	"\0\0SE",r10
!   _temp_1349 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	877,r13		! source line 877
	mov	"\0\0RE",r10
!   ReturnResult: threadInUse  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1350
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1351
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1352
	.word	-16
	.word	4
	.word	_Label_1353
	.word	-20
	.word	4
	.word	_Label_1354
	.word	-24
	.word	4
	.word	_Label_1355
	.word	-28
	.word	4
	.word	_Label_1356
	.word	-32
	.word	4
	.word	_Label_1357
	.word	-9
	.word	1
	.word	_Label_1358
	.word	-36
	.word	4
	.word	_Label_1359
	.word	-10
	.word	1
	.word	_Label_1360
	.word	-40
	.word	4
	.word	_Label_1361
	.word	-44
	.word	4
	.word	_Label_1362
	.word	-48
	.word	4
	.word	0
_Label_1350:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1351:
	.ascii	"Pself\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1357:
	.byte	'C'
	.ascii	"_temp_1341\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1359:
	.byte	'C'
	.ascii	"_temp_1335\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1362:
	.byte	'P'
	.ascii	"threadInUse\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_3349:
	push	r0
	sub	r1,1,r1
	bne	_Label_3349
	mov	883,r13		! source line 883
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	885,r13		! source line 885
	mov	"\0\0SE",r10
!   _temp_1363 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1364 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1364 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0SE",r10
!   _temp_1365 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	889,r13		! source line 889
	mov	"\0\0SE",r10
!   _temp_1366 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1367 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1366  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0SE",r10
!   _temp_1368 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1369
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1370
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1371
	.word	12
	.word	4
	.word	_Label_1372
	.word	-12
	.word	4
	.word	_Label_1373
	.word	-16
	.word	4
	.word	_Label_1374
	.word	-20
	.word	4
	.word	_Label_1375
	.word	-24
	.word	4
	.word	_Label_1376
	.word	-28
	.word	4
	.word	_Label_1377
	.word	-32
	.word	4
	.word	0
_Label_1369:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1370:
	.ascii	"Pself\0"
	.align
_Label_1371:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
! 
! ===============  CLASS TestHoareSemantic  ===============
! 
! Dispatch Table:
! 
_P_Kernel_TestHoareSemantic:
	.word	_Label_1378
	jmp	_Method_P_Kernel_TestHoareSemantic_1	! 4:	Init
	jmp	_Method_P_Kernel_TestHoareSemantic_2	! 8:	Print
	jmp	_Method_P_Kernel_TestHoareSemantic_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_TestHoareSemantic_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1378:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1379
	.word	_sourceFileName
	.word	225		! line number
	.word	41716		! size of instances, in bytes
	.word	_P_Kernel_TestHoareSemantic
	.word	_P_System_Object
	.word	0
_Label_1379:
	.ascii	"TestHoareSemantic\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_TestHoareSemantic_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_1,r1
	push	r1
	mov	11504,r1
_Label_3350:
	push	r0
	sub	r1,1,r1
	bne	_Label_3350
	mov	1348,r13		! source line 1348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0AS",r10
!   _temp_1380 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1382 = &_temp_1381
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-4364]
!   _temp_1382 = _temp_1382 + 4
	load	[r14+-4364],r1
	add	r1,4,r1
	store	r1,[r14+-4364]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1384 = zeros  (sizeInBytes=4164)
	add	r14,-4356,r4
	mov	1041,r3
_Label_3351:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3351
!   _temp_1384 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4356]
	mov	10,r1
	store	r1,[r14+-4360]
_Label_1386:
!   Data Move: *_temp_1382 = _temp_1384  (sizeInBytes=4164)
	add	r14,-4356,r5
	load	[r14+-4364],r4
	mov	1041,r3
_Label_3352:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3352
!   _temp_1382 = _temp_1382 + 4164
	load	[r14+-4364],r1
	add	r1,4164,r1
	store	r1,[r14+-4364]
!   _temp_1383 = _temp_1383 + -1
	load	[r14+-4360],r1
	add	r1,-1,r1
	store	r1,[r14+-4360]
!   if intNotZero (_temp_1383) then goto _Label_1386
	load	[r14+-4360],r1
	cmp	r1,r0
	bne	_Label_1386
!   Initialize the array size...
	mov	10,r1
	set	-46008,r2
	store	r1,[r14+r2]
!   _temp_1387 = &_temp_1381
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-188]
!   make sure array has size 10
	set	-46012,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3353
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3353:
!   make sure array has size 10
	load	[r14+-188],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1380 = *_temp_1387  (sizeInBytes=41644)
	load	[r14+-188],r5
	set	-46012,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3354:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3354
! ASSIGNMENT STATEMENT...
	mov	1358,r13		! source line 1358
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	1359,r13		! source line 1359
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=36)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	mov	9,r3
_Label_3355:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3355
!   aThreadBecameFree = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	1360,r13		! source line 1360
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41696,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41696,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0SE",r10
!   _temp_1391 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-172]
!   Send message Init
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0SE",r10
!   _temp_1392 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-168]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0SE",r10
!   _temp_1393 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-164]
!   _temp_1394 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_1394 [0 ] into _temp_1395
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_1393  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0SE",r10
!   _temp_1396 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-152]
!   _temp_1397 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_1397 [1 ] into _temp_1398
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_1396  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0SE",r10
!   _temp_1399 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-140]
!   _temp_1400 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1400 [2 ] into _temp_1401
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_1399  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0SE",r10
!   _temp_1402 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-128]
!   _temp_1403 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_1403 [3 ] into _temp_1404
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_1402  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1368,r13		! source line 1368
	mov	"\0\0SE",r10
!   _temp_1405 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-116]
!   _temp_1406 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_1406 [4 ] into _temp_1407
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_1405  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0SE",r10
!   _temp_1408 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-104]
!   _temp_1409 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_1409 [5 ] into _temp_1410
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_1408  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0SE",r10
!   _temp_1411 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-92]
!   _temp_1412 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_1412 [6 ] into _temp_1413
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_1411  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1371,r13		! source line 1371
	mov	"\0\0SE",r10
!   _temp_1414 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-80]
!   _temp_1415 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1415 [7 ] into _temp_1416
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_1414  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0SE",r10
!   _temp_1417 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-68]
!   _temp_1418 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Move address of _temp_1418 [8 ] into _temp_1419
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_1417  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0SE",r10
!   _temp_1420 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-56]
!   _temp_1421 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1421 [9 ] into _temp_1422
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1420  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1427 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1428 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_1427  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46016,r2
	store	r1,[r14+r2]
_Label_1423:
!   Perform the FOR-LOOP termination test
!   if j > _temp_1428 then goto _Label_1426		
	set	-46016,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1426
_Label_1424:
	mov	1376,r13		! source line 1376
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0AS",r10
!   _temp_1429 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1429 [j ] into _temp_1430
!     make sure index expr is >= 0
	set	-46016,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1431 = _temp_1430 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1431 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0SE",r10
!   _temp_1433 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1433 [j ] into _temp_1434
!     make sure index expr is >= 0
	set	-46016,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1432 = _temp_1434		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1435 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1432  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1425:
!   j = j + 1
	set	-46016,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46016,r2
	store	r1,[r14+r2]
	jmp	_Label_1423
! END FOR
_Label_1426:
! RETURN STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0RE",r10
	set	46020,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_1:
	.word	_sourceFileName
	.word	_Label_1436
	.word	4		! total size of parameters
	.word	46016		! frame size = 46016
	.word	_Label_1437
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1438
	.word	-12
	.word	4
	.word	_Label_1439
	.word	-16
	.word	4
	.word	_Label_1440
	.word	-20
	.word	4
	.word	_Label_1441
	.word	-24
	.word	4
	.word	_Label_1442
	.word	-28
	.word	4
	.word	_Label_1443
	.word	-32
	.word	4
	.word	_Label_1444
	.word	-36
	.word	4
	.word	_Label_1445
	.word	-40
	.word	4
	.word	_Label_1446
	.word	-44
	.word	4
	.word	_Label_1447
	.word	-48
	.word	4
	.word	_Label_1448
	.word	-52
	.word	4
	.word	_Label_1449
	.word	-56
	.word	4
	.word	_Label_1450
	.word	-60
	.word	4
	.word	_Label_1451
	.word	-64
	.word	4
	.word	_Label_1452
	.word	-68
	.word	4
	.word	_Label_1453
	.word	-72
	.word	4
	.word	_Label_1454
	.word	-76
	.word	4
	.word	_Label_1455
	.word	-80
	.word	4
	.word	_Label_1456
	.word	-84
	.word	4
	.word	_Label_1457
	.word	-88
	.word	4
	.word	_Label_1458
	.word	-92
	.word	4
	.word	_Label_1459
	.word	-96
	.word	4
	.word	_Label_1460
	.word	-100
	.word	4
	.word	_Label_1461
	.word	-104
	.word	4
	.word	_Label_1462
	.word	-108
	.word	4
	.word	_Label_1463
	.word	-112
	.word	4
	.word	_Label_1464
	.word	-116
	.word	4
	.word	_Label_1465
	.word	-120
	.word	4
	.word	_Label_1466
	.word	-124
	.word	4
	.word	_Label_1467
	.word	-128
	.word	4
	.word	_Label_1468
	.word	-132
	.word	4
	.word	_Label_1469
	.word	-136
	.word	4
	.word	_Label_1470
	.word	-140
	.word	4
	.word	_Label_1471
	.word	-144
	.word	4
	.word	_Label_1472
	.word	-148
	.word	4
	.word	_Label_1473
	.word	-152
	.word	4
	.word	_Label_1474
	.word	-156
	.word	4
	.word	_Label_1475
	.word	-160
	.word	4
	.word	_Label_1476
	.word	-164
	.word	4
	.word	_Label_1477
	.word	-168
	.word	4
	.word	_Label_1478
	.word	-172
	.word	4
	.word	_Label_1479
	.word	-176
	.word	4
	.word	_Label_1480
	.word	-180
	.word	4
	.word	_Label_1481
	.word	-184
	.word	4
	.word	_Label_1482
	.word	-188
	.word	4
	.word	_Label_1483
	.word	-192
	.word	4
	.word	_Label_1484
	.word	-4356
	.word	4164
	.word	_Label_1485
	.word	-4360
	.word	4
	.word	_Label_1486
	.word	-4364
	.word	4
	.word	_Label_1487
	.word	-46008
	.word	41644
	.word	_Label_1488
	.word	-46012
	.word	4
	.word	_Label_1489
	.word	-46016
	.word	4
	.word	0
_Label_1436:
	.ascii	"TestHoareSemantic"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1437:
	.ascii	"Pself\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1489:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_TestHoareSemantic_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_2,r1
	push	r1
	mov	15,r1
_Label_3356:
	push	r0
	sub	r1,1,r1
	bne	_Label_3356
	mov	1385,r13		! source line 1385
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1392,r13		! source line 1392
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1490 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1490  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1393,r13		! source line 1393
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1495 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1496 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1495  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1491:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1496 then goto _Label_1494		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1494
_Label_1492:
	mov	1394,r13		! source line 1394
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1497 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1497  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1395,r13		! source line 1395
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1396,r13		! source line 1396
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1498 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1498  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1397,r13		! source line 1397
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1500 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1500 [i ] into _temp_1501
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1499 = _temp_1501		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1499  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1398,r13		! source line 1398
	mov	"\0\0CA",r10
	call	_function_233_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1493:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1491
! END FOR
_Label_1494:
! CALL STATEMENT...
!   _temp_1502 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1502  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1400,r13		! source line 1400
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0SE",r10
!   _temp_1503 = _function_232_PrintObjectAddr
	set	_function_232_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1504 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1503  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1402,r13		! source line 1402
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1403,r13		! source line 1403
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_2:
	.word	_sourceFileName
	.word	_Label_1505
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1506
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1507
	.word	-12
	.word	4
	.word	_Label_1508
	.word	-16
	.word	4
	.word	_Label_1509
	.word	-20
	.word	4
	.word	_Label_1510
	.word	-24
	.word	4
	.word	_Label_1511
	.word	-28
	.word	4
	.word	_Label_1512
	.word	-32
	.word	4
	.word	_Label_1513
	.word	-36
	.word	4
	.word	_Label_1514
	.word	-40
	.word	4
	.word	_Label_1515
	.word	-44
	.word	4
	.word	_Label_1516
	.word	-48
	.word	4
	.word	_Label_1517
	.word	-52
	.word	4
	.word	_Label_1518
	.word	-56
	.word	4
	.word	_Label_1519
	.word	-60
	.word	4
	.word	0
_Label_1505:
	.ascii	"TestHoareSemantic"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1506:
	.ascii	"Pself\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1518:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1519:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_TestHoareSemantic_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_3,r1
	push	r1
	mov	12,r1
_Label_3357:
	push	r0
	sub	r1,1,r1
	bne	_Label_3357
	mov	1408,r13		! source line 1408
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0SE",r10
!   _temp_1520 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0IF",r10
	mov	1419,r13		! source line 1419
	mov	"\0\0SE",r10
!   _temp_1523 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1521 else goto _Label_1522
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1522
	jmp	_Label_1521
_Label_1521:
! THEN...
	mov	1420,r13		! source line 1420
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0SE",r10
!   _temp_1524 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   _temp_1525 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1524  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1522:
! ASSIGNMENT STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0AS",r10
	mov	1422,r13		! source line 1422
	mov	"\0\0SE",r10
!   _temp_1526 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadInUse  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0IF",r10
!   if threadInUse == 0 then goto _Label_1530		(int)
	load	[r14+-48],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1530
!   _temp_1529 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1531
_Label_1530:
!   _temp_1529 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1531:
!   if _temp_1529 then goto _Label_1528 else goto _Label_1527
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1527
	jmp	_Label_1528
_Label_1527:
! THEN...
	mov	1424,r13		! source line 1424
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1532 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1532  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1424,r13		! source line 1424
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1528:
! ASSIGNMENT STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0AS",r10
!   if intIsZero (threadInUse) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1533 = threadInUse + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1533 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0SE",r10
!   _temp_1534 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0RE",r10
!   ReturnResult: threadInUse  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_3:
	.word	_sourceFileName
	.word	_Label_1535
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1536
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1537
	.word	-16
	.word	4
	.word	_Label_1538
	.word	-20
	.word	4
	.word	_Label_1539
	.word	-24
	.word	4
	.word	_Label_1540
	.word	-9
	.word	1
	.word	_Label_1541
	.word	-28
	.word	4
	.word	_Label_1542
	.word	-32
	.word	4
	.word	_Label_1543
	.word	-36
	.word	4
	.word	_Label_1544
	.word	-40
	.word	4
	.word	_Label_1545
	.word	-44
	.word	4
	.word	_Label_1546
	.word	-48
	.word	4
	.word	0
_Label_1535:
	.ascii	"TestHoareSemantic"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1536:
	.ascii	"Pself\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1540:
	.byte	'C'
	.ascii	"_temp_1529\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1546:
	.byte	'P'
	.ascii	"threadInUse\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_TestHoareSemantic_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_4,r1
	push	r1
	mov	8,r1
_Label_3358:
	push	r0
	sub	r1,1,r1
	bne	_Label_3358
	mov	1438,r13		! source line 1438
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0SE",r10
!   _temp_1547 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1548 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1548 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0SE",r10
!   _temp_1549 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0SE",r10
!   _temp_1550 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1551 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1550  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0SE",r10
!   _temp_1552 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_4:
	.word	_sourceFileName
	.word	_Label_1553
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1554
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1555
	.word	12
	.word	4
	.word	_Label_1556
	.word	-12
	.word	4
	.word	_Label_1557
	.word	-16
	.word	4
	.word	_Label_1558
	.word	-20
	.word	4
	.word	_Label_1559
	.word	-24
	.word	4
	.word	_Label_1560
	.word	-28
	.word	4
	.word	_Label_1561
	.word	-32
	.word	4
	.word	0
_Label_1553:
	.ascii	"TestHoareSemantic"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1554:
	.ascii	"Pself\0"
	.align
_Label_1555:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1562
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1562:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1563
	.word	_sourceFileName
	.word	247		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1563:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_3359:
	push	r0
	sub	r1,1,r1
	bne	_Label_3359
	mov	904,r13		! source line 904
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3360:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3360
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0SE",r10
!   _temp_1565 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1566
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1567
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1568
	.word	-12
	.word	4
	.word	_Label_1569
	.word	-16
	.word	4
	.word	0
_Label_1566:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1567:
	.ascii	"Pself\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_3361:
	push	r0
	sub	r1,1,r1
	bne	_Label_3361
	mov	918,r13		! source line 918
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	923,r13		! source line 923
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1570) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0SE",r10
!   _temp_1571 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1572 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1572  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	925,r13		! source line 925
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CA",r10
	call	_function_233_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1573
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1574
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1575
	.word	-12
	.word	4
	.word	_Label_1576
	.word	-16
	.word	4
	.word	_Label_1577
	.word	-20
	.word	4
	.word	0
_Label_1573:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1574:
	.ascii	"Pself\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3362:
	push	r0
	sub	r1,1,r1
	bne	_Label_3362
	mov	941,r13		! source line 941
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1578 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1578  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	945,r13		! source line 945
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1579  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	946,r13		! source line 946
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1580 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1580  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	947,r13		! source line 947
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	948,r13		! source line 948
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1581 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1581  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1583		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1583
!	jmp	_Label_1582
_Label_1582:
! THEN...
	mov	951,r13		! source line 951
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1584 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1584  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	951,r13		! source line 951
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1585
_Label_1583:
! ELSE...
	mov	952,r13		! source line 952
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1587		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1587
!	jmp	_Label_1586
_Label_1586:
! THEN...
	mov	953,r13		! source line 953
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1588 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1588  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1589
_Label_1587:
! ELSE...
	mov	954,r13		! source line 954
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1591		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1591
!	jmp	_Label_1590
_Label_1590:
! THEN...
	mov	955,r13		! source line 955
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1592 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1592  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	955,r13		! source line 955
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1593
_Label_1591:
! ELSE...
	mov	957,r13		! source line 957
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1594 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1594  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	957,r13		! source line 957
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1593:
! END IF...
_Label_1589:
! END IF...
_Label_1585:
! CALL STATEMENT...
!   _temp_1595 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1595  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	959,r13		! source line 959
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	960,r13		! source line 960
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1596 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1596  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	961,r13		! source line 961
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	962,r13		! source line 962
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	963,r13		! source line 963
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1597
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1598
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1599
	.word	-12
	.word	4
	.word	_Label_1600
	.word	-16
	.word	4
	.word	_Label_1601
	.word	-20
	.word	4
	.word	_Label_1602
	.word	-24
	.word	4
	.word	_Label_1603
	.word	-28
	.word	4
	.word	_Label_1604
	.word	-32
	.word	4
	.word	_Label_1605
	.word	-36
	.word	4
	.word	_Label_1606
	.word	-40
	.word	4
	.word	_Label_1607
	.word	-44
	.word	4
	.word	_Label_1608
	.word	-48
	.word	4
	.word	0
_Label_1597:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1598:
	.ascii	"Pself\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1609
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1609:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1610
	.word	_sourceFileName
	.word	267		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1610:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	366,r1
_Label_3363:
	push	r0
	sub	r1,1,r1
	bne	_Label_3363
	mov	997,r13		! source line 997
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! i
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-1464]
! ASSIGNMENT STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0SE",r10
!   _temp_1612 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-1456]
!   Send message Init
	load	[r14+-1456],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	1003,r13		! source line 1003
	mov	"\0\0SE",r10
!   _temp_1614 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-1448]
!   Send message Init
	load	[r14+-1448],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0AS",r10
!   _temp_1616 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1440]
!   NEW ARRAY Constructor...
!   _temp_1618 = &_temp_1617
	add	r14,-1436,r1
	store	r1,[r14+-192]
!   _temp_1618 = _temp_1618 + 4
	load	[r14+-192],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1620 = zeros  (sizeInBytes=124)
	add	r14,-184,r4
	mov	31,r3
_Label_3364:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3364
!   _temp_1620 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-184]
	mov	10,r1
	store	r1,[r14+-188]
_Label_1622:
!   Data Move: *_temp_1618 = _temp_1620  (sizeInBytes=124)
	add	r14,-184,r5
	load	[r14+-192],r4
	mov	31,r3
_Label_3365:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3365
!   _temp_1618 = _temp_1618 + 124
	load	[r14+-192],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   _temp_1619 = _temp_1619 + -1
	load	[r14+-188],r1
	add	r1,-1,r1
	store	r1,[r14+-188]
!   if intNotZero (_temp_1619) then goto _Label_1622
	load	[r14+-188],r1
	cmp	r1,r0
	bne	_Label_1622
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1436]
!   _temp_1623 = &_temp_1617
	add	r14,-1436,r1
	store	r1,[r14+-56]
!   make sure array has size 10
	load	[r14+-1440],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3366
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3366:
!   make sure array has size 10
	load	[r14+-56],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1616 = *_temp_1623  (sizeInBytes=1244)
	load	[r14+-56],r5
	load	[r14+-1440],r4
	mov	311,r3
_Label_3367:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3367
! FOR STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1628 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1629 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1628  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1464]
_Label_1624:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1629 then goto _Label_1627		
	load	[r14+-1464],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1627
_Label_1625:
	mov	1006,r13		! source line 1006
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   _temp_1630 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1630 [i ] into _temp_1631
!     make sure index expr is >= 0
	load	[r14+-1464],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0AS",r10
!   _temp_1632 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1632 [i ] into _temp_1633
!     make sure index expr is >= 0
	load	[r14+-1464],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1634 = _temp_1633 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1634 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0SE",r10
!   _temp_1636 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1636 [i ] into _temp_1637
!     make sure index expr is >= 0
	load	[r14+-1464],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1635 = _temp_1637		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1638 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1635  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1626:
!   i = i + 1
	load	[r14+-1464],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1464]
	jmp	_Label_1624
! END FOR
_Label_1627:
! RETURN STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0RE",r10
	add	r15,1468,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1639
	.word	4		! total size of parameters
	.word	1464		! frame size = 1464
	.word	_Label_1640
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1641
	.word	-12
	.word	4
	.word	_Label_1642
	.word	-16
	.word	4
	.word	_Label_1643
	.word	-20
	.word	4
	.word	_Label_1644
	.word	-24
	.word	4
	.word	_Label_1645
	.word	-28
	.word	4
	.word	_Label_1646
	.word	-32
	.word	4
	.word	_Label_1647
	.word	-36
	.word	4
	.word	_Label_1648
	.word	-40
	.word	4
	.word	_Label_1649
	.word	-44
	.word	4
	.word	_Label_1650
	.word	-48
	.word	4
	.word	_Label_1651
	.word	-52
	.word	4
	.word	_Label_1652
	.word	-56
	.word	4
	.word	_Label_1653
	.word	-60
	.word	4
	.word	_Label_1654
	.word	-184
	.word	124
	.word	_Label_1655
	.word	-188
	.word	4
	.word	_Label_1656
	.word	-192
	.word	4
	.word	_Label_1657
	.word	-1436
	.word	1244
	.word	_Label_1658
	.word	-1440
	.word	4
	.word	_Label_1659
	.word	-1444
	.word	4
	.word	_Label_1660
	.word	-1448
	.word	4
	.word	_Label_1661
	.word	-1452
	.word	4
	.word	_Label_1662
	.word	-1456
	.word	4
	.word	_Label_1663
	.word	-1460
	.word	4
	.word	_Label_1664
	.word	-1464
	.word	4
	.word	0
_Label_1639:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1640:
	.ascii	"Pself\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1664:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3368:
	push	r0
	sub	r1,1,r1
	bne	_Label_3368
	mov	1016,r13		! source line 1016
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1019,r13		! source line 1019
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1665 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1665  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1020,r13		! source line 1020
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1670 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1671 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1670  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1666:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1671 then goto _Label_1669		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1669
_Label_1667:
	mov	1021,r13		! source line 1021
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1672 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1672  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1022,r13		! source line 1022
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1023,r13		! source line 1023
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1673 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1673  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1024,r13		! source line 1024
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0SE",r10
!   _temp_1674 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1674 [i ] into _temp_1675
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1668:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1666
! END FOR
_Label_1669:
! CALL STATEMENT...
!   _temp_1676 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1676  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1027,r13		! source line 1027
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0SE",r10
!   _temp_1677 = _function_232_PrintObjectAddr
	set	_function_232_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1678 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1677  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1029,r13		! source line 1029
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1030,r13		! source line 1030
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1679
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1680
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1681
	.word	-12
	.word	4
	.word	_Label_1682
	.word	-16
	.word	4
	.word	_Label_1683
	.word	-20
	.word	4
	.word	_Label_1684
	.word	-24
	.word	4
	.word	_Label_1685
	.word	-28
	.word	4
	.word	_Label_1686
	.word	-32
	.word	4
	.word	_Label_1687
	.word	-36
	.word	4
	.word	_Label_1688
	.word	-40
	.word	4
	.word	_Label_1689
	.word	-44
	.word	4
	.word	_Label_1690
	.word	-48
	.word	4
	.word	_Label_1691
	.word	-52
	.word	4
	.word	_Label_1692
	.word	-56
	.word	4
	.word	0
_Label_1679:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1680:
	.ascii	"Pself\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1691:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1692:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3369:
	push	r0
	sub	r1,1,r1
	bne	_Label_3369
	mov	1035,r13		! source line 1035
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1038,r13		! source line 1038
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1693 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1693  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1039,r13		! source line 1039
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1698 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1699 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1698  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1694:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1699 then goto _Label_1697		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1697
_Label_1695:
	mov	1040,r13		! source line 1040
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1700 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1700  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1041,r13		! source line 1041
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1042,r13		! source line 1042
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0SE",r10
!   _temp_1701 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1701 [i ] into _temp_1702
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1696:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1694
! END FOR
_Label_1697:
! CALL STATEMENT...
!   _temp_1703 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1703  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1045,r13		! source line 1045
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0SE",r10
!   _temp_1704 = _function_232_PrintObjectAddr
	set	_function_232_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1705 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1704  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1047,r13		! source line 1047
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1048,r13		! source line 1048
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1706
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1707
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1708
	.word	-12
	.word	4
	.word	_Label_1709
	.word	-16
	.word	4
	.word	_Label_1710
	.word	-20
	.word	4
	.word	_Label_1711
	.word	-24
	.word	4
	.word	_Label_1712
	.word	-28
	.word	4
	.word	_Label_1713
	.word	-32
	.word	4
	.word	_Label_1714
	.word	-36
	.word	4
	.word	_Label_1715
	.word	-40
	.word	4
	.word	_Label_1716
	.word	-44
	.word	4
	.word	_Label_1717
	.word	-48
	.word	4
	.word	_Label_1718
	.word	-52
	.word	4
	.word	0
_Label_1706:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1707:
	.ascii	"Pself\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1717:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1718:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	13,r1
_Label_3370:
	push	r0
	sub	r1,1,r1
	bne	_Label_3370
	mov	1053,r13		! source line 1053
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_1719 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0IF",r10
	mov	1061,r13		! source line 1061
	mov	"\0\0SE",r10
!   _temp_1722 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-44]
!   Send message IsEmpty
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1720 else goto _Label_1721
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1721
	jmp	_Label_1720
_Label_1720:
! THEN...
	mov	1062,r13		! source line 1062
	mov	"\0\0TN",r10
! WHILE STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0WH",r10
_Label_1723:
!   if processInUse == 0 then goto _Label_1727		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1727
!   _temp_1726 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_1728
_Label_1727:
!   _temp_1726 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_1728:
!   if _temp_1726 then goto _Label_1725 else goto _Label_1724
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1724
	jmp	_Label_1725
_Label_1724:
	mov	1062,r13		! source line 1062
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1063,r13		! source line 1063
	mov	"\0\0AS",r10
	mov	1063,r13		! source line 1063
	mov	"\0\0SE",r10
!   _temp_1729 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-40]
!   Send message Remove
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=processInUse  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0IF",r10
!   if processInUse == 0 then goto _Label_1733		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1733
!   _temp_1732 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1734
_Label_1733:
!   _temp_1732 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1734:
!   if _temp_1732 then goto _Label_1731 else goto _Label_1730
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1730
	jmp	_Label_1731
_Label_1730:
! THEN...
	mov	1065,r13		! source line 1065
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1065,r13		! source line 1065
	mov	"\0\0SE",r10
!   _temp_1735 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   _temp_1736 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1735  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1731:
! END WHILE...
	jmp	_Label_1723
_Label_1725:
	jmp	_Label_1737
_Label_1721:
! ELSE...
	mov	1069,r13		! source line 1069
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0AS",r10
	mov	1069,r13		! source line 1069
	mov	"\0\0SE",r10
!   _temp_1738 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=processInUse  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! END IF...
_Label_1737:
! ASSIGNMENT STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0AS",r10
!   if intIsZero (processInUse) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1739 = processInUse + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1739 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0AS",r10
!   if intIsZero (processInUse) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1740 = processInUse + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1740 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0SE",r10
!   _temp_1741 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0RE",r10
!   ReturnResult: processInUse  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1742
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1743
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1744
	.word	-16
	.word	4
	.word	_Label_1745
	.word	-20
	.word	4
	.word	_Label_1746
	.word	-24
	.word	4
	.word	_Label_1747
	.word	-28
	.word	4
	.word	_Label_1748
	.word	-32
	.word	4
	.word	_Label_1749
	.word	-36
	.word	4
	.word	_Label_1750
	.word	-9
	.word	1
	.word	_Label_1751
	.word	-40
	.word	4
	.word	_Label_1752
	.word	-10
	.word	1
	.word	_Label_1753
	.word	-44
	.word	4
	.word	_Label_1754
	.word	-48
	.word	4
	.word	_Label_1755
	.word	-52
	.word	4
	.word	0
_Label_1742:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1743:
	.ascii	"Pself\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1750:
	.byte	'C'
	.ascii	"_temp_1732\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1752:
	.byte	'C'
	.ascii	"_temp_1726\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1755:
	.byte	'P'
	.ascii	"processInUse\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	9,r1
_Label_3371:
	push	r0
	sub	r1,1,r1
	bne	_Label_3371
	mov	1084,r13		! source line 1084
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0SE",r10
!   _temp_1756 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1757 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1757 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1758 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1758 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1089,r13		! source line 1089
	mov	"\0\0SE",r10
!   _temp_1759 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0SE",r10
!   _temp_1760 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1761 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1760  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0SE",r10
!   _temp_1762 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1763
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1764
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1765
	.word	12
	.word	4
	.word	_Label_1766
	.word	-12
	.word	4
	.word	_Label_1767
	.word	-16
	.word	4
	.word	_Label_1768
	.word	-20
	.word	4
	.word	_Label_1769
	.word	-24
	.word	4
	.word	_Label_1770
	.word	-28
	.word	4
	.word	_Label_1771
	.word	-32
	.word	4
	.word	_Label_1772
	.word	-36
	.word	4
	.word	0
_Label_1763:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1764:
	.ascii	"Pself\0"
	.align
_Label_1765:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1773
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1773:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1774
	.word	_sourceFileName
	.word	290		! line number
	.word	76		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1774:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	16,r1
_Label_3372:
	push	r0
	sub	r1,1,r1
	bne	_Label_3372
	mov	1211,r13		! source line 1211
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1775 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1775  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1214,r13		! source line 1214
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0SE",r10
!   _temp_1777 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0AS",r10
!   numWaitingGroups = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1219,r13		! source line 1219
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,24,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0SE",r10
!   _temp_1779 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,44,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+44]
! ASSIGNMENT STATEMENT...
	mov	1222,r13		! source line 1222
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingGroups = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   waitingGroups = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0SE",r10
!   _temp_1782 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-32]
!   Send message Init
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0SE",r10
!   _temp_1783 = &waitingGroups
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1788 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1789 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1788  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-64]
_Label_1784:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1789 then goto _Label_1787		
	load	[r14+-64],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1787
_Label_1785:
	mov	1230,r13		! source line 1230
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1792 = *i  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1792) then goto _Label_1791
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1791
!	jmp	_Label_1790
_Label_1790:
! THEN...
	mov	1234,r13		! source line 1234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1793 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1793  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1234,r13		! source line 1234
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1791:
!   Increment the FOR-LOOP index variable and jump back
_Label_1786:
!   i = i + 4
	load	[r14+-64],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1784
! END FOR
_Label_1787:
! RETURN STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1794
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1795
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1796
	.word	-12
	.word	4
	.word	_Label_1797
	.word	-16
	.word	4
	.word	_Label_1798
	.word	-20
	.word	4
	.word	_Label_1799
	.word	-24
	.word	4
	.word	_Label_1800
	.word	-28
	.word	4
	.word	_Label_1801
	.word	-32
	.word	4
	.word	_Label_1802
	.word	-36
	.word	4
	.word	_Label_1803
	.word	-40
	.word	4
	.word	_Label_1804
	.word	-44
	.word	4
	.word	_Label_1805
	.word	-48
	.word	4
	.word	_Label_1806
	.word	-52
	.word	4
	.word	_Label_1807
	.word	-56
	.word	4
	.word	_Label_1808
	.word	-60
	.word	4
	.word	_Label_1809
	.word	-64
	.word	4
	.word	0
_Label_1794:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1795:
	.ascii	"Pself\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1809:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3373:
	push	r0
	sub	r1,1,r1
	bne	_Label_3373
	mov	1241,r13		! source line 1241
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1245,r13		! source line 1245
	mov	"\0\0SE",r10
!   _temp_1810 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1811 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1811  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1812 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1812  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1813 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1813  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1248,r13		! source line 1248
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0SE",r10
!   _temp_1814 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0SE",r10
!   _temp_1815 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1816
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1817
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1818
	.word	-12
	.word	4
	.word	_Label_1819
	.word	-16
	.word	4
	.word	_Label_1820
	.word	-20
	.word	4
	.word	_Label_1821
	.word	-24
	.word	4
	.word	_Label_1822
	.word	-28
	.word	4
	.word	_Label_1823
	.word	-32
	.word	4
	.word	0
_Label_1816:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1817:
	.ascii	"Pself\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_3374:
	push	r0
	sub	r1,1,r1
	bne	_Label_3374
	mov	1255,r13		! source line 1255
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1263,r13		! source line 1263
	mov	"\0\0SE",r10
!   _temp_1824 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0WH",r10
_Label_1825:
!   if numberFreeFrames >= 1 then goto _Label_1827		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1827
!	jmp	_Label_1826
_Label_1826:
	mov	1266,r13		! source line 1266
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0SE",r10
!   _temp_1828 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   _temp_1829 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1828  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1825
_Label_1827:
! ASSIGNMENT STATEMENT...
	mov	1271,r13		! source line 1271
	mov	"\0\0AS",r10
	mov	1271,r13		! source line 1271
	mov	"\0\0SE",r10
!   _temp_1830 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1272,r13		! source line 1272
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0SE",r10
!   _temp_1831 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0AS",r10
!   _temp_1832 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1832		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1833
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1834
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1835
	.word	-12
	.word	4
	.word	_Label_1836
	.word	-16
	.word	4
	.word	_Label_1837
	.word	-20
	.word	4
	.word	_Label_1838
	.word	-24
	.word	4
	.word	_Label_1839
	.word	-28
	.word	4
	.word	_Label_1840
	.word	-32
	.word	4
	.word	_Label_1841
	.word	-36
	.word	4
	.word	_Label_1842
	.word	-40
	.word	4
	.word	0
_Label_1833:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1834:
	.ascii	"Pself\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1841:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1842:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	22,r1
_Label_3375:
	push	r0
	sub	r1,1,r1
	bne	_Label_3375
	mov	1285,r13		! source line 1285
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0SE",r10
!   _temp_1843 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Send message Lock
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1291,r13		! source line 1291
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message SetToThisPageTable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! IF STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0IF",r10
!   if numWaitingGroups <= 1 then goto _Label_1845		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1845
!	jmp	_Label_1844
_Label_1844:
! THEN...
	mov	1293,r13		! source line 1293
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0SE",r10
!   _temp_1846 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   _temp_1847 = &waitingGroups
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_1846  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1845:
! WHILE STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0WH",r10
_Label_1848:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1850		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1850
!	jmp	_Label_1849
_Label_1849:
	mov	1295,r13		! source line 1295
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0SE",r10
!   _temp_1851 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-60]
!   _temp_1852 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1851  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1848
_Label_1850:
! FOR STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1857 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1858 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1857  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-76]
_Label_1853:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1858 then goto _Label_1856		
	load	[r14+-76],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1856
_Label_1854:
	mov	1298,r13		! source line 1298
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1299,r13		! source line 1299
	mov	"\0\0AS",r10
	mov	1299,r13		! source line 1299
	mov	"\0\0SE",r10
!   _temp_1859 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message FindZeroAndSet
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	1300,r13		! source line 1300
	mov	"\0\0AS",r10
!   _temp_1860 = f * 8192		(int)
	load	[r14+-84],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   frameAddr = 1048576 + _temp_1860		(int)
	set	1048576,r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	1301,r13		! source line 1301
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1855:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_1853
! END FOR
_Label_1856:
! ASSIGNMENT STATEMENT...
	mov	1304,r13		! source line 1304
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1305,r13		! source line 1305
	mov	"\0\0AS",r10
!   numWaitingGroups = numWaitingGroups - 1		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1306,r13		! source line 1306
	mov	"\0\0SE",r10
!   _temp_1861 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-36]
!   _temp_1862 = &waitingGroups
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1861  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1310,r13		! source line 1310
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1863 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1866 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1865 = *_temp_1866  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1864 = _temp_1865 + numFramesNeeded		(int)
	load	[r14+-20],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1863 = _temp_1864  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1313,r13		! source line 1313
	mov	"\0\0SE",r10
!   _temp_1867 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1313,r13		! source line 1313
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1868
	.word	12		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_1869
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1870
	.word	12
	.word	4
	.word	_Label_1871
	.word	16
	.word	4
	.word	_Label_1872
	.word	-12
	.word	4
	.word	_Label_1873
	.word	-16
	.word	4
	.word	_Label_1874
	.word	-20
	.word	4
	.word	_Label_1875
	.word	-24
	.word	4
	.word	_Label_1876
	.word	-28
	.word	4
	.word	_Label_1877
	.word	-32
	.word	4
	.word	_Label_1878
	.word	-36
	.word	4
	.word	_Label_1879
	.word	-40
	.word	4
	.word	_Label_1880
	.word	-44
	.word	4
	.word	_Label_1881
	.word	-48
	.word	4
	.word	_Label_1882
	.word	-52
	.word	4
	.word	_Label_1883
	.word	-56
	.word	4
	.word	_Label_1884
	.word	-60
	.word	4
	.word	_Label_1885
	.word	-64
	.word	4
	.word	_Label_1886
	.word	-68
	.word	4
	.word	_Label_1887
	.word	-72
	.word	4
	.word	_Label_1888
	.word	-76
	.word	4
	.word	_Label_1889
	.word	-80
	.word	4
	.word	_Label_1890
	.word	-84
	.word	4
	.word	0
_Label_1868:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1869:
	.ascii	"Pself\0"
	.align
_Label_1870:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1871:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1888:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1889:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1890:
	.byte	'I'
	.ascii	"f\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	16,r1
_Label_3376:
	push	r0
	sub	r1,1,r1
	bne	_Label_3376
	mov	1320,r13		! source line 1320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1326,r13		! source line 1326
	mov	"\0\0SE",r10
!   _temp_1891 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1328,r13		! source line 1328
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message SetToThisPageTable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1892 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: numFramesToReturn = *_temp_1892  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-56]
! FOR STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1897 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1898 = numFramesToReturn - 1		(int)
	load	[r14+-56],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1897  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-52]
_Label_1893:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1898 then goto _Label_1896		
	load	[r14+-52],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1896
_Label_1894:
	mov	1330,r13		! source line 1330
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1331,r13		! source line 1331
	mov	"\0\0AS",r10
	mov	1331,r13		! source line 1331
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0AS",r10
!   _temp_1899 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameNumber = _temp_1899 div 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1333,r13		! source line 1333
	mov	"\0\0SE",r10
!   _temp_1900 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=frameNumber  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
!   Increment the FOR-LOOP index variable and jump back
_Label_1895:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1893
! END FOR
_Label_1896:
! SEND STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0SE",r10
!   _temp_1901 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   _temp_1902 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1901  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1337,r13		! source line 1337
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1903 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1903 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0SE",r10
!   _temp_1904 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1905
	.word	8		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1906
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1907
	.word	12
	.word	4
	.word	_Label_1908
	.word	-12
	.word	4
	.word	_Label_1909
	.word	-16
	.word	4
	.word	_Label_1910
	.word	-20
	.word	4
	.word	_Label_1911
	.word	-24
	.word	4
	.word	_Label_1912
	.word	-28
	.word	4
	.word	_Label_1913
	.word	-32
	.word	4
	.word	_Label_1914
	.word	-36
	.word	4
	.word	_Label_1915
	.word	-40
	.word	4
	.word	_Label_1916
	.word	-44
	.word	4
	.word	_Label_1917
	.word	-48
	.word	4
	.word	_Label_1918
	.word	-52
	.word	4
	.word	_Label_1919
	.word	-56
	.word	4
	.word	_Label_1920
	.word	-60
	.word	4
	.word	_Label_1921
	.word	-64
	.word	4
	.word	0
_Label_1905:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1906:
	.ascii	"Pself\0"
	.align
_Label_1907:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1918:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1919:
	.byte	'I'
	.ascii	"numFramesToReturn\0"
	.align
_Label_1920:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1921:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1922
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1922:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1923
	.word	_sourceFileName
	.word	311		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1923:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3377:
	push	r0
	sub	r1,1,r1
	bne	_Label_3377
	mov	1463,r13		! source line 1463
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1468,r13		! source line 1468
	mov	"\0\0AS",r10
!   _temp_1924 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1926 = &_temp_1925
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1926 = _temp_1926 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1928:
!   Data Move: *_temp_1926 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1926 = _temp_1926 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1927 = _temp_1927 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1927) then goto _Label_1928
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1928
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1929 = &_temp_1925
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3378
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3378:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1924 = *_temp_1929  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3379:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3379
! RETURN STATEMENT...
	mov	1468,r13		! source line 1468
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1930
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1931
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1932
	.word	-12
	.word	4
	.word	_Label_1933
	.word	-16
	.word	4
	.word	_Label_1934
	.word	-20
	.word	4
	.word	_Label_1935
	.word	-104
	.word	84
	.word	_Label_1936
	.word	-108
	.word	4
	.word	0
_Label_1930:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1931:
	.ascii	"Pself\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3380:
	push	r0
	sub	r1,1,r1
	bne	_Label_3380
	mov	1473,r13		! source line 1473
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1937 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1937  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1478,r13		! source line 1478
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1938 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1938  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1479,r13		! source line 1479
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1943 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1944 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1943  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1939:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1944 then goto _Label_1942		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1942
_Label_1940:
	mov	1480,r13		! source line 1480
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1945 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1945  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1481,r13		! source line 1481
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1947 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1947 [i ] into _temp_1948
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1946 = _temp_1948		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1946  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1482,r13		! source line 1482
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1949 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1949  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1483,r13		! source line 1483
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1951 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1951 [i ] into _temp_1952
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1950 = *_temp_1952  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1950  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1484,r13		! source line 1484
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1953 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1953  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1485,r13		! source line 1485
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1954 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1954  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1486,r13		! source line 1486
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1955 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1955  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1487,r13		! source line 1487
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1957) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1956  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1956  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1488,r13		! source line 1488
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1958 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1958  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1489,r13		! source line 1489
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0IF",r10
	mov	1490,r13		! source line 1490
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1962) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1961  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1961) then goto _Label_1960
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1960
!	jmp	_Label_1959
_Label_1959:
! THEN...
	mov	1491,r13		! source line 1491
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1964) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1963  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1963  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1491,r13		! source line 1491
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1965
_Label_1960:
! ELSE...
	mov	1493,r13		! source line 1493
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1966 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1966  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1493,r13		! source line 1493
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1965:
! CALL STATEMENT...
!   _temp_1967 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1967  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1495,r13		! source line 1495
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0IF",r10
	mov	1496,r13		! source line 1496
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1970) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1968 else goto _Label_1969
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1969
	jmp	_Label_1968
_Label_1968:
! THEN...
	mov	1497,r13		! source line 1497
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1971 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1971  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1497,r13		! source line 1497
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1972
_Label_1969:
! ELSE...
	mov	1499,r13		! source line 1499
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1973 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1973  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1499,r13		! source line 1499
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1972:
! CALL STATEMENT...
!   _temp_1974 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1974  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1501,r13		! source line 1501
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0IF",r10
	mov	1502,r13		! source line 1502
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1977) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1975 else goto _Label_1976
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1976
	jmp	_Label_1975
_Label_1975:
! THEN...
	mov	1503,r13		! source line 1503
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1978 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1978  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1503,r13		! source line 1503
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1979
_Label_1976:
! ELSE...
	mov	1505,r13		! source line 1505
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1980 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1980  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1505,r13		! source line 1505
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1979:
! CALL STATEMENT...
!   _temp_1981 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1981  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1507,r13		! source line 1507
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0IF",r10
	mov	1508,r13		! source line 1508
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1984) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1982 else goto _Label_1983
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1983
	jmp	_Label_1982
_Label_1982:
! THEN...
	mov	1509,r13		! source line 1509
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1985 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1985  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1509,r13		! source line 1509
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1986
_Label_1983:
! ELSE...
	mov	1511,r13		! source line 1511
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1987 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1987  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1511,r13		! source line 1511
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1986:
! CALL STATEMENT...
!   _temp_1988 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1988  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1513,r13		! source line 1513
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1514,r13		! source line 1514
	mov	"\0\0IF",r10
	mov	1514,r13		! source line 1514
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1991) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1989 else goto _Label_1990
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1990
	jmp	_Label_1989
_Label_1989:
! THEN...
	mov	1515,r13		! source line 1515
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1992 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1992  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1515,r13		! source line 1515
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1993
_Label_1990:
! ELSE...
	mov	1517,r13		! source line 1517
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1994 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1994  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1517,r13		! source line 1517
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1993:
! CALL STATEMENT...
!   Call the function
	mov	1519,r13		! source line 1519
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1941:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1939
! END FOR
_Label_1942:
! RETURN STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1995
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1996
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1997
	.word	-12
	.word	4
	.word	_Label_1998
	.word	-16
	.word	4
	.word	_Label_1999
	.word	-20
	.word	4
	.word	_Label_2000
	.word	-24
	.word	4
	.word	_Label_2001
	.word	-28
	.word	4
	.word	_Label_2002
	.word	-32
	.word	4
	.word	_Label_2003
	.word	-36
	.word	4
	.word	_Label_2004
	.word	-40
	.word	4
	.word	_Label_2005
	.word	-44
	.word	4
	.word	_Label_2006
	.word	-48
	.word	4
	.word	_Label_2007
	.word	-52
	.word	4
	.word	_Label_2008
	.word	-56
	.word	4
	.word	_Label_2009
	.word	-60
	.word	4
	.word	_Label_2010
	.word	-64
	.word	4
	.word	_Label_2011
	.word	-68
	.word	4
	.word	_Label_2012
	.word	-72
	.word	4
	.word	_Label_2013
	.word	-76
	.word	4
	.word	_Label_2014
	.word	-80
	.word	4
	.word	_Label_2015
	.word	-84
	.word	4
	.word	_Label_2016
	.word	-88
	.word	4
	.word	_Label_2017
	.word	-92
	.word	4
	.word	_Label_2018
	.word	-96
	.word	4
	.word	_Label_2019
	.word	-100
	.word	4
	.word	_Label_2020
	.word	-104
	.word	4
	.word	_Label_2021
	.word	-108
	.word	4
	.word	_Label_2022
	.word	-112
	.word	4
	.word	_Label_2023
	.word	-116
	.word	4
	.word	_Label_2024
	.word	-120
	.word	4
	.word	_Label_2025
	.word	-124
	.word	4
	.word	_Label_2026
	.word	-128
	.word	4
	.word	_Label_2027
	.word	-132
	.word	4
	.word	_Label_2028
	.word	-136
	.word	4
	.word	_Label_2029
	.word	-140
	.word	4
	.word	_Label_2030
	.word	-144
	.word	4
	.word	_Label_2031
	.word	-148
	.word	4
	.word	_Label_2032
	.word	-152
	.word	4
	.word	_Label_2033
	.word	-156
	.word	4
	.word	_Label_2034
	.word	-160
	.word	4
	.word	_Label_2035
	.word	-164
	.word	4
	.word	_Label_2036
	.word	-168
	.word	4
	.word	0
_Label_1995:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1996:
	.ascii	"Pself\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_2036:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3381:
	push	r0
	sub	r1,1,r1
	bne	_Label_3381
	mov	1525,r13		! source line 1525
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0RE",r10
!   _temp_2039 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2039 [entry ] into _temp_2040
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2038 = *_temp_2040  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2037 = _temp_2038 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2037  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_2041
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2042
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2043
	.word	12
	.word	4
	.word	_Label_2044
	.word	-12
	.word	4
	.word	_Label_2045
	.word	-16
	.word	4
	.word	_Label_2046
	.word	-20
	.word	4
	.word	_Label_2047
	.word	-24
	.word	4
	.word	0
_Label_2041:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2042:
	.ascii	"Pself\0"
	.align
_Label_2043:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3382:
	push	r0
	sub	r1,1,r1
	bne	_Label_3382
	mov	1535,r13		! source line 1535
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0RE",r10
!   _temp_2050 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2050 [entry ] into _temp_2051
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2049 = *_temp_2051  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2048 = _temp_2049 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2048  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_2052
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2053
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2054
	.word	12
	.word	4
	.word	_Label_2055
	.word	-12
	.word	4
	.word	_Label_2056
	.word	-16
	.word	4
	.word	_Label_2057
	.word	-20
	.word	4
	.word	_Label_2058
	.word	-24
	.word	4
	.word	0
_Label_2052:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2053:
	.ascii	"Pself\0"
	.align
_Label_2054:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3383:
	push	r0
	sub	r1,1,r1
	bne	_Label_3383
	mov	1544,r13		! source line 1544
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1549,r13		! source line 1549
	mov	"\0\0AS",r10
!   _temp_2059 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2059 [entry ] into _temp_2060
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_2064 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2064 [entry ] into _temp_2065
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2063 = *_temp_2065  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2062 = _temp_2063 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2061 = _temp_2062 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2060 = _temp_2061  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1549,r13		! source line 1549
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_2066
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2067
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2068
	.word	12
	.word	4
	.word	_Label_2069
	.word	16
	.word	4
	.word	_Label_2070
	.word	-12
	.word	4
	.word	_Label_2071
	.word	-16
	.word	4
	.word	_Label_2072
	.word	-20
	.word	4
	.word	_Label_2073
	.word	-24
	.word	4
	.word	_Label_2074
	.word	-28
	.word	4
	.word	_Label_2075
	.word	-32
	.word	4
	.word	_Label_2076
	.word	-36
	.word	4
	.word	0
_Label_2066:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2067:
	.ascii	"Pself\0"
	.align
_Label_2068:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2069:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3384:
	push	r0
	sub	r1,1,r1
	bne	_Label_3384
	mov	1554,r13		! source line 1554
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0RE",r10
!   _temp_2080 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2080 [entry ] into _temp_2081
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2079 = *_temp_2081  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2078 = _temp_2079 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2078) then goto _Label_2082
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2082
!   _temp_2077 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2083
_Label_2082:
!   _temp_2077 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2083:
!   ReturnResult: _temp_2077  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_2084
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2085
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2086
	.word	12
	.word	4
	.word	_Label_2087
	.word	-16
	.word	4
	.word	_Label_2088
	.word	-20
	.word	4
	.word	_Label_2089
	.word	-24
	.word	4
	.word	_Label_2090
	.word	-28
	.word	4
	.word	_Label_2091
	.word	-9
	.word	1
	.word	0
_Label_2084:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2085:
	.ascii	"Pself\0"
	.align
_Label_2086:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2091:
	.byte	'C'
	.ascii	"_temp_2077\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
	mov	1563,r13		! source line 1563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1567,r13		! source line 1567
	mov	"\0\0RE",r10
!   _temp_2095 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2095 [entry ] into _temp_2096
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2094 = *_temp_2096  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2093 = _temp_2094 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2093) then goto _Label_2097
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2097
!   _temp_2092 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2098
_Label_2097:
!   _temp_2092 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2098:
!   ReturnResult: _temp_2092  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_2099
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2100
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2101
	.word	12
	.word	4
	.word	_Label_2102
	.word	-16
	.word	4
	.word	_Label_2103
	.word	-20
	.word	4
	.word	_Label_2104
	.word	-24
	.word	4
	.word	_Label_2105
	.word	-28
	.word	4
	.word	_Label_2106
	.word	-9
	.word	1
	.word	0
_Label_2099:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2100:
	.ascii	"Pself\0"
	.align
_Label_2101:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2106:
	.byte	'C'
	.ascii	"_temp_2092\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3386:
	push	r0
	sub	r1,1,r1
	bne	_Label_3386
	mov	1572,r13		! source line 1572
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1576,r13		! source line 1576
	mov	"\0\0RE",r10
!   _temp_2110 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2110 [entry ] into _temp_2111
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2109 = *_temp_2111  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2108 = _temp_2109 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2108) then goto _Label_2112
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2112
!   _temp_2107 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2113
_Label_2112:
!   _temp_2107 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2113:
!   ReturnResult: _temp_2107  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_2114
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2115
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2116
	.word	12
	.word	4
	.word	_Label_2117
	.word	-16
	.word	4
	.word	_Label_2118
	.word	-20
	.word	4
	.word	_Label_2119
	.word	-24
	.word	4
	.word	_Label_2120
	.word	-28
	.word	4
	.word	_Label_2121
	.word	-9
	.word	1
	.word	0
_Label_2114:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2115:
	.ascii	"Pself\0"
	.align
_Label_2116:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2121:
	.byte	'C'
	.ascii	"_temp_2107\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
	mov	1581,r13		! source line 1581
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0RE",r10
!   _temp_2125 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2125 [entry ] into _temp_2126
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2124 = *_temp_2126  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2123 = _temp_2124 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2123) then goto _Label_2127
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2127
!   _temp_2122 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2128
_Label_2127:
!   _temp_2122 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2128:
!   ReturnResult: _temp_2122  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_2129
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2130
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2131
	.word	12
	.word	4
	.word	_Label_2132
	.word	-16
	.word	4
	.word	_Label_2133
	.word	-20
	.word	4
	.word	_Label_2134
	.word	-24
	.word	4
	.word	_Label_2135
	.word	-28
	.word	4
	.word	_Label_2136
	.word	-9
	.word	1
	.word	0
_Label_2129:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2130:
	.ascii	"Pself\0"
	.align
_Label_2131:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2136:
	.byte	'C'
	.ascii	"_temp_2122\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3388:
	push	r0
	sub	r1,1,r1
	bne	_Label_3388
	mov	1590,r13		! source line 1590
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0AS",r10
!   _temp_2137 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2137 [entry ] into _temp_2138
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2141 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2141 [entry ] into _temp_2142
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2140 = *_temp_2142  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2139 = _temp_2140 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2138 = _temp_2139  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_2143
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2144
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2145
	.word	12
	.word	4
	.word	_Label_2146
	.word	-12
	.word	4
	.word	_Label_2147
	.word	-16
	.word	4
	.word	_Label_2148
	.word	-20
	.word	4
	.word	_Label_2149
	.word	-24
	.word	4
	.word	_Label_2150
	.word	-28
	.word	4
	.word	_Label_2151
	.word	-32
	.word	4
	.word	0
_Label_2143:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2144:
	.ascii	"Pself\0"
	.align
_Label_2145:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3389:
	push	r0
	sub	r1,1,r1
	bne	_Label_3389
	mov	1599,r13		! source line 1599
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0AS",r10
!   _temp_2152 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2152 [entry ] into _temp_2153
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2156 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2156 [entry ] into _temp_2157
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2155 = *_temp_2157  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2154 = _temp_2155 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2153 = _temp_2154  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_2158
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2159
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2160
	.word	12
	.word	4
	.word	_Label_2161
	.word	-12
	.word	4
	.word	_Label_2162
	.word	-16
	.word	4
	.word	_Label_2163
	.word	-20
	.word	4
	.word	_Label_2164
	.word	-24
	.word	4
	.word	_Label_2165
	.word	-28
	.word	4
	.word	_Label_2166
	.word	-32
	.word	4
	.word	0
_Label_2158:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2159:
	.ascii	"Pself\0"
	.align
_Label_2160:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3390:
	push	r0
	sub	r1,1,r1
	bne	_Label_3390
	mov	1608,r13		! source line 1608
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0AS",r10
!   _temp_2167 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2167 [entry ] into _temp_2168
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2171 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2171 [entry ] into _temp_2172
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2170 = *_temp_2172  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2169 = _temp_2170 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2168 = _temp_2169  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_2173
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2174
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2175
	.word	12
	.word	4
	.word	_Label_2176
	.word	-12
	.word	4
	.word	_Label_2177
	.word	-16
	.word	4
	.word	_Label_2178
	.word	-20
	.word	4
	.word	_Label_2179
	.word	-24
	.word	4
	.word	_Label_2180
	.word	-28
	.word	4
	.word	_Label_2181
	.word	-32
	.word	4
	.word	0
_Label_2173:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2174:
	.ascii	"Pself\0"
	.align
_Label_2175:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3391:
	push	r0
	sub	r1,1,r1
	bne	_Label_3391
	mov	1617,r13		! source line 1617
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0AS",r10
!   _temp_2182 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2182 [entry ] into _temp_2183
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2186 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2186 [entry ] into _temp_2187
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2185 = *_temp_2187  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2184 = _temp_2185 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2183 = _temp_2184  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_2188
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2189
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2190
	.word	12
	.word	4
	.word	_Label_2191
	.word	-12
	.word	4
	.word	_Label_2192
	.word	-16
	.word	4
	.word	_Label_2193
	.word	-20
	.word	4
	.word	_Label_2194
	.word	-24
	.word	4
	.word	_Label_2195
	.word	-28
	.word	4
	.word	_Label_2196
	.word	-32
	.word	4
	.word	0
_Label_2188:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2189:
	.ascii	"Pself\0"
	.align
_Label_2190:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3392:
	push	r0
	sub	r1,1,r1
	bne	_Label_3392
	mov	1626,r13		! source line 1626
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0AS",r10
!   _temp_2197 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2197 [entry ] into _temp_2198
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2201 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2201 [entry ] into _temp_2202
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2200 = *_temp_2202  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2199 = _temp_2200 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2198 = _temp_2199  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_2203
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2204
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2205
	.word	12
	.word	4
	.word	_Label_2206
	.word	-12
	.word	4
	.word	_Label_2207
	.word	-16
	.word	4
	.word	_Label_2208
	.word	-20
	.word	4
	.word	_Label_2209
	.word	-24
	.word	4
	.word	_Label_2210
	.word	-28
	.word	4
	.word	_Label_2211
	.word	-32
	.word	4
	.word	0
_Label_2203:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2204:
	.ascii	"Pself\0"
	.align
_Label_2205:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
	mov	1635,r13		! source line 1635
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1639,r13		! source line 1639
	mov	"\0\0AS",r10
!   _temp_2212 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2212 [entry ] into _temp_2213
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2216 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2216 [entry ] into _temp_2217
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2215 = *_temp_2217  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2214 = _temp_2215 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2213 = _temp_2214  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1639,r13		! source line 1639
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_2218
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2219
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2220
	.word	12
	.word	4
	.word	_Label_2221
	.word	-12
	.word	4
	.word	_Label_2222
	.word	-16
	.word	4
	.word	_Label_2223
	.word	-20
	.word	4
	.word	_Label_2224
	.word	-24
	.word	4
	.word	_Label_2225
	.word	-28
	.word	4
	.word	_Label_2226
	.word	-32
	.word	4
	.word	0
_Label_2218:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2219:
	.ascii	"Pself\0"
	.align
_Label_2220:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3394:
	push	r0
	sub	r1,1,r1
	bne	_Label_3394
	mov	1644,r13		! source line 1644
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0AS",r10
!   _temp_2227 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2227 [entry ] into _temp_2228
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2231 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2231 [entry ] into _temp_2232
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2230 = *_temp_2232  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2229 = _temp_2230 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2228 = _temp_2229  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_2233
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2234
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2235
	.word	12
	.word	4
	.word	_Label_2236
	.word	-12
	.word	4
	.word	_Label_2237
	.word	-16
	.word	4
	.word	_Label_2238
	.word	-20
	.word	4
	.word	_Label_2239
	.word	-24
	.word	4
	.word	_Label_2240
	.word	-28
	.word	4
	.word	_Label_2241
	.word	-32
	.word	4
	.word	0
_Label_2233:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2234:
	.ascii	"Pself\0"
	.align
_Label_2235:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3395:
	push	r0
	sub	r1,1,r1
	bne	_Label_3395
	mov	1653,r13		! source line 1653
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0AS",r10
!   _temp_2242 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2242 [entry ] into _temp_2243
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2246 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2246 [entry ] into _temp_2247
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2245 = *_temp_2247  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2244 = _temp_2245 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2243 = _temp_2244  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_2248
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2249
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2250
	.word	12
	.word	4
	.word	_Label_2251
	.word	-12
	.word	4
	.word	_Label_2252
	.word	-16
	.word	4
	.word	_Label_2253
	.word	-20
	.word	4
	.word	_Label_2254
	.word	-24
	.word	4
	.word	_Label_2255
	.word	-28
	.word	4
	.word	_Label_2256
	.word	-32
	.word	4
	.word	0
_Label_2248:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2249:
	.ascii	"Pself\0"
	.align
_Label_2250:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3396:
	push	r0
	sub	r1,1,r1
	bne	_Label_3396
	mov	1662,r13		! source line 1662
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2258 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2258 [0 ] into _temp_2259
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2257 = _temp_2259		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2260 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2257  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2260  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1668,r13		! source line 1668
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1668,r13		! source line 1668
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_2261
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2262
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2263
	.word	-12
	.word	4
	.word	_Label_2264
	.word	-16
	.word	4
	.word	_Label_2265
	.word	-20
	.word	4
	.word	_Label_2266
	.word	-24
	.word	4
	.word	0
_Label_2261:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2262:
	.ascii	"Pself\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3397:
	push	r0
	sub	r1,1,r1
	bne	_Label_3397
	mov	1673,r13		! source line 1673
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2267
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2267
	jmp	_Label_2268
_Label_2267:
! THEN...
	mov	1689,r13		! source line 1689
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2269
_Label_2268:
! ELSE...
	mov	1690,r13		! source line 1690
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2271		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2271
!	jmp	_Label_2270
_Label_2270:
! THEN...
	mov	1691,r13		! source line 1691
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1691,r13		! source line 1691
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2271:
! END IF...
_Label_2269:
! ASSIGNMENT STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1694,r13		! source line 1694
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0WH",r10
_Label_2272:
!	jmp	_Label_2273
_Label_2273:
	mov	1697,r13		! source line 1697
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2276		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2276
!	jmp	_Label_2275
_Label_2275:
! THEN...
	mov	1699,r13		! source line 1699
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2277 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2277  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1699,r13		! source line 1699
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2276:
! IF STATEMENT...
	mov	1702,r13		! source line 1702
	mov	"\0\0IF",r10
	mov	1702,r13		! source line 1702
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2281) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2280  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2280 then goto _Label_2279 else goto _Label_2278
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2278
	jmp	_Label_2279
_Label_2278:
! THEN...
	mov	1703,r13		! source line 1703
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2282 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2282  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1703,r13		! source line 1703
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2279:
! ASSIGNMENT STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0AS",r10
	mov	1706,r13		! source line 1706
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2284) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2283  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2283 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0WH",r10
_Label_2285:
!   if offset >= 8192 then goto _Label_2287		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2287
!	jmp	_Label_2286
_Label_2286:
	mov	1708,r13		! source line 1708
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1711,r13		! source line 1711
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2288 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2288  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1712,r13		! source line 1712
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1713,r13		! source line 1713
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2290		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2290
!	jmp	_Label_2289
_Label_2289:
! THEN...
	mov	1717,r13		! source line 1717
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2290:
! END WHILE...
	jmp	_Label_2285
_Label_2287:
! ASSIGNMENT STATEMENT...
	mov	1720,r13		! source line 1720
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1721,r13		! source line 1721
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2272
_Label_2274:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2291
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2292
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2293
	.word	12
	.word	4
	.word	_Label_2294
	.word	16
	.word	4
	.word	_Label_2295
	.word	20
	.word	4
	.word	_Label_2296
	.word	-9
	.word	1
	.word	_Label_2297
	.word	-16
	.word	4
	.word	_Label_2298
	.word	-20
	.word	4
	.word	_Label_2299
	.word	-24
	.word	4
	.word	_Label_2300
	.word	-28
	.word	4
	.word	_Label_2301
	.word	-10
	.word	1
	.word	_Label_2302
	.word	-32
	.word	4
	.word	_Label_2303
	.word	-36
	.word	4
	.word	_Label_2304
	.word	-40
	.word	4
	.word	_Label_2305
	.word	-44
	.word	4
	.word	_Label_2306
	.word	-48
	.word	4
	.word	0
_Label_2291:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2292:
	.ascii	"Pself\0"
	.align
_Label_2293:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2294:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2295:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2296:
	.byte	'C'
	.ascii	"_temp_2288\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2301:
	.byte	'C'
	.ascii	"_temp_2280\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2303:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2304:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2305:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2306:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3398:
	push	r0
	sub	r1,1,r1
	bne	_Label_3398
	mov	1727,r13		! source line 1727
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1738,r13		! source line 1738
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2307
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2307
	jmp	_Label_2308
_Label_2307:
! THEN...
	mov	1739,r13		! source line 1739
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2309
_Label_2308:
! ELSE...
	mov	1740,r13		! source line 1740
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1740,r13		! source line 1740
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2311		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2311
!	jmp	_Label_2310
_Label_2310:
! THEN...
	mov	1741,r13		! source line 1741
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1741,r13		! source line 1741
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2311:
! END IF...
_Label_2309:
! ASSIGNMENT STATEMENT...
	mov	1743,r13		! source line 1743
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1745,r13		! source line 1745
	mov	"\0\0WH",r10
_Label_2312:
!	jmp	_Label_2313
_Label_2313:
	mov	1745,r13		! source line 1745
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2318		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2318
	jmp	_Label_2315
_Label_2318:
	mov	1747,r13		! source line 1747
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2320) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2319  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2319 then goto _Label_2317 else goto _Label_2315
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2315
	jmp	_Label_2317
_Label_2317:
	mov	1748,r13		! source line 1748
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2322) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2321  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2321 then goto _Label_2316 else goto _Label_2315
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2315
	jmp	_Label_2316
_Label_2315:
! THEN...
	mov	1749,r13		! source line 1749
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2316:
! ASSIGNMENT STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0AS",r10
	mov	1751,r13		! source line 1751
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2324) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2323  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2323 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0WH",r10
_Label_2325:
!   if offset >= 8192 then goto _Label_2327		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2327
!	jmp	_Label_2326
_Label_2326:
	mov	1752,r13		! source line 1752
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2328 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2328  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1755,r13		! source line 1755
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1756,r13		! source line 1756
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1757,r13		! source line 1757
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1758,r13		! source line 1758
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2330		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2330
!	jmp	_Label_2329
_Label_2329:
! THEN...
	mov	1759,r13		! source line 1759
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2330:
! END WHILE...
	jmp	_Label_2325
_Label_2327:
! ASSIGNMENT STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2312
_Label_2314:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2331
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2332
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2333
	.word	12
	.word	4
	.word	_Label_2334
	.word	16
	.word	4
	.word	_Label_2335
	.word	20
	.word	4
	.word	_Label_2336
	.word	-9
	.word	1
	.word	_Label_2337
	.word	-16
	.word	4
	.word	_Label_2338
	.word	-20
	.word	4
	.word	_Label_2339
	.word	-24
	.word	4
	.word	_Label_2340
	.word	-10
	.word	1
	.word	_Label_2341
	.word	-28
	.word	4
	.word	_Label_2342
	.word	-11
	.word	1
	.word	_Label_2343
	.word	-32
	.word	4
	.word	_Label_2344
	.word	-36
	.word	4
	.word	_Label_2345
	.word	-40
	.word	4
	.word	_Label_2346
	.word	-44
	.word	4
	.word	0
_Label_2331:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2332:
	.ascii	"Pself\0"
	.align
_Label_2333:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2334:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2335:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2336:
	.byte	'C'
	.ascii	"_temp_2328\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2340:
	.byte	'C'
	.ascii	"_temp_2321\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2342:
	.byte	'C'
	.ascii	"_temp_2319\0"
	.align
_Label_2343:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2344:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2345:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2346:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3399:
	push	r0
	sub	r1,1,r1
	bne	_Label_3399
	mov	1769,r13		! source line 1769
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0IF",r10
	mov	1793,r13		! source line 1793
	mov	"\0\0SE",r10
!   _temp_2350 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2351) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2350  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2349  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2349 >= 4 then goto _Label_2348		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2348
!	jmp	_Label_2347
_Label_2347:
! THEN...
	mov	1796,r13		! source line 1796
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1796,r13		! source line 1796
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2348:
! IF STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2353		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2353
!	jmp	_Label_2352
_Label_2352:
! THEN...
	mov	1801,r13		! source line 1801
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1801,r13		! source line 1801
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2353:
! ASSIGNMENT STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1806,r13		! source line 1806
	mov	"\0\0RE",r10
	mov	1806,r13		! source line 1806
	mov	"\0\0SE",r10
!   _temp_2356 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2355 = _temp_2356 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2357 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2358) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2355  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2357  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2354  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2354  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2359
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2360
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2361
	.word	12
	.word	4
	.word	_Label_2362
	.word	16
	.word	4
	.word	_Label_2363
	.word	20
	.word	4
	.word	_Label_2364
	.word	-12
	.word	4
	.word	_Label_2365
	.word	-16
	.word	4
	.word	_Label_2366
	.word	-20
	.word	4
	.word	_Label_2367
	.word	-24
	.word	4
	.word	_Label_2368
	.word	-28
	.word	4
	.word	_Label_2369
	.word	-32
	.word	4
	.word	_Label_2370
	.word	-36
	.word	4
	.word	_Label_2371
	.word	-40
	.word	4
	.word	_Label_2372
	.word	-44
	.word	4
	.word	0
_Label_2359:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2360:
	.ascii	"Pself\0"
	.align
_Label_2361:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2362:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2363:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2372:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2373
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2373:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2374
	.word	_sourceFileName
	.word	344		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2374:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3400:
	push	r0
	sub	r1,1,r1
	bne	_Label_3400
	mov	2284,r13		! source line 2284
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2375 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2375  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2285,r13		! source line 2285
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0SE",r10
!   _temp_2377 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0SE",r10
!   _temp_2379 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2380
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2381
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2382
	.word	-12
	.word	4
	.word	_Label_2383
	.word	-16
	.word	4
	.word	_Label_2384
	.word	-20
	.word	4
	.word	_Label_2385
	.word	-24
	.word	4
	.word	_Label_2386
	.word	-28
	.word	4
	.word	0
_Label_2380:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2381:
	.ascii	"Pself\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3401:
	push	r0
	sub	r1,1,r1
	bne	_Label_3401
	mov	2300,r13		! source line 2300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0SE",r10
!   _temp_2387 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2314,r13		! source line 2314
	mov	"\0\0WH",r10
_Label_2388:
!	jmp	_Label_2389
_Label_2389:
	mov	2314,r13		! source line 2314
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0SE",r10
!   _temp_2391 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2392) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2391  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0SE",r10
!   _temp_2393 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2321,r13		! source line 2321
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2402 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2396
	cmp	r1,2
	be	_Label_2397
	cmp	r1,3
	be	_Label_2398
	cmp	r1,4
	be	_Label_2399
	cmp	r1,5
	be	_Label_2400
	cmp	r1,6
	be	_Label_2401
	jmp	_Label_2394
! CASE 1...
_Label_2396:
! SEND STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0SE",r10
!   _temp_2403 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2324,r13		! source line 2324
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2397:
! CALL STATEMENT...
!   _temp_2404 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2404  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2326,r13		! source line 2326
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2398:
! CALL STATEMENT...
!   _temp_2405 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2405  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2328,r13		! source line 2328
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2399:
! CALL STATEMENT...
!   _temp_2406 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2406  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2330,r13		! source line 2330
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2400:
! BREAK STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0BR",r10
	jmp	_Label_2395
! CASE 6...
_Label_2401:
! CALL STATEMENT...
!   _temp_2407 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2407  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2336,r13		! source line 2336
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2394:
! CALL STATEMENT...
!   _temp_2408 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2408  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2338,r13		! source line 2338
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2395:
! END WHILE...
	jmp	_Label_2388
_Label_2390:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2409
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2410
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2411
	.word	12
	.word	4
	.word	_Label_2412
	.word	16
	.word	4
	.word	_Label_2413
	.word	20
	.word	4
	.word	_Label_2414
	.word	-12
	.word	4
	.word	_Label_2415
	.word	-16
	.word	4
	.word	_Label_2416
	.word	-20
	.word	4
	.word	_Label_2417
	.word	-24
	.word	4
	.word	_Label_2418
	.word	-28
	.word	4
	.word	_Label_2419
	.word	-32
	.word	4
	.word	_Label_2420
	.word	-36
	.word	4
	.word	_Label_2421
	.word	-40
	.word	4
	.word	_Label_2422
	.word	-44
	.word	4
	.word	_Label_2423
	.word	-48
	.word	4
	.word	_Label_2424
	.word	-52
	.word	4
	.word	0
_Label_2409:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2410:
	.ascii	"Pself\0"
	.align
_Label_2411:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2412:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2413:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2347,r13		! source line 2347
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2425
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2426
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2427
	.word	12
	.word	4
	.word	_Label_2428
	.word	16
	.word	4
	.word	_Label_2429
	.word	20
	.word	4
	.word	_Label_2430
	.word	24
	.word	4
	.word	0
_Label_2425:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2426:
	.ascii	"Pself\0"
	.align
_Label_2427:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2428:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2429:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2430:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
	mov	2373,r13		! source line 2373
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0SE",r10
!   _temp_2431 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0WH",r10
_Label_2432:
!	jmp	_Label_2433
_Label_2433:
	mov	2386,r13		! source line 2386
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0SE",r10
!   _temp_2435 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2436) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2435  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0SE",r10
!   _temp_2437 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2392,r13		! source line 2392
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2446 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2440
	cmp	r1,2
	be	_Label_2441
	cmp	r1,3
	be	_Label_2442
	cmp	r1,4
	be	_Label_2443
	cmp	r1,5
	be	_Label_2444
	cmp	r1,6
	be	_Label_2445
	jmp	_Label_2438
! CASE 1...
_Label_2440:
! SEND STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0SE",r10
!   _temp_2447 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2441:
! CALL STATEMENT...
!   _temp_2448 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2448  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2397,r13		! source line 2397
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2442:
! CALL STATEMENT...
!   _temp_2449 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2449  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2399,r13		! source line 2399
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2443:
! CALL STATEMENT...
!   _temp_2450 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2450  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2401,r13		! source line 2401
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2444:
! BREAK STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0BR",r10
	jmp	_Label_2439
! CASE 6...
_Label_2445:
! CALL STATEMENT...
!   _temp_2451 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2451  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2407,r13		! source line 2407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2438:
! CALL STATEMENT...
!   _temp_2452 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2452  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2409,r13		! source line 2409
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2439:
! END WHILE...
	jmp	_Label_2432
_Label_2434:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2453
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2454
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2455
	.word	12
	.word	4
	.word	_Label_2456
	.word	16
	.word	4
	.word	_Label_2457
	.word	20
	.word	4
	.word	_Label_2458
	.word	-12
	.word	4
	.word	_Label_2459
	.word	-16
	.word	4
	.word	_Label_2460
	.word	-20
	.word	4
	.word	_Label_2461
	.word	-24
	.word	4
	.word	_Label_2462
	.word	-28
	.word	4
	.word	_Label_2463
	.word	-32
	.word	4
	.word	_Label_2464
	.word	-36
	.word	4
	.word	_Label_2465
	.word	-40
	.word	4
	.word	_Label_2466
	.word	-44
	.word	4
	.word	_Label_2467
	.word	-48
	.word	4
	.word	_Label_2468
	.word	-52
	.word	4
	.word	0
_Label_2453:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2454:
	.ascii	"Pself\0"
	.align
_Label_2455:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2456:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2457:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2418,r13		! source line 2418
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2469
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2470
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2471
	.word	12
	.word	4
	.word	_Label_2472
	.word	16
	.word	4
	.word	_Label_2473
	.word	20
	.word	4
	.word	_Label_2474
	.word	24
	.word	4
	.word	0
_Label_2469:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2470:
	.ascii	"Pself\0"
	.align
_Label_2471:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2472:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2473:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2474:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2475
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2475:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2476
	.word	_sourceFileName
	.word	367		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2476:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
	mov	2449,r13		! source line 2449
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2477 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2477  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2456,r13		! source line 2456
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0SE",r10
!   _temp_2479 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0SE",r10
!   _temp_2482 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0AS",r10
!   _temp_2483 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2485 = &_temp_2484
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2485 = _temp_2485 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2487 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3404:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3404
!   _temp_2487 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2489:
!   Data Move: *_temp_2485 = _temp_2487  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3405:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3405
!   _temp_2485 = _temp_2485 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2486 = _temp_2486 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2486) then goto _Label_2489
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2489
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2490 = &_temp_2484
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3406
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3406:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2483 = *_temp_2490  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3407:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3407
! FOR STATEMENT...
	mov	2466,r13		! source line 2466
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2495 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2496 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2495  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2491:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2496 then goto _Label_2494		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2494
_Label_2492:
	mov	2466,r13		! source line 2466
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2467,r13		! source line 2467
	mov	"\0\0AS",r10
!   _temp_2497 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2497 [i ] into _temp_2498
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2499 = _temp_2498 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2499 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2468,r13		! source line 2468
	mov	"\0\0SE",r10
!   _temp_2500 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2500 [i ] into _temp_2501
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0SE",r10
!   _temp_2503 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2503 [i ] into _temp_2504
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2502 = _temp_2504		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2505 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2502  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2493:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2491
! END FOR
_Label_2494:
! ASSIGNMENT STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0SE",r10
!   _temp_2508 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0AS",r10
!   _temp_2509 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2511 = &_temp_2510
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2511 = _temp_2511 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2513 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3408:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3408
!   _temp_2513 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2515:
!   Data Move: *_temp_2511 = _temp_2513  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3409:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3409
!   _temp_2511 = _temp_2511 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2512 = _temp_2512 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2512) then goto _Label_2515
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2515
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2516 = &_temp_2510
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3410
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3410:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2509 = *_temp_2516  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3411:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3411
! FOR STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2521 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2522 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2521  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2517:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2522 then goto _Label_2520		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2520
_Label_2518:
	mov	2478,r13		! source line 2478
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0AS",r10
!   _temp_2523 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2523 [i ] into _temp_2524
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2525 = _temp_2524 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2525 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0SE",r10
!   _temp_2527 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2527 [i ] into _temp_2528
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2526 = _temp_2528		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2529 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2526  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2519:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2517
! END FOR
_Label_2520:
! ASSIGNMENT STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3412:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3412
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0AS",r10
!   _temp_2531 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2532 = _temp_2531 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2532 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0AS",r10
	mov	2490,r13		! source line 2490
	mov	"\0\0SE",r10
!   _temp_2533 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2491,r13		! source line 2491
	mov	"\0\0SE",r10
!   _temp_2534 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2491,r13		! source line 2491
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2535
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2536
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2537
	.word	-12
	.word	4
	.word	_Label_2538
	.word	-16
	.word	4
	.word	_Label_2539
	.word	-20
	.word	4
	.word	_Label_2540
	.word	-24
	.word	4
	.word	_Label_2541
	.word	-28
	.word	4
	.word	_Label_2542
	.word	-32
	.word	4
	.word	_Label_2543
	.word	-36
	.word	4
	.word	_Label_2544
	.word	-40
	.word	4
	.word	_Label_2545
	.word	-44
	.word	4
	.word	_Label_2546
	.word	-48
	.word	4
	.word	_Label_2547
	.word	-52
	.word	4
	.word	_Label_2548
	.word	-56
	.word	4
	.word	_Label_2549
	.word	-60
	.word	4
	.word	_Label_2550
	.word	-64
	.word	4
	.word	_Label_2551
	.word	-68
	.word	4
	.word	_Label_2552
	.word	-72
	.word	4
	.word	_Label_2553
	.word	-100
	.word	28
	.word	_Label_2554
	.word	-104
	.word	4
	.word	_Label_2555
	.word	-108
	.word	4
	.word	_Label_2556
	.word	-392
	.word	284
	.word	_Label_2557
	.word	-396
	.word	4
	.word	_Label_2558
	.word	-400
	.word	4
	.word	_Label_2559
	.word	-404
	.word	4
	.word	_Label_2560
	.word	-408
	.word	4
	.word	_Label_2561
	.word	-412
	.word	4
	.word	_Label_2562
	.word	-416
	.word	4
	.word	_Label_2563
	.word	-420
	.word	4
	.word	_Label_2564
	.word	-424
	.word	4
	.word	_Label_2565
	.word	-428
	.word	4
	.word	_Label_2566
	.word	-432
	.word	4
	.word	_Label_2567
	.word	-436
	.word	4
	.word	_Label_2568
	.word	-440
	.word	4
	.word	_Label_2569
	.word	-444
	.word	4
	.word	_Label_2570
	.word	-448
	.word	4
	.word	_Label_2571
	.word	-452
	.word	4
	.word	_Label_2572
	.word	-456
	.word	4
	.word	_Label_2573
	.word	-460
	.word	4
	.word	_Label_2574
	.word	-500
	.word	40
	.word	_Label_2575
	.word	-504
	.word	4
	.word	_Label_2576
	.word	-508
	.word	4
	.word	_Label_2577
	.word	-912
	.word	404
	.word	_Label_2578
	.word	-916
	.word	4
	.word	_Label_2579
	.word	-920
	.word	4
	.word	_Label_2580
	.word	-924
	.word	4
	.word	_Label_2581
	.word	-928
	.word	4
	.word	_Label_2582
	.word	-932
	.word	4
	.word	_Label_2583
	.word	-936
	.word	4
	.word	_Label_2584
	.word	-940
	.word	4
	.word	_Label_2585
	.word	-944
	.word	4
	.word	0
_Label_2535:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2536:
	.ascii	"Pself\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2585:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3413:
	push	r0
	sub	r1,1,r1
	bne	_Label_3413
	mov	2498,r13		! source line 2498
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0SE",r10
!   _temp_2586 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2587 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2587  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2501,r13		! source line 2501
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2592 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2593 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2592  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2588:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2593 then goto _Label_2591		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2591
_Label_2589:
	mov	2502,r13		! source line 2502
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2594 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2594  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2503,r13		! source line 2503
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2504,r13		! source line 2504
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2595 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2595  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2505,r13		! source line 2505
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0SE",r10
!   _temp_2596 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2596 [i ] into _temp_2597
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2590:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2588
! END FOR
_Label_2591:
! CALL STATEMENT...
!   _temp_2598 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2598  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2508,r13		! source line 2508
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0SE",r10
!   _temp_2599 = _function_228_printFCB
	set	_function_228_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2600 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2599  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2510,r13		! source line 2510
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2601 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2601  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2511,r13		! source line 2511
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2606 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2607 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2606  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2602:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2607 then goto _Label_2605		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2605
_Label_2603:
	mov	2512,r13		! source line 2512
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2608 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2608  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2513,r13		! source line 2513
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2514,r13		! source line 2514
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2609 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2609  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2515,r13		! source line 2515
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2611 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2611 [i ] into _temp_2612
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2610 = _temp_2612		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2610  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2516,r13		! source line 2516
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2613 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2613  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2517,r13		! source line 2517
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0SE",r10
!   _temp_2614 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2614 [i ] into _temp_2615
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2604:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2602
! END FOR
_Label_2605:
! CALL STATEMENT...
!   _temp_2616 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2616  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2520,r13		! source line 2520
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2521,r13		! source line 2521
	mov	"\0\0SE",r10
!   _temp_2617 = _function_227_printOpen
	set	_function_227_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2618 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2617  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0SE",r10
!   _temp_2619 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2620
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2621
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2622
	.word	-12
	.word	4
	.word	_Label_2623
	.word	-16
	.word	4
	.word	_Label_2624
	.word	-20
	.word	4
	.word	_Label_2625
	.word	-24
	.word	4
	.word	_Label_2626
	.word	-28
	.word	4
	.word	_Label_2627
	.word	-32
	.word	4
	.word	_Label_2628
	.word	-36
	.word	4
	.word	_Label_2629
	.word	-40
	.word	4
	.word	_Label_2630
	.word	-44
	.word	4
	.word	_Label_2631
	.word	-48
	.word	4
	.word	_Label_2632
	.word	-52
	.word	4
	.word	_Label_2633
	.word	-56
	.word	4
	.word	_Label_2634
	.word	-60
	.word	4
	.word	_Label_2635
	.word	-64
	.word	4
	.word	_Label_2636
	.word	-68
	.word	4
	.word	_Label_2637
	.word	-72
	.word	4
	.word	_Label_2638
	.word	-76
	.word	4
	.word	_Label_2639
	.word	-80
	.word	4
	.word	_Label_2640
	.word	-84
	.word	4
	.word	_Label_2641
	.word	-88
	.word	4
	.word	_Label_2642
	.word	-92
	.word	4
	.word	_Label_2643
	.word	-96
	.word	4
	.word	_Label_2644
	.word	-100
	.word	4
	.word	_Label_2645
	.word	-104
	.word	4
	.word	_Label_2646
	.word	-108
	.word	4
	.word	_Label_2647
	.word	-112
	.word	4
	.word	_Label_2648
	.word	-116
	.word	4
	.word	0
_Label_2620:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2621:
	.ascii	"Pself\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2648:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3414:
	push	r0
	sub	r1,1,r1
	bne	_Label_3414
	mov	2527,r13		! source line 2527
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2543,r13		! source line 2543
	mov	"\0\0AS",r10
	mov	2543,r13		! source line 2543
	mov	"\0\0SE",r10
!   _temp_2649 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2650
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2650
	jmp	_Label_2651
_Label_2650:
! THEN...
	mov	2545,r13		! source line 2545
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2651:
! SEND STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0SE",r10
!   _temp_2652 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0WH",r10
_Label_2653:
	mov	2550,r13		! source line 2550
	mov	"\0\0SE",r10
!   _temp_2656 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2654 else goto _Label_2655
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2655
	jmp	_Label_2654
_Label_2654:
	mov	2550,r13		! source line 2550
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0SE",r10
!   _temp_2657 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2658 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2657  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2653
_Label_2655:
! ASSIGNMENT STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
	mov	2553,r13		! source line 2553
	mov	"\0\0SE",r10
!   _temp_2659 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2660 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2660 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2661 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2661 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2662 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2662 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2562,r13		! source line 2562
	mov	"\0\0SE",r10
!   _temp_2663 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2664
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2665
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2666
	.word	12
	.word	4
	.word	_Label_2667
	.word	-12
	.word	4
	.word	_Label_2668
	.word	-16
	.word	4
	.word	_Label_2669
	.word	-20
	.word	4
	.word	_Label_2670
	.word	-24
	.word	4
	.word	_Label_2671
	.word	-28
	.word	4
	.word	_Label_2672
	.word	-32
	.word	4
	.word	_Label_2673
	.word	-36
	.word	4
	.word	_Label_2674
	.word	-40
	.word	4
	.word	_Label_2675
	.word	-44
	.word	4
	.word	_Label_2676
	.word	-48
	.word	4
	.word	_Label_2677
	.word	-52
	.word	4
	.word	_Label_2678
	.word	-56
	.word	4
	.word	0
_Label_2664:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2665:
	.ascii	"Pself\0"
	.align
_Label_2666:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2677:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2678:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3415:
	push	r0
	sub	r1,1,r1
	bne	_Label_3415
	mov	2568,r13		! source line 2568
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2680		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2680
!	jmp	_Label_2679
_Label_2679:
! THEN...
	mov	2599,r13		! source line 2599
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2681 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2681  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2599,r13		! source line 2599
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2680:
! ASSIGNMENT STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0WH",r10
_Label_2682:
!   if numFiles <= 0 then goto _Label_2684		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2684
!	jmp	_Label_2683
_Label_2683:
	mov	2609,r13		! source line 2609
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2685 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2685  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2610,r13		! source line 2610
	mov	"\0\0CA",r10
	call	_function_229_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2686 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2686  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2612,r13		! source line 2612
	mov	"\0\0CA",r10
	call	_function_229_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2687 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2687  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2614,r13		! source line 2614
	mov	"\0\0CA",r10
	call	_function_229_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2691 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2691 then goto _Label_2689		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2689
!	jmp	_Label_2690
_Label_2690:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2693
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2692 = _temp_2693		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2692  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2617,r13		! source line 2617
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2688 else goto _Label_2689
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2689
	jmp	_Label_2688
_Label_2688:
! THEN...
	mov	2618,r13		! source line 2618
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0BR",r10
	jmp	_Label_2684
! END IF...
_Label_2689:
! ASSIGNMENT STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2682
_Label_2684:
! IF STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2695		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2695
!	jmp	_Label_2694
_Label_2694:
! THEN...
	mov	2626,r13		! source line 2626
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2695:
! SEND STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0SE",r10
!   _temp_2696 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2701 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2702 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2701  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2697:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2702 then goto _Label_2700		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2700
_Label_2698:
	mov	2631,r13		! source line 2631
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0AS",r10
!   _temp_2703 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2703 [i ] into _temp_2704
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2704		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2708 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2707 = *_temp_2708  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2707 != start then goto _Label_2706		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2706
!	jmp	_Label_2705
_Label_2705:
! THEN...
	mov	2634,r13		! source line 2634
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2709 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2712 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2711 = *_temp_2712  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2710 = _temp_2711 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2709 = _temp_2710  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2635,r13		! source line 2635
	mov	"\0\0SE",r10
!   _temp_2713 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2706:
!   Increment the FOR-LOOP index variable and jump back
_Label_2699:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2697
! END FOR
_Label_2700:
! WHILE STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0WH",r10
_Label_2714:
	mov	2641,r13		! source line 2641
	mov	"\0\0SE",r10
!   _temp_2717 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2715 else goto _Label_2716
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2716
	jmp	_Label_2715
_Label_2715:
	mov	2641,r13		! source line 2641
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0SE",r10
!   _temp_2718 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2719 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2718  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2714
_Label_2716:
! ASSIGNMENT STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0AS",r10
	mov	2644,r13		! source line 2644
	mov	"\0\0SE",r10
!   _temp_2720 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0SE",r10
!   _temp_2721 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2722 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2722 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2723 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2723 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2724 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2724 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2729 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2728 = *_temp_2729  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2728 < 0 then goto _Label_2727		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2727
	jmp	_Label_2725
_Label_2727:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2730 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2730 ) then goto _Label_2726		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2726
!	jmp	_Label_2725
_Label_2725:
! THEN...
	mov	2654,r13		! source line 2654
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2731 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2731  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2654,r13		! source line 2654
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2726:
! RETURN STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2732
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2733
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2734
	.word	12
	.word	4
	.word	_Label_2735
	.word	-12
	.word	4
	.word	_Label_2736
	.word	-16
	.word	4
	.word	_Label_2737
	.word	-20
	.word	4
	.word	_Label_2738
	.word	-24
	.word	4
	.word	_Label_2739
	.word	-28
	.word	4
	.word	_Label_2740
	.word	-32
	.word	4
	.word	_Label_2741
	.word	-36
	.word	4
	.word	_Label_2742
	.word	-40
	.word	4
	.word	_Label_2743
	.word	-44
	.word	4
	.word	_Label_2744
	.word	-48
	.word	4
	.word	_Label_2745
	.word	-52
	.word	4
	.word	_Label_2746
	.word	-56
	.word	4
	.word	_Label_2747
	.word	-60
	.word	4
	.word	_Label_2748
	.word	-64
	.word	4
	.word	_Label_2749
	.word	-68
	.word	4
	.word	_Label_2750
	.word	-72
	.word	4
	.word	_Label_2751
	.word	-76
	.word	4
	.word	_Label_2752
	.word	-80
	.word	4
	.word	_Label_2753
	.word	-84
	.word	4
	.word	_Label_2754
	.word	-88
	.word	4
	.word	_Label_2755
	.word	-92
	.word	4
	.word	_Label_2756
	.word	-96
	.word	4
	.word	_Label_2757
	.word	-100
	.word	4
	.word	_Label_2758
	.word	-104
	.word	4
	.word	_Label_2759
	.word	-108
	.word	4
	.word	_Label_2760
	.word	-112
	.word	4
	.word	_Label_2761
	.word	-116
	.word	4
	.word	_Label_2762
	.word	-120
	.word	4
	.word	_Label_2763
	.word	-124
	.word	4
	.word	_Label_2764
	.word	-128
	.word	4
	.word	_Label_2765
	.word	-132
	.word	4
	.word	_Label_2766
	.word	-136
	.word	4
	.word	_Label_2767
	.word	-140
	.word	4
	.word	_Label_2768
	.word	-144
	.word	4
	.word	_Label_2769
	.word	-148
	.word	4
	.word	_Label_2770
	.word	-152
	.word	4
	.word	_Label_2771
	.word	-156
	.word	4
	.word	_Label_2772
	.word	-160
	.word	4
	.word	0
_Label_2732:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2733:
	.ascii	"Pself\0"
	.align
_Label_2734:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2766:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2767:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2768:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2769:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2770:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2771:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2772:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3416:
	push	r0
	sub	r1,1,r1
	bne	_Label_3416
	mov	2669,r13		! source line 2669
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0IF",r10
!   _temp_2775 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2775 then goto _Label_2774		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2774
!	jmp	_Label_2773
_Label_2773:
! THEN...
	mov	2672,r13		! source line 2672
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2774:
! SEND STATEMENT...
	mov	2674,r13		! source line 2674
	mov	"\0\0SE",r10
!   _temp_2776 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0SE",r10
!   _temp_2777 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2778 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2778  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2779 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2782 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2781 = *_temp_2782  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2780 = _temp_2781 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2779 = _temp_2780  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2678,r13		! source line 2678
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2786 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2785 = *_temp_2786  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2785 > 0 then goto _Label_2784		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2784
!	jmp	_Label_2783
_Label_2783:
! THEN...
	mov	2679,r13		! source line 2679
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0SE",r10
!   _temp_2787 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2680,r13		! source line 2680
	mov	"\0\0SE",r10
!   _temp_2788 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2789 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2788  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2790 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2793 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2792 = *_temp_2793  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2791 = _temp_2792 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2790 = _temp_2791  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2797 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2796 = *_temp_2797  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2796 > 0 then goto _Label_2795		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2795
!	jmp	_Label_2794
_Label_2794:
! THEN...
	mov	2683,r13		! source line 2683
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0SE",r10
!   _temp_2798 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0SE",r10
!   _temp_2799 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2800 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2799  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2795:
! END IF...
_Label_2784:
! SEND STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0SE",r10
!   _temp_2801 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2802
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2803
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2804
	.word	12
	.word	4
	.word	_Label_2805
	.word	-12
	.word	4
	.word	_Label_2806
	.word	-16
	.word	4
	.word	_Label_2807
	.word	-20
	.word	4
	.word	_Label_2808
	.word	-24
	.word	4
	.word	_Label_2809
	.word	-28
	.word	4
	.word	_Label_2810
	.word	-32
	.word	4
	.word	_Label_2811
	.word	-36
	.word	4
	.word	_Label_2812
	.word	-40
	.word	4
	.word	_Label_2813
	.word	-44
	.word	4
	.word	_Label_2814
	.word	-48
	.word	4
	.word	_Label_2815
	.word	-52
	.word	4
	.word	_Label_2816
	.word	-56
	.word	4
	.word	_Label_2817
	.word	-60
	.word	4
	.word	_Label_2818
	.word	-64
	.word	4
	.word	_Label_2819
	.word	-68
	.word	4
	.word	_Label_2820
	.word	-72
	.word	4
	.word	_Label_2821
	.word	-76
	.word	4
	.word	_Label_2822
	.word	-80
	.word	4
	.word	_Label_2823
	.word	-84
	.word	4
	.word	_Label_2824
	.word	-88
	.word	4
	.word	_Label_2825
	.word	-92
	.word	4
	.word	_Label_2826
	.word	-96
	.word	4
	.word	_Label_2827
	.word	-100
	.word	4
	.word	_Label_2828
	.word	-104
	.word	4
	.word	0
_Label_2802:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2803:
	.ascii	"Pself\0"
	.align
_Label_2804:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2828:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3417:
	push	r0
	sub	r1,1,r1
	bne	_Label_3417
	mov	2692,r13		! source line 2692
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2832 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2831 = *_temp_2832  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2831) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2833 = _temp_2831 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2833 ) then goto _Label_2830		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2830
!	jmp	_Label_2829
_Label_2829:
! THEN...
	mov	2698,r13		! source line 2698
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2698,r13		! source line 2698
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2838 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2837 = *_temp_2838  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2837) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2839 = _temp_2837 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2836 = *_temp_2839  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2836 >= 0 then goto _Label_2835		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2835
!	jmp	_Label_2834
_Label_2834:
! THEN...
	mov	2699,r13		! source line 2699
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2840 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2840  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2699,r13		! source line 2699
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2835:
! ASSIGNMENT STATEMENT...
	mov	2701,r13		! source line 2701
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2842 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2841 = *_temp_2842  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2841) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2843 = _temp_2841 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2843 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2847 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2846 = *_temp_2847  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2846) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2848 = _temp_2846 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2845 = *_temp_2848  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2851 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2850 = *_temp_2851  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2850) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2852 = _temp_2850 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2849 = *_temp_2852  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2844 = _temp_2845 + _temp_2849		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2855 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2854 = *_temp_2855  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2854) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2856 = _temp_2854 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2853 = *_temp_2856  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2857 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2844  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2853  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2830:
! RETURN STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2858
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2859
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2860
	.word	12
	.word	4
	.word	_Label_2861
	.word	-12
	.word	4
	.word	_Label_2862
	.word	-16
	.word	4
	.word	_Label_2863
	.word	-20
	.word	4
	.word	_Label_2864
	.word	-24
	.word	4
	.word	_Label_2865
	.word	-28
	.word	4
	.word	_Label_2866
	.word	-32
	.word	4
	.word	_Label_2867
	.word	-36
	.word	4
	.word	_Label_2868
	.word	-40
	.word	4
	.word	_Label_2869
	.word	-44
	.word	4
	.word	_Label_2870
	.word	-48
	.word	4
	.word	_Label_2871
	.word	-52
	.word	4
	.word	_Label_2872
	.word	-56
	.word	4
	.word	_Label_2873
	.word	-60
	.word	4
	.word	_Label_2874
	.word	-64
	.word	4
	.word	_Label_2875
	.word	-68
	.word	4
	.word	_Label_2876
	.word	-72
	.word	4
	.word	_Label_2877
	.word	-76
	.word	4
	.word	_Label_2878
	.word	-80
	.word	4
	.word	_Label_2879
	.word	-84
	.word	4
	.word	_Label_2880
	.word	-88
	.word	4
	.word	_Label_2881
	.word	-92
	.word	4
	.word	_Label_2882
	.word	-96
	.word	4
	.word	_Label_2883
	.word	-100
	.word	4
	.word	_Label_2884
	.word	-104
	.word	4
	.word	_Label_2885
	.word	-108
	.word	4
	.word	0
_Label_2858:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2859:
	.ascii	"Pself\0"
	.align
_Label_2860:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3418:
	push	r0
	sub	r1,1,r1
	bne	_Label_3418
	mov	2711,r13		! source line 2711
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0SE",r10
!   _temp_2886 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2892		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2892
!   _temp_2891 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2893
_Label_2892:
!   _temp_2891 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2893:
!   if _temp_2891 then goto _Label_2890 else goto _Label_2887
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2887
	jmp	_Label_2890
_Label_2890:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2896 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2895 = *_temp_2896  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2895 == 0 then goto _Label_2897		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2897
!   _temp_2894 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2898
_Label_2897:
!   _temp_2894 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2898:
!   if _temp_2894 then goto _Label_2889 else goto _Label_2887
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2887
	jmp	_Label_2889
_Label_2889:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2901 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2900 = *_temp_2901  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2900) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2902 = _temp_2900 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2899 = *_temp_2902  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2899 >= 0 then goto _Label_2888		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2888
!	jmp	_Label_2887
_Label_2887:
! THEN...
	mov	2728,r13		! source line 2728
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2903 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2903  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2728,r13		! source line 2728
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2888:
! ASSIGNMENT STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2904 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2904  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0WH",r10
_Label_2905:
!   if numBytes <= 0 then goto _Label_2907		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2907
!	jmp	_Label_2906
_Label_2906:
	mov	2731,r13		! source line 2731
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2741,r13		! source line 2741
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2911 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2910 = *_temp_2911  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2910 == sector then goto _Label_2909		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2909
!	jmp	_Label_2908
_Label_2908:
! THEN...
	mov	2746,r13		! source line 2746
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2746,r13		! source line 2746
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2912) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2915 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2914 = *_temp_2915  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2913 = sector + _temp_2914		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2917 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2916 = *_temp_2917  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2918 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2913  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2916  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2919 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2919 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2920 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2920 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2909:
! ASSIGNMENT STATEMENT...
	mov	2754,r13		! source line 2754
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2922 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2921 = *_temp_2922  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2921 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0AS",r10
!   _temp_2923 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2923  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2755,r13		! source line 2755
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2759,r13		! source line 2759
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2760,r13		! source line 2760
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2761,r13		! source line 2761
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2905
_Label_2907:
! SEND STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0SE",r10
!   _temp_2924 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2925
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2926
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2927
	.word	12
	.word	4
	.word	_Label_2928
	.word	16
	.word	4
	.word	_Label_2929
	.word	20
	.word	4
	.word	_Label_2930
	.word	24
	.word	4
	.word	_Label_2931
	.word	-16
	.word	4
	.word	_Label_2932
	.word	-20
	.word	4
	.word	_Label_2933
	.word	-24
	.word	4
	.word	_Label_2934
	.word	-28
	.word	4
	.word	_Label_2935
	.word	-32
	.word	4
	.word	_Label_2936
	.word	-36
	.word	4
	.word	_Label_2937
	.word	-40
	.word	4
	.word	_Label_2938
	.word	-44
	.word	4
	.word	_Label_2939
	.word	-48
	.word	4
	.word	_Label_2940
	.word	-52
	.word	4
	.word	_Label_2941
	.word	-56
	.word	4
	.word	_Label_2942
	.word	-60
	.word	4
	.word	_Label_2943
	.word	-64
	.word	4
	.word	_Label_2944
	.word	-68
	.word	4
	.word	_Label_2945
	.word	-72
	.word	4
	.word	_Label_2946
	.word	-76
	.word	4
	.word	_Label_2947
	.word	-80
	.word	4
	.word	_Label_2948
	.word	-84
	.word	4
	.word	_Label_2949
	.word	-88
	.word	4
	.word	_Label_2950
	.word	-92
	.word	4
	.word	_Label_2951
	.word	-96
	.word	4
	.word	_Label_2952
	.word	-100
	.word	4
	.word	_Label_2953
	.word	-104
	.word	4
	.word	_Label_2954
	.word	-9
	.word	1
	.word	_Label_2955
	.word	-10
	.word	1
	.word	_Label_2956
	.word	-108
	.word	4
	.word	_Label_2957
	.word	-112
	.word	4
	.word	_Label_2958
	.word	-116
	.word	4
	.word	_Label_2959
	.word	-120
	.word	4
	.word	_Label_2960
	.word	-124
	.word	4
	.word	_Label_2961
	.word	-128
	.word	4
	.word	0
_Label_2925:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2926:
	.ascii	"Pself\0"
	.align
_Label_2927:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2928:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2929:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2930:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2954:
	.byte	'C'
	.ascii	"_temp_2894\0"
	.align
_Label_2955:
	.byte	'C'
	.ascii	"_temp_2891\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2957:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2958:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2959:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2960:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2961:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3419:
	push	r0
	sub	r1,1,r1
	bne	_Label_3419
	mov	2775,r13		! source line 2775
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0SE",r10
!   _temp_2962 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2968		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2968
!   _temp_2967 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2969
_Label_2968:
!   _temp_2967 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2969:
!   if _temp_2967 then goto _Label_2966 else goto _Label_2963
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2963
	jmp	_Label_2966
_Label_2966:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2972 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2971 = *_temp_2972  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2971 == 0 then goto _Label_2973		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2973
!   _temp_2970 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2974
_Label_2973:
!   _temp_2970 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2974:
!   if _temp_2970 then goto _Label_2965 else goto _Label_2963
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2963
	jmp	_Label_2965
_Label_2965:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2977 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2976 = *_temp_2977  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2976) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2978 = _temp_2976 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2975 = *_temp_2978  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2975 >= 0 then goto _Label_2964		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2964
!	jmp	_Label_2963
_Label_2963:
! THEN...
	mov	2793,r13		! source line 2793
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2979 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2979  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2793,r13		! source line 2793
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2964:
! ASSIGNMENT STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2980 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2980  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0WH",r10
_Label_2981:
!   if numBytes <= 0 then goto _Label_2983		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2983
!	jmp	_Label_2982
_Label_2982:
	mov	2796,r13		! source line 2796
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2805,r13		! source line 2805
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2806,r13		! source line 2806
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2987 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2986 = *_temp_2987  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2986 == sector then goto _Label_2985		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2985
!	jmp	_Label_2984
_Label_2984:
! THEN...
	mov	2812,r13		! source line 2812
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2988) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2985:
! ASSIGNMENT STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2990 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2989 = *_temp_2990  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2989 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0AS",r10
!   _temp_2991 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2991  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2815,r13		! source line 2815
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2995 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2994 = *_temp_2995  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2994 != sector then goto _Label_2993		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2993
!	jmp	_Label_2992
_Label_2992:
	jmp	_Label_2996
_Label_2993:
! ELSE...
	mov	2818,r13		! source line 2818
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2818,r13		! source line 2818
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2999
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2999
	jmp	_Label_2998
_Label_2999:
!   if bytesToMove != 8192 then goto _Label_2998		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2998
!	jmp	_Label_2997
_Label_2997:
	jmp	_Label_3000
_Label_2998:
! ELSE...
	mov	2822,r13		! source line 2822
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3003 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3002 = *_temp_3003  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3001 = sector + _temp_3002		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3005 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3004 = *_temp_3005  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3006 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3001  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3004  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_3000:
! END IF...
_Label_2996:
! ASSIGNMENT STATEMENT...
	mov	2826,r13		! source line 2826
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3007 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3007 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2827,r13		! source line 2827
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3008 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3008 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2831,r13		! source line 2831
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2834,r13		! source line 2834
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2981
_Label_2983:
! SEND STATEMENT...
	mov	2841,r13		! source line 2841
	mov	"\0\0SE",r10
!   _temp_3009 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_3010
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3011
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3012
	.word	12
	.word	4
	.word	_Label_3013
	.word	16
	.word	4
	.word	_Label_3014
	.word	20
	.word	4
	.word	_Label_3015
	.word	24
	.word	4
	.word	_Label_3016
	.word	-16
	.word	4
	.word	_Label_3017
	.word	-20
	.word	4
	.word	_Label_3018
	.word	-24
	.word	4
	.word	_Label_3019
	.word	-28
	.word	4
	.word	_Label_3020
	.word	-32
	.word	4
	.word	_Label_3021
	.word	-36
	.word	4
	.word	_Label_3022
	.word	-40
	.word	4
	.word	_Label_3023
	.word	-44
	.word	4
	.word	_Label_3024
	.word	-48
	.word	4
	.word	_Label_3025
	.word	-52
	.word	4
	.word	_Label_3026
	.word	-56
	.word	4
	.word	_Label_3027
	.word	-60
	.word	4
	.word	_Label_3028
	.word	-64
	.word	4
	.word	_Label_3029
	.word	-68
	.word	4
	.word	_Label_3030
	.word	-72
	.word	4
	.word	_Label_3031
	.word	-76
	.word	4
	.word	_Label_3032
	.word	-80
	.word	4
	.word	_Label_3033
	.word	-84
	.word	4
	.word	_Label_3034
	.word	-88
	.word	4
	.word	_Label_3035
	.word	-92
	.word	4
	.word	_Label_3036
	.word	-96
	.word	4
	.word	_Label_3037
	.word	-100
	.word	4
	.word	_Label_3038
	.word	-104
	.word	4
	.word	_Label_3039
	.word	-108
	.word	4
	.word	_Label_3040
	.word	-112
	.word	4
	.word	_Label_3041
	.word	-9
	.word	1
	.word	_Label_3042
	.word	-10
	.word	1
	.word	_Label_3043
	.word	-116
	.word	4
	.word	_Label_3044
	.word	-120
	.word	4
	.word	_Label_3045
	.word	-124
	.word	4
	.word	_Label_3046
	.word	-128
	.word	4
	.word	_Label_3047
	.word	-132
	.word	4
	.word	_Label_3048
	.word	-136
	.word	4
	.word	0
_Label_3010:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3011:
	.ascii	"Pself\0"
	.align
_Label_3012:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3013:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3014:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3015:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_2987\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_2971\0"
	.align
_Label_3041:
	.byte	'C'
	.ascii	"_temp_2970\0"
	.align
_Label_3042:
	.byte	'C'
	.ascii	"_temp_2967\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_2962\0"
	.align
_Label_3044:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3045:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3046:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3047:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3048:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3049
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3049:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3050
	.word	_sourceFileName
	.word	392		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3050:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3420:
	push	r0
	sub	r1,1,r1
	bne	_Label_3420
	mov	2879,r13		! source line 2879
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0AS",r10
	mov	2881,r13		! source line 2881
	mov	"\0\0SE",r10
!   _temp_3051 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2883,r13		! source line 2883
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2884,r13		! source line 2884
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2884,r13		! source line 2884
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_3052
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3053
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3054
	.word	-12
	.word	4
	.word	0
_Label_3052:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3053:
	.ascii	"Pself\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3051\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3421:
	push	r0
	sub	r1,1,r1
	bne	_Label_3421
	mov	2889,r13		! source line 2889
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3055 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3055  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2890,r13		! source line 2890
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2891,r13		! source line 2891
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3056 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3056  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2892,r13		! source line 2892
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2893,r13		! source line 2893
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3057 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3057  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2894,r13		! source line 2894
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2895,r13		! source line 2895
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3058 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3058  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2896,r13		! source line 2896
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2897,r13		! source line 2897
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3059 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3059  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2898,r13		! source line 2898
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2899,r13		! source line 2899
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3060 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3060  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2900,r13		! source line 2900
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2901,r13		! source line 2901
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2902,r13		! source line 2902
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2902,r13		! source line 2902
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_3061
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3062
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3063
	.word	-12
	.word	4
	.word	_Label_3064
	.word	-16
	.word	4
	.word	_Label_3065
	.word	-20
	.word	4
	.word	_Label_3066
	.word	-24
	.word	4
	.word	_Label_3067
	.word	-28
	.word	4
	.word	_Label_3068
	.word	-32
	.word	4
	.word	0
_Label_3061:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3062:
	.ascii	"Pself\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3069
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3069:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3070
	.word	_sourceFileName
	.word	409		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3070:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3422:
	push	r0
	sub	r1,1,r1
	bne	_Label_3422
	mov	2913,r13		! source line 2913
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3071 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3071  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2914,r13		! source line 2914
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2915,r13		! source line 2915
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3072 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3072  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2916,r13		! source line 2916
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3074		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3074
!	jmp	_Label_3073
_Label_3073:
! THEN...
	mov	2918,r13		! source line 2918
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2918,r13		! source line 2918
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_3075
_Label_3074:
! ELSE...
	mov	2920,r13		! source line 2920
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3076 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3076  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2920,r13		! source line 2920
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3075:
! RETURN STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_3077
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3078
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3079
	.word	-12
	.word	4
	.word	_Label_3080
	.word	-16
	.word	4
	.word	_Label_3081
	.word	-20
	.word	4
	.word	0
_Label_3077:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3078:
	.ascii	"Pself\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3423:
	push	r0
	sub	r1,1,r1
	bne	_Label_3423
	mov	2926,r13		! source line 2926
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2936,r13		! source line 2936
	mov	"\0\0SE",r10
!   _temp_3082 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3083 = _temp_3082 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2937,r13		! source line 2937
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2938,r13		! source line 2938
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2939,r13		! source line 2939
	mov	"\0\0SE",r10
!   _temp_3084 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3085 = _temp_3084 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2940,r13		! source line 2940
	mov	"\0\0RE",r10
	mov	2940,r13		! source line 2940
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3088 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3087  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_3086  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3086  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_3089
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3090
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3091
	.word	12
	.word	4
	.word	_Label_3092
	.word	16
	.word	4
	.word	_Label_3093
	.word	-16
	.word	4
	.word	_Label_3094
	.word	-20
	.word	4
	.word	_Label_3095
	.word	-9
	.word	1
	.word	_Label_3096
	.word	-24
	.word	4
	.word	_Label_3097
	.word	-28
	.word	4
	.word	_Label_3098
	.word	-32
	.word	4
	.word	_Label_3099
	.word	-36
	.word	4
	.word	_Label_3100
	.word	-40
	.word	4
	.word	0
_Label_3089:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3090:
	.ascii	"Pself\0"
	.align
_Label_3091:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3092:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3095:
	.byte	'C'
	.ascii	"_temp_3086\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3082\0"
	.align
_Label_3100:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3424:
	push	r0
	sub	r1,1,r1
	bne	_Label_3424
	mov	2945,r13		! source line 2945
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2950,r13		! source line 2950
	mov	"\0\0IF",r10
	mov	2950,r13		! source line 2950
	mov	"\0\0SE",r10
!   _temp_3104 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3105) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3104  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3103  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3103 then goto _Label_3102 else goto _Label_3101
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3101
	jmp	_Label_3102
_Label_3101:
! THEN...
	mov	2951,r13		! source line 2951
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3106 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3106  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2951,r13		! source line 2951
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3102:
! RETURN STATEMENT...
	mov	2953,r13		! source line 2953
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_3107
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3108
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3109
	.word	-16
	.word	4
	.word	_Label_3110
	.word	-20
	.word	4
	.word	_Label_3111
	.word	-24
	.word	4
	.word	_Label_3112
	.word	-9
	.word	1
	.word	_Label_3113
	.word	-28
	.word	4
	.word	0
_Label_3107:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3108:
	.ascii	"Pself\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3112:
	.byte	'C'
	.ascii	"_temp_3103\0"
	.align
_Label_3113:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3425:
	push	r0
	sub	r1,1,r1
	bne	_Label_3425
	mov	2958,r13		! source line 2958
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2984,r13		! source line 2984
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3117 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3116 = *_temp_3117  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3116) then goto _Label_3115
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3115
!	jmp	_Label_3114
_Label_3114:
! THEN...
	mov	2985,r13		! source line 2985
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3118 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3118  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2985,r13		! source line 2985
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3115:
! IF STATEMENT...
	mov	2989,r13		! source line 2989
	mov	"\0\0IF",r10
	mov	2989,r13		! source line 2989
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3122) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3121  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3121 == 1112300152 then goto _Label_3120		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3120
!	jmp	_Label_3119
_Label_3119:
! THEN...
	mov	2990,r13		! source line 2990
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3123 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3123  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2990,r13		! source line 2990
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2991,r13		! source line 2991
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3120:
! ASSIGNMENT STATEMENT...
	mov	2995,r13		! source line 2995
	mov	"\0\0AS",r10
	mov	2995,r13		! source line 2995
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3124) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2996,r13		! source line 2996
	mov	"\0\0AS",r10
	mov	2996,r13		! source line 2996
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3125) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2997,r13		! source line 2997
	mov	"\0\0AS",r10
	mov	2997,r13		! source line 2997
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3126) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2998,r13		! source line 2998
	mov	"\0\0AS",r10
	mov	2998,r13		! source line 2998
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3127) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2999,r13		! source line 2999
	mov	"\0\0AS",r10
	mov	2999,r13		! source line 2999
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3128) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	3000,r13		! source line 3000
	mov	"\0\0AS",r10
	mov	3000,r13		! source line 3000
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3129) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	3003,r13		! source line 3003
	mov	"\0\0IF",r10
!   _temp_3132 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3132) then goto _Label_3131
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3131
!	jmp	_Label_3130
_Label_3130:
! THEN...
	mov	3004,r13		! source line 3004
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3133 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3133  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3004,r13		! source line 3004
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3131:
! ASSIGNMENT STATEMENT...
	mov	3007,r13		! source line 3007
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	3011,r13		! source line 3011
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3135
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3135
!	jmp	_Label_3134
_Label_3134:
! THEN...
	mov	3012,r13		! source line 3012
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3136 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3136  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3012,r13		! source line 3012
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3013,r13		! source line 3013
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3135:
! IF STATEMENT...
	mov	3017,r13		! source line 3017
	mov	"\0\0IF",r10
!   _temp_3139 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3139) then goto _Label_3138
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3138
!	jmp	_Label_3137
_Label_3137:
! THEN...
	mov	3018,r13		! source line 3018
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3140 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3140  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3018,r13		! source line 3018
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3019,r13		! source line 3019
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3138:
! IF STATEMENT...
	mov	3021,r13		! source line 3021
	mov	"\0\0IF",r10
!   _temp_3143 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3143 then goto _Label_3142		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3142
!	jmp	_Label_3141
_Label_3141:
! THEN...
	mov	3022,r13		! source line 3022
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3144 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3144  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3022,r13		! source line 3022
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3023,r13		! source line 3023
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3142:
! ASSIGNMENT STATEMENT...
	mov	3025,r13		! source line 3025
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	3028,r13		! source line 3028
	mov	"\0\0IF",r10
!   _temp_3147 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3147) then goto _Label_3146
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3146
!	jmp	_Label_3145
_Label_3145:
! THEN...
	mov	3029,r13		! source line 3029
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3148 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3148  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3029,r13		! source line 3029
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3030,r13		! source line 3030
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3146:
! IF STATEMENT...
	mov	3032,r13		! source line 3032
	mov	"\0\0IF",r10
!   _temp_3151 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3151 then goto _Label_3150		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3150
!	jmp	_Label_3149
_Label_3149:
! THEN...
	mov	3033,r13		! source line 3033
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3152 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3152  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3033,r13		! source line 3033
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3034,r13		! source line 3034
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3150:
! ASSIGNMENT STATEMENT...
	mov	3036,r13		! source line 3036
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	3039,r13		! source line 3039
	mov	"\0\0AS",r10
!   _temp_3155 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3154 = _temp_3155 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3153 = _temp_3154 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3153 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3054,r13		! source line 3054
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3157		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3157
!	jmp	_Label_3156
_Label_3156:
! THEN...
	mov	3055,r13		! source line 3055
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3158 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3158  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3055,r13		! source line 3055
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3159 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3159  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3056,r13		! source line 3056
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3160 = _StringConst_221
	set	_StringConst_221,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3160  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3057,r13		! source line 3057
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3058,r13		! source line 3058
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3157:
! SEND STATEMENT...
	mov	3060,r13		! source line 3060
	mov	"\0\0SE",r10
!   _temp_3161 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	3066,r13		! source line 3066
	mov	"\0\0IF",r10
	mov	3066,r13		! source line 3066
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3165) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3164  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3164 == 707406378 then goto _Label_3163		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3163
!	jmp	_Label_3162
_Label_3162:
! THEN...
	mov	3067,r13		! source line 3067
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3166 = _StringConst_222
	set	_StringConst_222,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3166  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3067,r13		! source line 3067
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3068,r13		! source line 3068
	mov	"\0\0SE",r10
!   _temp_3167 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3069,r13		! source line 3069
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3163:
! ASSIGNMENT STATEMENT...
	mov	3073,r13		! source line 3073
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	3074,r13		! source line 3074
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3172 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3173 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3172  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3168:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3173 then goto _Label_3171		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3171
_Label_3169:
	mov	3074,r13		! source line 3074
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3075,r13		! source line 3075
	mov	"\0\0AS",r10
	mov	3075,r13		! source line 3075
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3078,r13		! source line 3078
	mov	"\0\0IF",r10
	mov	3078,r13		! source line 3078
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3177) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3176  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3176 then goto _Label_3175 else goto _Label_3174
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3174
	jmp	_Label_3175
_Label_3174:
! THEN...
	mov	3079,r13		! source line 3079
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3178 = _StringConst_223
	set	_StringConst_223,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3178  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3079,r13		! source line 3079
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3080,r13		! source line 3080
	mov	"\0\0SE",r10
!   _temp_3179 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3081,r13		! source line 3081
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3175:
! SEND STATEMENT...
	mov	3083,r13		! source line 3083
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3084,r13		! source line 3084
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3170:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3168
! END FOR
_Label_3171:
! IF STATEMENT...
	mov	3088,r13		! source line 3088
	mov	"\0\0IF",r10
	mov	3088,r13		! source line 3088
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3183) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3182  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3182 == 707406378 then goto _Label_3181		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3181
!	jmp	_Label_3180
_Label_3180:
! THEN...
	mov	3089,r13		! source line 3089
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3184 = _StringConst_224
	set	_StringConst_224,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3184  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3089,r13		! source line 3089
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3090,r13		! source line 3090
	mov	"\0\0SE",r10
!   _temp_3185 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3091,r13		! source line 3091
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3181:
! FOR STATEMENT...
	mov	3095,r13		! source line 3095
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3190 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3191 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3190  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3186:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3191 then goto _Label_3189		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3189
_Label_3187:
	mov	3095,r13		! source line 3095
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3096,r13		! source line 3096
	mov	"\0\0AS",r10
	mov	3096,r13		! source line 3096
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3099,r13		! source line 3099
	mov	"\0\0IF",r10
	mov	3099,r13		! source line 3099
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3195) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3194  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3194 then goto _Label_3193 else goto _Label_3192
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3192
	jmp	_Label_3193
_Label_3192:
! THEN...
	mov	3100,r13		! source line 3100
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3196 = _StringConst_225
	set	_StringConst_225,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3196  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3100,r13		! source line 3100
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3101,r13		! source line 3101
	mov	"\0\0SE",r10
!   _temp_3197 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3102,r13		! source line 3102
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3193:
! ASSIGNMENT STATEMENT...
	mov	3104,r13		! source line 3104
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3188:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3186
! END FOR
_Label_3189:
! IF STATEMENT...
	mov	3108,r13		! source line 3108
	mov	"\0\0IF",r10
	mov	3108,r13		! source line 3108
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3201) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3200  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3200 == 707406378 then goto _Label_3199		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3199
!	jmp	_Label_3198
_Label_3198:
! THEN...
	mov	3109,r13		! source line 3109
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3202 = _StringConst_226
	set	_StringConst_226,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3202  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3109,r13		! source line 3109
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3110,r13		! source line 3110
	mov	"\0\0SE",r10
!   _temp_3203 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3111,r13		! source line 3111
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3199:
! ASSIGNMENT STATEMENT...
	mov	3115,r13		! source line 3115
	mov	"\0\0AS",r10
	mov	3115,r13		! source line 3115
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	3119,r13		! source line 3119
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3122,r13		! source line 3122
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_3204
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3205
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3206
	.word	12
	.word	4
	.word	_Label_3207
	.word	-16
	.word	4
	.word	_Label_3208
	.word	-20
	.word	4
	.word	_Label_3209
	.word	-24
	.word	4
	.word	_Label_3210
	.word	-28
	.word	4
	.word	_Label_3211
	.word	-32
	.word	4
	.word	_Label_3212
	.word	-36
	.word	4
	.word	_Label_3213
	.word	-40
	.word	4
	.word	_Label_3214
	.word	-9
	.word	1
	.word	_Label_3215
	.word	-44
	.word	4
	.word	_Label_3216
	.word	-48
	.word	4
	.word	_Label_3217
	.word	-52
	.word	4
	.word	_Label_3218
	.word	-56
	.word	4
	.word	_Label_3219
	.word	-60
	.word	4
	.word	_Label_3220
	.word	-64
	.word	4
	.word	_Label_3221
	.word	-68
	.word	4
	.word	_Label_3222
	.word	-72
	.word	4
	.word	_Label_3223
	.word	-76
	.word	4
	.word	_Label_3224
	.word	-10
	.word	1
	.word	_Label_3225
	.word	-80
	.word	4
	.word	_Label_3226
	.word	-84
	.word	4
	.word	_Label_3227
	.word	-88
	.word	4
	.word	_Label_3228
	.word	-92
	.word	4
	.word	_Label_3229
	.word	-96
	.word	4
	.word	_Label_3230
	.word	-100
	.word	4
	.word	_Label_3231
	.word	-104
	.word	4
	.word	_Label_3232
	.word	-108
	.word	4
	.word	_Label_3233
	.word	-112
	.word	4
	.word	_Label_3234
	.word	-116
	.word	4
	.word	_Label_3235
	.word	-120
	.word	4
	.word	_Label_3236
	.word	-124
	.word	4
	.word	_Label_3237
	.word	-128
	.word	4
	.word	_Label_3238
	.word	-132
	.word	4
	.word	_Label_3239
	.word	-136
	.word	4
	.word	_Label_3240
	.word	-140
	.word	4
	.word	_Label_3241
	.word	-144
	.word	4
	.word	_Label_3242
	.word	-148
	.word	4
	.word	_Label_3243
	.word	-152
	.word	4
	.word	_Label_3244
	.word	-156
	.word	4
	.word	_Label_3245
	.word	-160
	.word	4
	.word	_Label_3246
	.word	-164
	.word	4
	.word	_Label_3247
	.word	-168
	.word	4
	.word	_Label_3248
	.word	-172
	.word	4
	.word	_Label_3249
	.word	-176
	.word	4
	.word	_Label_3250
	.word	-180
	.word	4
	.word	_Label_3251
	.word	-184
	.word	4
	.word	_Label_3252
	.word	-188
	.word	4
	.word	_Label_3253
	.word	-192
	.word	4
	.word	_Label_3254
	.word	-196
	.word	4
	.word	_Label_3255
	.word	-200
	.word	4
	.word	_Label_3256
	.word	-204
	.word	4
	.word	_Label_3257
	.word	-208
	.word	4
	.word	_Label_3258
	.word	-212
	.word	4
	.word	_Label_3259
	.word	-216
	.word	4
	.word	_Label_3260
	.word	-220
	.word	4
	.word	_Label_3261
	.word	-224
	.word	4
	.word	_Label_3262
	.word	-228
	.word	4
	.word	_Label_3263
	.word	-232
	.word	4
	.word	_Label_3264
	.word	-236
	.word	4
	.word	_Label_3265
	.word	-240
	.word	4
	.word	_Label_3266
	.word	-244
	.word	4
	.word	_Label_3267
	.word	-248
	.word	4
	.word	_Label_3268
	.word	-252
	.word	4
	.word	_Label_3269
	.word	-256
	.word	4
	.word	_Label_3270
	.word	-260
	.word	4
	.word	_Label_3271
	.word	-264
	.word	4
	.word	_Label_3272
	.word	-268
	.word	4
	.word	0
_Label_3204:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3205:
	.ascii	"Pself\0"
	.align
_Label_3206:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3207:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3208:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3209:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3210:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3211:
	.byte	'?'
	.ascii	"_temp_3197\0"
	.align
_Label_3212:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3213:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3214:
	.byte	'C'
	.ascii	"_temp_3194\0"
	.align
_Label_3215:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3216:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3217:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3218:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3219:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3220:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3221:
	.byte	'?'
	.ascii	"_temp_3179\0"
	.align
_Label_3222:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3223:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3224:
	.byte	'C'
	.ascii	"_temp_3176\0"
	.align
_Label_3225:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3226:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3167\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3166\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3164\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3232:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3233:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3234:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3235:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3236:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
_Label_3237:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3238:
	.byte	'?'
	.ascii	"_temp_3152\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3151\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3148\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3147\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3244:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3245:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3246:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3247:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3248:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3249:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3261:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3262:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3263:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3264:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3265:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3266:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3267:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3268:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3269:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3270:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3271:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3272:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
