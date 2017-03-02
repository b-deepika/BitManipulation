##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=BitManipulation
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/Deepika/CProjects/CProjects
ProjectPath            :=C:/Users/Deepika/CProjects/CProjects/BitManipulation
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Deepika
Date                   :=02/03/2017
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=C:/TDM-GCC-32/bin/g++.exe
SharedObjectLinkerName :=C:/TDM-GCC-32/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="BitManipulation.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/TDM-GCC-32/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/TDM-GCC-32/bin/ar.exe rcu
CXX      := C:/TDM-GCC-32/bin/g++.exe
CC       := C:/TDM-GCC-32/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/TDM-GCC-32/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IntermediateDirectory)/CountBits.c$(ObjectSuffix) $(IntermediateDirectory)/Math.c$(ObjectSuffix) $(IntermediateDirectory)/DisplayBinary.c$(ObjectSuffix) $(IntermediateDirectory)/ModifyBits.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.c$(ObjectSuffix): main.c $(IntermediateDirectory)/main.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Deepika/CProjects/CProjects/BitManipulation/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.c$(DependSuffix): main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.c$(ObjectSuffix) -MF$(IntermediateDirectory)/main.c$(DependSuffix) -MM main.c

$(IntermediateDirectory)/main.c$(PreprocessSuffix): main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.c$(PreprocessSuffix) main.c

$(IntermediateDirectory)/CountBits.c$(ObjectSuffix): CountBits.c $(IntermediateDirectory)/CountBits.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Deepika/CProjects/CProjects/BitManipulation/CountBits.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CountBits.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CountBits.c$(DependSuffix): CountBits.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CountBits.c$(ObjectSuffix) -MF$(IntermediateDirectory)/CountBits.c$(DependSuffix) -MM CountBits.c

$(IntermediateDirectory)/CountBits.c$(PreprocessSuffix): CountBits.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CountBits.c$(PreprocessSuffix) CountBits.c

$(IntermediateDirectory)/Math.c$(ObjectSuffix): Math.c $(IntermediateDirectory)/Math.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Deepika/CProjects/CProjects/BitManipulation/Math.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Math.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Math.c$(DependSuffix): Math.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Math.c$(ObjectSuffix) -MF$(IntermediateDirectory)/Math.c$(DependSuffix) -MM Math.c

$(IntermediateDirectory)/Math.c$(PreprocessSuffix): Math.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Math.c$(PreprocessSuffix) Math.c

$(IntermediateDirectory)/DisplayBinary.c$(ObjectSuffix): DisplayBinary.c $(IntermediateDirectory)/DisplayBinary.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Deepika/CProjects/CProjects/BitManipulation/DisplayBinary.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/DisplayBinary.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/DisplayBinary.c$(DependSuffix): DisplayBinary.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/DisplayBinary.c$(ObjectSuffix) -MF$(IntermediateDirectory)/DisplayBinary.c$(DependSuffix) -MM DisplayBinary.c

$(IntermediateDirectory)/DisplayBinary.c$(PreprocessSuffix): DisplayBinary.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/DisplayBinary.c$(PreprocessSuffix) DisplayBinary.c

$(IntermediateDirectory)/ModifyBits.c$(ObjectSuffix): ModifyBits.c $(IntermediateDirectory)/ModifyBits.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Deepika/CProjects/CProjects/BitManipulation/ModifyBits.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ModifyBits.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ModifyBits.c$(DependSuffix): ModifyBits.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ModifyBits.c$(ObjectSuffix) -MF$(IntermediateDirectory)/ModifyBits.c$(DependSuffix) -MM ModifyBits.c

$(IntermediateDirectory)/ModifyBits.c$(PreprocessSuffix): ModifyBits.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ModifyBits.c$(PreprocessSuffix) ModifyBits.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


