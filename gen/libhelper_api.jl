# Julia wrapper for header: /Users/gnimuc/.julia/dev/CImGui/deps/usr/include/helper.h
# Automatically generated using Clang.jl


function ImGuiIO_Get_ConfigFlags(io)
    ccall((:ImGuiIO_Get_ConfigFlags, libcimgui_helper), ImGuiConfigFlags, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_BackendFlags(io)
    ccall((:ImGuiIO_Get_BackendFlags, libcimgui_helper), ImGuiBackendFlags, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_DisplaySize(io)
    ccall((:ImGuiIO_Get_DisplaySize, libcimgui_helper), ImVec2, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_DeltaTime(io)
    ccall((:ImGuiIO_Get_DeltaTime, libcimgui_helper), Cfloat, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_IniSavingRate(io)
    ccall((:ImGuiIO_Get_IniSavingRate, libcimgui_helper), Cfloat, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_IniFilename(io)
    ccall((:ImGuiIO_Get_IniFilename, libcimgui_helper), Cstring, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_LogFilename(io)
    ccall((:ImGuiIO_Get_LogFilename, libcimgui_helper), Cstring, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_MouseDoubleClickTime(io)
    ccall((:ImGuiIO_Get_MouseDoubleClickTime, libcimgui_helper), Cfloat, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_MouseDoubleClickMaxDist(io)
    ccall((:ImGuiIO_Get_MouseDoubleClickMaxDist, libcimgui_helper), Cfloat, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_MouseDragThreshold(io)
    ccall((:ImGuiIO_Get_MouseDragThreshold, libcimgui_helper), Cfloat, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_KeyMap(io, i)
    ccall((:ImGuiIO_Get_KeyMap, libcimgui_helper), Cint, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_KeyRepeatDelay(io)
    ccall((:ImGuiIO_Get_KeyRepeatDelay, libcimgui_helper), Cfloat, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_KeyRepeatRate(io)
    ccall((:ImGuiIO_Get_KeyRepeatRate, libcimgui_helper), Cfloat, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_UserData(io)
    ccall((:ImGuiIO_Get_UserData, libcimgui_helper), Ptr{Cvoid}, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_Fonts(io)
    ccall((:ImGuiIO_Get_Fonts, libcimgui_helper), Ptr{ImFontAtlas}, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_FontGlobalScale(io)
    ccall((:ImGuiIO_Get_FontGlobalScale, libcimgui_helper), Cfloat, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_FontAllowUserScaling(io)
    ccall((:ImGuiIO_Get_FontAllowUserScaling, libcimgui_helper), Bool, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_FontDefault(io)
    ccall((:ImGuiIO_Get_FontDefault, libcimgui_helper), Ptr{ImFont}, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_DisplayFramebufferScale(io)
    ccall((:ImGuiIO_Get_DisplayFramebufferScale, libcimgui_helper), ImVec2, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_DisplayVisibleMin(io)
    ccall((:ImGuiIO_Get_DisplayVisibleMin, libcimgui_helper), ImVec2, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_DisplayVisibleMax(io)
    ccall((:ImGuiIO_Get_DisplayVisibleMax, libcimgui_helper), ImVec2, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_MouseDrawCursor(io)
    ccall((:ImGuiIO_Get_MouseDrawCursor, libcimgui_helper), Bool, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_ConfigMacOSXBehaviors(io)
    ccall((:ImGuiIO_Get_ConfigMacOSXBehaviors, libcimgui_helper), Bool, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_ConfigInputTextCursorBlink(io)
    ccall((:ImGuiIO_Get_ConfigInputTextCursorBlink, libcimgui_helper), Bool, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_ConfigResizeWindowsFromEdges(io)
    ccall((:ImGuiIO_Get_ConfigResizeWindowsFromEdges, libcimgui_helper), Bool, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_BackendPlatformName(io)
    ccall((:ImGuiIO_Get_BackendPlatformName, libcimgui_helper), Cstring, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_BackendRendererName(io)
    ccall((:ImGuiIO_Get_BackendRendererName, libcimgui_helper), Cstring, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_ImeWindowHandle(io)
    ccall((:ImGuiIO_Get_ImeWindowHandle, libcimgui_helper), Ptr{Cvoid}, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_RenderDrawListsFnUnused(io)
    ccall((:ImGuiIO_Get_RenderDrawListsFnUnused, libcimgui_helper), Ptr{Cvoid}, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_MousePos(io)
    ccall((:ImGuiIO_Get_MousePos, libcimgui_helper), ImVec2, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_MouseDown(io, i)
    ccall((:ImGuiIO_Get_MouseDown, libcimgui_helper), Bool, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_MouseWheel(io)
    ccall((:ImGuiIO_Get_MouseWheel, libcimgui_helper), Cfloat, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_MouseWheelH(io)
    ccall((:ImGuiIO_Get_MouseWheelH, libcimgui_helper), Cfloat, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_KeyCtrl(io)
    ccall((:ImGuiIO_Get_KeyCtrl, libcimgui_helper), Bool, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_KeyShift(io)
    ccall((:ImGuiIO_Get_KeyShift, libcimgui_helper), Bool, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_KeyAlt(io)
    ccall((:ImGuiIO_Get_KeyAlt, libcimgui_helper), Bool, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_KeySuper(io)
    ccall((:ImGuiIO_Get_KeySuper, libcimgui_helper), Bool, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_KeysDown(io, i)
    ccall((:ImGuiIO_Get_KeysDown, libcimgui_helper), Bool, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_InputCharacters(io, i)
    ccall((:ImGuiIO_Get_InputCharacters, libcimgui_helper), ImWchar, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_NavInputs(io, i)
    ccall((:ImGuiIO_Get_NavInputs, libcimgui_helper), Cfloat, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_WantCaptureMouse(io)
    ccall((:ImGuiIO_Get_WantCaptureMouse, libcimgui_helper), Bool, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_WantCaptureKeyboard(io)
    ccall((:ImGuiIO_Get_WantCaptureKeyboard, libcimgui_helper), Bool, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_WantTextInput(io)
    ccall((:ImGuiIO_Get_WantTextInput, libcimgui_helper), Bool, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_WantSetMousePos(io)
    ccall((:ImGuiIO_Get_WantSetMousePos, libcimgui_helper), Bool, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_WantSaveIniSettings(io)
    ccall((:ImGuiIO_Get_WantSaveIniSettings, libcimgui_helper), Bool, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_NavActive(io)
    ccall((:ImGuiIO_Get_NavActive, libcimgui_helper), Bool, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_NavVisible(io)
    ccall((:ImGuiIO_Get_NavVisible, libcimgui_helper), Bool, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_Framerate(io)
    ccall((:ImGuiIO_Get_Framerate, libcimgui_helper), Cfloat, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_MetricsRenderVertices(io)
    ccall((:ImGuiIO_Get_MetricsRenderVertices, libcimgui_helper), Cint, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_MetricsRenderIndices(io)
    ccall((:ImGuiIO_Get_MetricsRenderIndices, libcimgui_helper), Cint, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_MetricsRenderWindows(io)
    ccall((:ImGuiIO_Get_MetricsRenderWindows, libcimgui_helper), Cint, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_MetricsActiveWindows(io)
    ccall((:ImGuiIO_Get_MetricsActiveWindows, libcimgui_helper), Cint, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_MetricsActiveAllocations(io)
    ccall((:ImGuiIO_Get_MetricsActiveAllocations, libcimgui_helper), Cint, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_MouseDelta(io)
    ccall((:ImGuiIO_Get_MouseDelta, libcimgui_helper), ImVec2, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_MousePosPrev(io)
    ccall((:ImGuiIO_Get_MousePosPrev, libcimgui_helper), ImVec2, (Ptr{ImGuiIO},), io)
end

function ImGuiIO_Get_MouseClickedPos(io, i)
    ccall((:ImGuiIO_Get_MouseClickedPos, libcimgui_helper), ImVec2, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_MouseClickedTime(io, i)
    ccall((:ImGuiIO_Get_MouseClickedTime, libcimgui_helper), Cdouble, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_MouseClicked(io, i)
    ccall((:ImGuiIO_Get_MouseClicked, libcimgui_helper), Bool, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_MouseDoubleClicked(io, i)
    ccall((:ImGuiIO_Get_MouseDoubleClicked, libcimgui_helper), Bool, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_MouseReleased(io, i)
    ccall((:ImGuiIO_Get_MouseReleased, libcimgui_helper), Bool, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_MouseDownOwned(io, i)
    ccall((:ImGuiIO_Get_MouseDownOwned, libcimgui_helper), Bool, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_MouseDownDuration(io, i)
    ccall((:ImGuiIO_Get_MouseDownDuration, libcimgui_helper), Cfloat, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_MouseDownDurationPrev(io, i)
    ccall((:ImGuiIO_Get_MouseDownDurationPrev, libcimgui_helper), Cfloat, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_MouseDragMaxDistanceAbs(io, i)
    ccall((:ImGuiIO_Get_MouseDragMaxDistanceAbs, libcimgui_helper), ImVec2, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_MouseDragMaxDistanceSqr(io, i)
    ccall((:ImGuiIO_Get_MouseDragMaxDistanceSqr, libcimgui_helper), Cfloat, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_KeysDownDuration(io, i)
    ccall((:ImGuiIO_Get_KeysDownDuration, libcimgui_helper), Cfloat, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_KeysDownDurationPrev(io, i)
    ccall((:ImGuiIO_Get_KeysDownDurationPrev, libcimgui_helper), Cfloat, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_NavInputsDownDuration(io, i)
    ccall((:ImGuiIO_Get_NavInputsDownDuration, libcimgui_helper), Cfloat, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Get_NavInputsDownDurationPrev(io, i)
    ccall((:ImGuiIO_Get_NavInputsDownDurationPrev, libcimgui_helper), Cfloat, (Ptr{ImGuiIO}, Cint), io, i)
end

function ImGuiIO_Set_ConfigFlags(io, x)
    ccall((:ImGuiIO_Set_ConfigFlags, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, ImGuiConfigFlags), io, x)
end

function ImGuiIO_Set_BackendFlags(io, x)
    ccall((:ImGuiIO_Set_BackendFlags, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, ImGuiBackendFlags), io, x)
end

function ImGuiIO_Set_DisplaySize(io, x)
    ccall((:ImGuiIO_Set_DisplaySize, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, ImVec2), io, x)
end

function ImGuiIO_Set_DeltaTime(io, x)
    ccall((:ImGuiIO_Set_DeltaTime, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cfloat), io, x)
end

function ImGuiIO_Set_IniSavingRate(io, x)
    ccall((:ImGuiIO_Set_IniSavingRate, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cfloat), io, x)
end

function ImGuiIO_Set_MouseDoubleClickTime(io, x)
    ccall((:ImGuiIO_Set_MouseDoubleClickTime, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cfloat), io, x)
end

function ImGuiIO_Set_MouseDoubleClickMaxDist(io, x)
    ccall((:ImGuiIO_Set_MouseDoubleClickMaxDist, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cfloat), io, x)
end

function ImGuiIO_Set_MouseDragThreshold(io, x)
    ccall((:ImGuiIO_Set_MouseDragThreshold, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cfloat), io, x)
end

function ImGuiIO_Set_KeyMap(io, i, x)
    ccall((:ImGuiIO_Set_KeyMap, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, Cint), io, i, x)
end

function ImGuiIO_Set_KeyRepeatDelay(io, x)
    ccall((:ImGuiIO_Set_KeyRepeatDelay, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cfloat), io, x)
end

function ImGuiIO_Set_KeyRepeatRate(io, x)
    ccall((:ImGuiIO_Set_KeyRepeatRate, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cfloat), io, x)
end

function ImGuiIO_Set_UserData(io, x)
    ccall((:ImGuiIO_Set_UserData, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Ptr{Cvoid}), io, x)
end

function ImGuiIO_Set_Fonts(io, x)
    ccall((:ImGuiIO_Set_Fonts, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Ptr{ImFontAtlas}), io, x)
end

function ImGuiIO_Set_FontGlobalScale(io, x)
    ccall((:ImGuiIO_Set_FontGlobalScale, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cfloat), io, x)
end

function ImGuiIO_Set_FontAllowUserScaling(io, x)
    ccall((:ImGuiIO_Set_FontAllowUserScaling, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Bool), io, x)
end

function ImGuiIO_Set_FontDefault(io, x)
    ccall((:ImGuiIO_Set_FontDefault, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Ptr{ImFont}), io, x)
end

function ImGuiIO_Set_DisplayFramebufferScale(io, x)
    ccall((:ImGuiIO_Set_DisplayFramebufferScale, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, ImVec2), io, x)
end

function ImGuiIO_Set_DisplayVisibleMin(io, x)
    ccall((:ImGuiIO_Set_DisplayVisibleMin, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, ImVec2), io, x)
end

function ImGuiIO_Set_DisplayVisibleMax(io, x)
    ccall((:ImGuiIO_Set_DisplayVisibleMax, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, ImVec2), io, x)
end

function ImGuiIO_Set_MouseDrawCursor(io, x)
    ccall((:ImGuiIO_Set_MouseDrawCursor, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Bool), io, x)
end

function ImGuiIO_Set_ConfigMacOSXBehaviors(io, x)
    ccall((:ImGuiIO_Set_ConfigMacOSXBehaviors, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Bool), io, x)
end

function ImGuiIO_Set_ConfigInputTextCursorBlink(io, x)
    ccall((:ImGuiIO_Set_ConfigInputTextCursorBlink, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Bool), io, x)
end

function ImGuiIO_Set_ConfigResizeWindowsFromEdges(io, x)
    ccall((:ImGuiIO_Set_ConfigResizeWindowsFromEdges, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Bool), io, x)
end

function ImGuiIO_Set_ImeWindowHandle(io, x)
    ccall((:ImGuiIO_Set_ImeWindowHandle, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Ptr{Cvoid}), io, x)
end

function ImGuiIO_Set_RenderDrawListsFnUnused(io, x)
    ccall((:ImGuiIO_Set_RenderDrawListsFnUnused, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Ptr{Cvoid}), io, x)
end

function ImGuiIO_Set_MousePos(io, x)
    ccall((:ImGuiIO_Set_MousePos, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, ImVec2), io, x)
end

function ImGuiIO_Set_MouseDown(io, i, x)
    ccall((:ImGuiIO_Set_MouseDown, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, Bool), io, i, x)
end

function ImGuiIO_Set_MouseWheel(io, x)
    ccall((:ImGuiIO_Set_MouseWheel, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cfloat), io, x)
end

function ImGuiIO_Set_MouseWheelH(io, x)
    ccall((:ImGuiIO_Set_MouseWheelH, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cfloat), io, x)
end

function ImGuiIO_Set_KeyCtrl(io, x)
    ccall((:ImGuiIO_Set_KeyCtrl, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Bool), io, x)
end

function ImGuiIO_Set_KeyShift(io, x)
    ccall((:ImGuiIO_Set_KeyShift, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Bool), io, x)
end

function ImGuiIO_Set_KeyAlt(io, x)
    ccall((:ImGuiIO_Set_KeyAlt, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Bool), io, x)
end

function ImGuiIO_Set_KeySuper(io, x)
    ccall((:ImGuiIO_Set_KeySuper, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Bool), io, x)
end

function ImGuiIO_Set_KeysDown(io, i, x)
    ccall((:ImGuiIO_Set_KeysDown, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, Bool), io, i, x)
end

function ImGuiIO_Set_InputCharacters(io, i, x)
    ccall((:ImGuiIO_Set_InputCharacters, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, ImWchar), io, i, x)
end

function ImGuiIO_Set_NavInputs(io, i, x)
    ccall((:ImGuiIO_Set_NavInputs, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, Cfloat), io, i, x)
end

function ImGuiIO_Set_WantCaptureMouse(io, x)
    ccall((:ImGuiIO_Set_WantCaptureMouse, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Bool), io, x)
end

function ImGuiIO_Set_WantCaptureKeyboard(io, x)
    ccall((:ImGuiIO_Set_WantCaptureKeyboard, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Bool), io, x)
end

function ImGuiIO_Set_WantTextInput(io, x)
    ccall((:ImGuiIO_Set_WantTextInput, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Bool), io, x)
end

function ImGuiIO_Set_WantSetMousePos(io, x)
    ccall((:ImGuiIO_Set_WantSetMousePos, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Bool), io, x)
end

function ImGuiIO_Set_WantSaveIniSettings(io, x)
    ccall((:ImGuiIO_Set_WantSaveIniSettings, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Bool), io, x)
end

function ImGuiIO_Set_NavActive(io, x)
    ccall((:ImGuiIO_Set_NavActive, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Bool), io, x)
end

function ImGuiIO_Set_NavVisible(io, x)
    ccall((:ImGuiIO_Set_NavVisible, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Bool), io, x)
end

function ImGuiIO_Set_Framerate(io, x)
    ccall((:ImGuiIO_Set_Framerate, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cfloat), io, x)
end

function ImGuiIO_Set_MetricsRenderVertices(io, x)
    ccall((:ImGuiIO_Set_MetricsRenderVertices, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint), io, x)
end

function ImGuiIO_Set_MetricsRenderIndices(io, x)
    ccall((:ImGuiIO_Set_MetricsRenderIndices, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint), io, x)
end

function ImGuiIO_Set_MetricsRenderWindows(io, x)
    ccall((:ImGuiIO_Set_MetricsRenderWindows, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint), io, x)
end

function ImGuiIO_Set_MetricsActiveWindows(io, x)
    ccall((:ImGuiIO_Set_MetricsActiveWindows, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint), io, x)
end

function ImGuiIO_Set_MetricsActiveAllocations(io, x)
    ccall((:ImGuiIO_Set_MetricsActiveAllocations, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint), io, x)
end

function ImGuiIO_Set_MouseDelta(io, x)
    ccall((:ImGuiIO_Set_MouseDelta, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, ImVec2), io, x)
end

function ImGuiIO_Set_MousePosPrev(io, x)
    ccall((:ImGuiIO_Set_MousePosPrev, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, ImVec2), io, x)
end

function ImGuiIO_Set_MouseClickedPos(io, i, x)
    ccall((:ImGuiIO_Set_MouseClickedPos, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, ImVec2), io, i, x)
end

function ImGuiIO_Set_MouseClickedTime(io, i, x)
    ccall((:ImGuiIO_Set_MouseClickedTime, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, Cdouble), io, i, x)
end

function ImGuiIO_Set_MouseClicked(io, i, x)
    ccall((:ImGuiIO_Set_MouseClicked, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, Bool), io, i, x)
end

function ImGuiIO_Set_MouseDoubleClicked(io, i, x)
    ccall((:ImGuiIO_Set_MouseDoubleClicked, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, Bool), io, i, x)
end

function ImGuiIO_Set_MouseReleased(io, i, x)
    ccall((:ImGuiIO_Set_MouseReleased, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, Bool), io, i, x)
end

function ImGuiIO_Set_MouseDownOwned(io, i, x)
    ccall((:ImGuiIO_Set_MouseDownOwned, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, Bool), io, i, x)
end

function ImGuiIO_Set_MouseDownDuration(io, i, x)
    ccall((:ImGuiIO_Set_MouseDownDuration, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, Cfloat), io, i, x)
end

function ImGuiIO_Set_MouseDownDurationPrev(io, i, x)
    ccall((:ImGuiIO_Set_MouseDownDurationPrev, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, Cfloat), io, i, x)
end

function ImGuiIO_Set_MouseDragMaxDistanceAbs(io, i, x)
    ccall((:ImGuiIO_Set_MouseDragMaxDistanceAbs, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, ImVec2), io, i, x)
end

function ImGuiIO_Set_MouseDragMaxDistanceSqr(io, i, x)
    ccall((:ImGuiIO_Set_MouseDragMaxDistanceSqr, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, Cfloat), io, i, x)
end

function ImGuiIO_Set_KeysDownDuration(io, i, x)
    ccall((:ImGuiIO_Set_KeysDownDuration, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, Cfloat), io, i, x)
end

function ImGuiIO_Set_KeysDownDurationPrev(io, i, x)
    ccall((:ImGuiIO_Set_KeysDownDurationPrev, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, Cfloat), io, i, x)
end

function ImGuiIO_Set_NavInputsDownDuration(io, i, x)
    ccall((:ImGuiIO_Set_NavInputsDownDuration, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, Cfloat), io, i, x)
end

function ImGuiIO_Set_NavInputsDownDurationPrev(io, i, x)
    ccall((:ImGuiIO_Set_NavInputsDownDurationPrev, libcimgui_helper), Cvoid, (Ptr{ImGuiIO}, Cint, Cfloat), io, i, x)
end