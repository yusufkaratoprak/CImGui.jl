# context
"""
    CreateContext() -> Ptr{ImGuiContext}
    CreateContext(shared_font_atlas::Ptr{ImFontAtlas}) -> Ptr{ImGuiContext}
Return a handle of `ImGuiContext`.
"""
CreateContext() = igCreateContext(C_NULL)
CreateContext(shared_font_atlas::Ptr{ImFontAtlas}) = igCreateContext(shared_font_atlas)

"""
    DestroyContext()
    DestroyContext(ctx::Ptr{ImGuiContext})
Destroy `ImGuiContext`. `DestroyContext()` will destroy current context.
"""
DestroyContext() = igDestroyContext(C_NULL)
DestroyContext(ctx::Ptr{ImGuiContext}) = igDestroyContext(ctx)

"""
    GetCurrentContext() -> Ptr{ImGuiContext}
Return a handle of the current context.
"""
GetCurrentContext() = igGetCurrentContext()

"""
    SetCurrentContext(ctx::Ptr{ImGuiContext})
Set the current context to the input.
"""
SetCurrentContext(ctx::Ptr{ImGuiContext}) = igSetCurrentContext(ctx)

# Main
"""
    GetIO() -> Ptr{ImGuiIO}
Return a handle of `ImGuiIO` which is for accessing the IO structure:
- mouse/keyboard/gamepad inputs
- time
- various configuration options/flags
"""
GetIO() = igGetIO()

"""
    GetStyle() -> Ptr{ImGuiStyle}
Return a handle of `ImGuiStyle` which is for accessing the Style structure (colors, sizes).

!!! note
    Always use [`PushStyleCol`](@ref), [`PushStyleVar`](@ref) to modify style mid-frame.
"""
GetStyle() = igGetStyle()

"""
    NewFrame()
Start a new ImGui frame, you can submit any command from this point until [`Render`](@ref)
or [`EndFrame`](@ref).
"""
NewFrame() = igNewFrame()

"""
    EndFrame()
Calling this function ends the ImGui frame. This function is automatically called by [`Render`](@ref),
you likely don't need to call it yourself directly. If you don't need to render data (skipping rendering),
you may call [`EndFrame`](@ref) but you'll have wasted CPU already! If you don't need to render,
better to not create any imgui windows and not call [`NewFrame`](@ref) at all!
"""
EndFrame() = igEndFrame()

"""
    Render()
Calling this function ends the ImGui frame. This function finalizes the draw data.

!!! info
    Obsolete: optionally call io.RenderDrawListsFn if set. Nowadays, prefer calling your render
    function yourself.
"""
Render() = igRender()

"""
    GetDrawData() -> Ptr{ImDrawData}
Return a handle of `ImDrawData` which is valid after [`Render`](@ref) and until the next call
to [`NewFrame`](@ref). This is what you have to render.

!!! info
    Obsolete: this used to be passed to your io.RenderDrawListsFn() function.
"""
GetDrawData() = igGetDrawData()

# Styles
"""
    StyleColorsDark()
Use the new, recommended style. This is also the default style.
"""
StyleColorsDark() = igStyleColorsDark(C_NULL)

"""
    StyleColorsClassic()
Use the classic imgui style.
"""
StyleColorsClassic() = igStyleColorsClassic(C_NULL)

"""
    StyleColorsLight()
This style is best used with borders and a custom, thicker font.
"""
StyleColorsLight() = igStyleColorsLight(C_NULL)

# Windows
"""
    Begin(name, p_open::=C_NULL, flags=0) -> Bool
Push window to the stack and start appending to it.
- you may append multiple times to the same window during the same frame.
- passing `p_open != C_NULL` shows a window-closing widget in the upper-right corner of the window, which clicking will set the boolean to false when clicked.
- [`Begin`](@ref) return false to indicate the window is collapsed or fully clipped, so you may early out and omit submitting anything to the window.

!!! note
    Always call a matching [`End`](@ref) for each [`Begin`](@ref) call, regardless of its return value.
    This is due to legacy reason and is inconsistent with most other functions such as
    [`BeginMenu`](@ref)/[`EndMenu`](@ref), [`BeginPopup`](@ref)/[`EndPopup`](@ref), etc.
    where the `EndXXX` call should only be called if the corresponding `BeginXXX` function returned true.
"""
Begin(name, p_open=C_NULL, flags=0) = igBegin(name, p_open, flags)

"""
    End()
Pop window from the stack. See also [`Begin`](@ref).
"""
End() = igEnd()

# Child Windows
"""
    BeginChild(id::Integer, size=(0,0), border=false, flags=0) -> Bool
    BeginChild(str_id, size=(0,0), border=false, flags=0) -> Bool
Use child windows to begin into a self-contained independent scrolling/clipping regions within
a host window. Child windows can embed their own child.

Return false to indicate the window is collapsed or fully clipped, so you may early out and
omit submitting anything to the window.

For each independent axis of `size`:
- == 0.0: use remaining host window size
- > 0.0: fixed size
- < 0.0: use remaining window size minus abs(size)

Each axis can use a different mode, e.g. ImVec2(0,400).

!!! note
    Always call a matching [`EndChild`](@ref) for each [`BeginChild`](@ref) call, regardless
    of its return value. This is due to legacy reason and is inconsistent with most other
    functions such as [`BeginMenu`](@ref)/[`EndMenu`](@ref), [`BeginPopup`](@ref)/[`EndPopup`](@ref), etc.
    where the `EndXXX` call should only be called if the corresponding `BeginXXX` function returned true.
"""
BeginChild(str_id, size=(0,0), border=false, flags=0) = igBeginChild(str_id, size, border, flags)
BeginChild(id::Integer, size=(0,0), border=false, flags=0) = igBeginChildID(id, size, border, flags)

"""
    EndChild()
See also [`BeginChild`](@ref).
"""
EndChild() = igEndChild()

# Windows Utilities
"""
    IsWindowAppearing() -> Bool
"""
IsWindowAppearing() = igIsWindowAppearing()

"""
    IsWindowCollapsed() -> Bool
"""
IsWindowCollapsed() = igIsWindowCollapsed()

"""
    IsWindowFocused(flags=0) -> Bool
Is current window focused? or its root/child, depending on flags. see flags for options.
"""
IsWindowFocused(flags=0) = igIsWindowFocused(flags)

"""
    IsWindowHovered(flags=0) -> Bool
Is current window hovered (and typically: not blocked by a popup/modal)? see flags for options.

!!! note
    If you are trying to check whether your mouse should be dispatched to imgui or to your app,
    you should use the `io.WantCaptureMouse` boolean for that! Please read the FAQ!
"""
IsWindowHovered(flags=0) = igIsWindowHovered(flags)

"""
    GetWindowDrawList() -> Ptr{ImDrawList}
Return draw list associated to the window, to append your own drawing primitives.
"""
GetWindowDrawList() = igGetWindowDrawList()

"""
    GetWindowPos() -> ImVec2
Return current window position in screen space (useful if you want to do your own drawing via the DrawList API)
"""
GetWindowPos() = igGetWindowPos()

"""
    GetWindowSize() -> ImVec2
Return current window size.
"""
GetWindowSize() = igGetWindowSize()

"""
    GetWindowWidth() -> Cfloat
Get current window width (shortcut for GetWindowSize().x)
"""
GetWindowWidth() = igGetWindowWidth()

"""
    GetWindowHeight() -> Cfloat
Get current window height (shortcut for GetWindowSize().y)
"""
GetWindowHeight() = igGetWindowHeight()


# igGetContentRegionMax()
# igGetContentRegionAvail()
# igGetContentRegionAvailWidth()
# igGetWindowContentRegionMin()
# igGetWindowContentRegionMax()
# igGetWindowContentRegionWidth()
# igSetNextWindowPos(pos, cond, pivot)
# igSetNextWindowSize(size, cond)
# igSetNextWindowSizeConstraints(size_min, size_max, custom_callback, custom_callback_data)
# igSetNextWindowContentSize(size)
# igSetNextWindowCollapsed(collapsed, cond)
# igSetNextWindowFocus()
# igSetNextWindowBgAlpha(alpha)
# igSetWindowPosVec2(pos, cond)
# igSetWindowSizeVec2(size, cond)
# igSetWindowCollapsedBool(collapsed, cond)
# igSetWindowFocus()
# igSetWindowFontScale(scale)
# igSetWindowPosStr(name, pos, cond)
# igSetWindowSizeStr(name, size, cond)
# igSetWindowCollapsedStr(name, collapsed, cond)
# igSetWindowFocusStr(name)

# Windows Scrolling
# igGetScrollX()
# igGetScrollY()
# igGetScrollMaxX()
# igGetScrollMaxY()
# igSetScrollX(scroll_x)
# igSetScrollY(scroll_y)
# igSetScrollHereY(center_y_ratio)
# igSetScrollFromPosY(pos_y, center_y_ratio)

# Parameters stacks (shared)
# igPushFont(font)
# igPopFont()
# igPushStyleColorU32(idx, col)
# igPushStyleColor(idx, col)
# igPopStyleColor(count)
# igPushStyleVarFloat(idx, val)
# igPushStyleVarVec2(idx, val)
# igPopStyleVar(count)
# igGetStyleColorVec4(idx)
# igGetFont()
# igGetFontSize()
# igGetFontTexUvWhitePixel()
"""
    GetColorU32(r, g, b, a) -> ImU32
    GetColorU32(col::ImVec4) -> ImU32
    GetColorU32(col::ImU32) -> ImU32
    GetColorU32(idx::Integer, alpha_mul=1.0) -> ImU32
Retrieve given style color with style alpha applied and optional extra alpha multiplier.
"""
GetColorU32(idx::Integer, alpha_mul=1.0) = igGetColorU32(idx, alpha_mul)
GetColorU32(col::ImVec4) = igGetColorU32Vec4(col)
GetColorU32(r, g, b, a) = GetColorU32(ImVec4(r,g,b,a))
GetColorU32(col::ImU32) = igGetColorU32U32(col)

# Parameters stacks (current window)
# igPushItemWidth(item_width)
# igPopItemWidth()
# igCalcItemWidth()
# igPushTextWrapPos(wrap_pos_x)
# igPopTextWrapPos()
# igPushAllowKeyboardFocus(allow_keyboard_focus)
# igPopAllowKeyboardFocus()
# igPushButtonRepeat(repeat)
# igPopButtonRepeat()

# Cursor / Layout
"""
    Separator()
Separator, generally horizontal. But inside a menu bar or in horizontal layout mode,
it becomes a vertical separator.
"""
Separator() = igSeparator()

"""
    SameLine(local_pos_x=0.0f0, spacing_w=-1.0f0)
Call this function between widgets or groups to layout them horizontally.
"""
SameLine(local_pos_x=0.0f0, spacing_w=-1.0f0) = igSameLine(local_pos_x, spacing_w)

"""
    NewLine()
Undo a [`SameLine`](@ref).
"""
NewLine() = igNewLine()

"""
    Spacing()
Add vertical spacing.
"""
Spacing() = igSpacing()

"""
    Dummy(size)
    Dummy(x, y)
Add a dummy item of given size.
"""
Dummy(size::ImVec2) = igDummy(size)
Dummy(x, y) = Dummy(ImVec2(x,y))

"""
    Indent()
    Indent(indent_w)
Move content position toward the right, by `style.IndentSpacing` or `indent_w` if != 0.
"""
Indent(indent_w=Cfloat(0.0)) = igIndent(indent_w)

"""
    Unindent()
    Unindent(indent_w)
Move content position back to the left, by `style.IndentSpacing` or `indent_w` if != 0
"""
Unindent(indent_w=Cfloat(0.0)) = igUnindent(indent_w)

"""
    BeginGroup()
Lock horizontal starting position + capture group bounding box into one "item", so you can
use [`IsItemHovered`](@ref) or layout primitives such as [`SameLine`](@ref) on whole group, etc.
"""
BeginGroup() = igBeginGroup()

"""
    EndGroup()
"""
EndGroup() = igEndGroup()

"""
    GetCursorPos() -> ImVec2
Return cursor position which is relative to window position.
"""
GetCursorPos() = igGetCursorPos()

"""
    GetCursorPosX() -> Cfloat
"""
GetCursorPosX() = igGetCursorPosX()

"""
    GetCursorPosY() -> Cfloat
"""
GetCursorPosY() = igGetCursorPosY()

"""
    SetCursorPos(x, y)
    SetCursorPos(local_pos)
"""
SetCursorPos(local_pos) = igSetCursorPos(local_pos)
SetCursorPos(x, y) = SetCursorPos(ImVec2(x,y))

"""
    SetCursorPosX(local_x)
"""
SetCursorPosX(local_x) = igSetCursorPosX(local_x)

"""
    SetCursorPosX(local_y)
"""
SetCursorPosY(local_y) = igSetCursorPosY(local_y)

"""
    GetCursorStartPos() -> ImVec2
Return initial cursor position.
"""
GetCursorStartPos() = igGetCursorStartPos()

"""
    GetCursorScreenPos() -> ImVec2
Return cursor position in absolute screen coordinates [0..io.DisplaySize].
This is useful to work with `ImDrawList` API.
"""
GetCursorScreenPos() = igGetCursorScreenPos()

"""
    SetCursorScreenPos(pos)
    SetCursorScreenPos(x, y)
Set cursor position in absolute screen coordinates [0..io.DisplaySize].
"""
SetCursorScreenPos(pos) = igSetCursorScreenPos(pos)
SetCursorScreenPos(x, y) = SetCursorScreenPos(ImVec2(x,y))

"""
    AlignTextToFramePadding()
Vertically align upcoming text baseline to `FramePadding.y` so that it will align properly to
regularly framed items (call if you have text on a line before a framed item).
"""
AlignTextToFramePadding() = igAlignTextToFramePadding()

"""
    GetTextLineHeight() -> Cfloat
Return `FontSize`.
"""
GetTextLineHeight() = igGetTextLineHeight()

"""
    GetTextLineHeightWithSpacing() -> Cfloat
Return `FontSize + style.ItemSpacing.y` (distance in pixels between 2 consecutive lines of text).
"""
GetTextLineHeightWithSpacing() = igGetTextLineHeightWithSpacing()

"""
    GetFrameHeight() -> Cfloat
Return `FontSize + style.FramePadding.y * 2`
"""
GetFrameHeight() = igGetFrameHeight()

"""
    GetFrameHeightWithSpacing() -> Cfloat
Return `FontSize + style.FramePadding.y * 2 + style.ItemSpacing.y` (distance in pixels between 2 consecutive lines of framed widgets)
"""
GetFrameHeightWithSpacing() = igGetFrameHeightWithSpacing()


# ID stack/scopes
# igPushIDStr(str_id)
# igPushIDRange(str_id_begin, str_id_end)
# igPushIDPtr(ptr_id)
# igPushIDInt(int_id)
# igPopID()
# igGetIDStr(str_id)
# igGetIDRange(str_id_begin, str_id_end)
# igGetIDPtr(ptr_id)

# Widgets: Text
# formatting is not fully supported due to https://github.com/JuliaLang/julia/issues/1315
# please use `using Printf` as a workaround
"""
    TextUnformatted(text, text_end)
Raw text without formatting. Roughly equivalent to `Text("%s", text)` but:
1. doesn't require null terminated string if 'text_end' is specified;
2. it's faster, no memory copy is done, no buffer size limits, recommended for long chunks of text.
"""
TextUnformatted(text, text_end) = igTextUnformatted(text, text_end)

"""
    Text(formatted_text)
Create a text widget.

!!! warn
    Formatting is not supported which means you need to pass a formatted string to this function.
    It's recommended to use Julia stdlib `Printf`'s `@sprintf` as a workaround when translating C/C++ code to Julia.
"""
Text(formatted_text) = igText(formatted_text)

# Widgets: Main
"""
    Button(label) -> Bool
    Button(label, size) -> Bool
Return true when the value has been changed or when pressed/selected.
"""
Button(label, size=ImVec2(0,0)) = igButton(label, size)

"""
    SmallButton(label) -> Bool
Return true when the value has been changed or when pressed/selected. It creates a button
with `FramePadding=(0,0)` to easily embed within text.
"""
SmallButton(label) = igSmallButton(label)

"""
    InvisibleButton(str_id, size) -> Bool
Return true when the value has been changed or when pressed/selected.
Create a button without the visuals, useful to build custom behaviors using the public api
along with [`IsItemActive`](@ref), [`IsItemHovered`](@ref), etc.
"""
InvisibleButton(str_id, size) = igInvisibleButton(str_id, size)

"""
    ArrowButton(str_id, dir) -> Bool
Return true when the value has been changed or when pressed/selected. Create a square button
with an arrow shape.
"""
ArrowButton(str_id, dir) = igArrowButton(str_id, dir)

# TODO: igImage(user_texture_id, size, uv0, uv1, tint_col, border_col)
# TODO: igImageButton(user_texture_id, size, uv0, uv1, frame_padding, bg_col, tint_col)

"""
    Checkbox(label, v::Ref{Bool}) -> Bool
Return true when the value has been changed or when pressed/selected.
"""
Checkbox(label, v::Ref{Bool}) = igCheckbox(label, v)

"""
    CheckboxFlags(label, flags, flags_value) -> Bool
Return true when the value has been changed or when pressed/selected.
"""
CheckboxFlags(label, flags, flags_value) = igCheckboxFlags(label, flags, flags_value)

"""
    RadioButton(label, active::Bool) -> Bool
    RadioButton(label, v::Ref, v_button::Integer) -> Bool
Return true when the value has been changed or when pressed/selected.

### Example
```julia
if RadioButton("one", my_value==1)
    my_value = 1
end
```
"""
RadioButton(label, active::Bool) = igRadioButtonBool(label, active)
RadioButton(label, v::Ref, v_button::Integer) = igRadioButtonIntPtr(label, v, v_button)

"""
    ProgressBar(fraction, size_arg=ImVec2(-1,0), overlay=C_NULL)
"""
ProgressBar(fraction, size_arg=ImVec2(-1,0), overlay=C_NULL) = igProgressBar(fraction, size_arg, overlay)

"""
    Bullet()
Draw a small circle and keep the cursor on the same line.
advance cursor x position by GetTreeNodeToLabelSpacing(), same distance that TreeNode() uses
"""
Bullet() = igBullet()

# Widgets: Combo Box
"""
    BeginCombo(label, preview_value, flags=0) -> Bool
The new [`BeginCombo`](@ref)/[`EndCombo`](@ref) api allows you to manage your contents and
selection state however you want it, by creating e.g. [`Selectable`](@ref) items.
"""
BeginCombo(label, preview_value, flags=0) = igBeginCombo(label, preview_value, flags)

"""
    EndCombo()
!!! note
    only call `EndCombo` if [`BeginCombo`](@ref) returns true!

See also [`BeginCombo`](@ref).
"""
EndCombo() = igEndCombo()

"""
    Combo(label, current_item, items, items_count, popup_max_height_in_items=-1) -> Bool
The old [`Combo`](@ref) api are helpers over [`BeginCombo`](@ref)/[`EndCombo`](@ref) which
are kept available for convenience purpose.
"""
Combo(label, current_item, items::Ptr, items_count, popup_max_height_in_items=-1) = igCombo(label, current_item, items, items_count, popup_max_height_in_items)

"""
    Combo(label, current_item, items_separated_by_zeros, popup_max_height_in_items=-1) -> Bool
Separate items with `\0` within a string, end item-list with `\0\0`. e.g. `One\0Two\0Three\0`
"""
Combo(label, current_item, items_separated_by_zeros, popup_max_height_in_items=-1) = igComboStr(label, current_item, items_separated_by_zeros, popup_max_height_in_items)

"""
    Combo(label, current_item, items_getter::Ptr, data::Ptr, items_count, popup_max_height_in_items=-1) -> Bool
"""
Combo(label, current_item, items_getter::Ptr, data::Ptr, items_count, popup_max_height_in_items=-1) = igComboFnPtr(label, current_item, items_getter, data, items_count, popup_max_height_in_items)

# Widgets: Drags
# igDragFloat(label, v, v_speed, v_min, v_max, format, power)
# igDragFloat2(label, v, v_speed, v_min, v_max, format, power)
# igDragFloat3(label, v, v_speed, v_min, v_max, format, power)
# igDragFloat4(label, v, v_speed, v_min, v_max, format, power)
# igDragFloatRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, power)
# igDragInt(label, v, v_speed, v_min, v_max, format)
# igDragInt2(label, v, v_speed, v_min, v_max, format)
# igDragInt3(label, v, v_speed, v_min, v_max, format)
# igDragInt4(label, v, v_speed, v_min, v_max, format)
# igDragIntRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max)
# igDragScalar(label, data_type, v, v_speed, v_min, v_max, format, power)
# igDragScalarN(label, data_type, v, components, v_speed, v_min, v_max, format, power)


# Widgets: Sliders
"""
    SliderFloat(label, v, v_min, v_max, format="%.3f", power=1.0) -> Bool
Create a slider widget.

!!! tip
    ctrl+click on a slider to input with keyboard. manually input values aren't clamped, can go off-bounds.

### Arguments
- `format`: adjust format to decorate the value with a prefix or a suffix for in-slider labels or unit display
  * "%.3f" -> 1.234
  * "%5.2f secs" -> 01.23 secs
  * "Biscuit: %.0f" -> Biscuit: 1
- `power`: use `power != 1.0` for power curve sliders
"""
SliderFloat(label, v, v_min, v_max, format="%.3f", power=1.0) = igSliderFloat(label, v, v_min, v_max, format, power)

# Widgets: Input with Keyboard
"""
    InputText(label, buf, buf_size, flags=0, callback=C_NULL, user_data=C_NULL) -> Bool
"""
InputText(label, buf, buf_size, flags=0, callback=C_NULL, user_data=C_NULL) = igInputText(label, buf, buf_size, flags, callback, user_data)

"""
    InputTextMultiline(label, buf, buf_size, size=(0,0), flags=0, callback=C_NULL, user_data=C_NULL) -> Bool
"""
InputTextMultiline(label, buf, buf_size, size=(0,0), flags=0, callback=C_NULL, user_data=C_NULL) = igInputTextMultiline(label, buf, buf_size, size, flags, callback, user_data)

"""
    InputFloat(label, v, step=0, step_fast=0, format="%.3f", flags=0) -> Bool
"""
InputFloat(label, v, step=0, step_fast=0, format="%.3f", flags=0) = igInputFloat(label, v, step, step_fast, format, flags)

"""
    InputFloat2(label, v, format="%.3f", flags=0) -> Bool
"""
InputFloat2(label, v, format="%.3f", flags=0) = igInputFloat2(label, v, format, flags)

"""
    InputFloat3(label, v, format="%.3f", flags=0) -> Bool
"""
InputFloat3(label, v, format="%.3f", flags=0) = igInputFloat3(label, v, format, flags)

"""
    InputFloat4(label, v, format="%.3f", flags=0) -> Bool
"""
InputFloat4(label, v, format="%.3f", flags=0) = igInputFloat4(label, v, format, flags)

"""
    InputInt(label, v, step=1, step_fast=100, flags=0) -> Bool
"""
InputInt(label, v, step=1, step_fast=100, flags=0) = igInputInt(label, v, step, step_fast, flags)

"""
    InputInt2(label, v, flags=0) -> Bool
"""
InputInt2(label, v, flags=0) = igInputInt2(label, v, flags)

"""
    InputInt3(label, v, flags=0) -> Bool
"""
InputInt3(label, v, flags=0) = igInputInt3(label, v, flags)

"""
    InputInt4(label, v, flags=0) -> Bool
"""
InputInt4(label, v, flags=0) = igInputInt4(label, v, flags)

"""
    InputDouble(label, v, step=0.0, step_fast=0.0, format="%.6f", flags=0) -> Bool
"""
InputDouble(label, v, step=0.0, step_fast=0.0, format="%.6f", flags=0) = igInputDouble(label, v, step, step_fast, format, flags)

"""
    InputScalar(label, data_type, v, step=C_NULL, step_fast=C_NULL, format=C_NULL, flags=0) -> Bool
"""
InputScalar(label, data_type, v, step=C_NULL, step_fast=C_NULL, format=C_NULL, flags=0) = igInputScalar(label, data_type, v, step, step_fast, format, flags)

"""
    InputScalarN(label, data_type, v, components, step=C_NULL, step_fast=C_NULL, format=C_NULL, flags=0) -> Bool
"""
InputScalarN(label, data_type, v, components, step=C_NULL, step_fast=C_NULL, format=C_NULL, flags=0) = igInputScalarN(label, data_type, v, components, step, step_fast, format, flags)

# Widgets: Color Editor/Picker
"""
    ColorEdit3(label, col, flags=0) -> Bool
!!! tip
    this function has a little colored preview square that can be left-clicked to open a picker,
    and right-clicked to open an option menu.
"""
ColorEdit3(label, col, flags=0) = igColorEdit3(label, col, flags)
# igColorEdit4(label, col, flags)
# igColorPicker3(label, col, flags)
# igColorPicker4(label, col, flags, ref_col)
# igColorButton(desc_id, col, flags, size)
# igSetColorEditOptions(flags)

# Widgets: Trees
# igTreeNodeStr(label)
# igTreeNodeExStr(label, flags)
# igTreePushStr(str_id)
# igTreePushPtr(ptr_id)
# igTreePop()
# igTreeAdvanceToLabelPos()
# igGetTreeNodeToLabelSpacing()
# igSetNextTreeNodeOpen(is_open, cond)
# igCollapsingHeader(label, flags)
# igCollapsingHeaderBoolPtr(label, p_open, flags)

# Widgets: Selectables
# igSelectable(label, selected, flags, size)
# igSelectableBoolPtr(label, p_selected, flags, size)

# Widgets: List Boxes
# igListBoxStr_arr(label, current_item, items, items_count, height_in_items)
# igListBoxFnPtr(label, current_item, items_getter, data, items_count, height_in_items)
# igListBoxHeaderVec2(label, size)
# igListBoxHeaderInt(label, items_count, height_in_items)
# igListBoxFooter()
# igPlotLines(label, values, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size, stride)
# igPlotLinesFnPtr(label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size)
# igPlotHistogramFloatPtr(label, values, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size, stride)
# igPlotHistogramFnPtr(label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size)

# Widgets: Value() Helpers
# igValueBool(prefix, b)
# igValueInt(prefix, v)
# igValueUint(prefix, v)
# igValueFloat(prefix, v, float_format)

# Widgets: Menus
"""
    BeginMainMenuBar() -> Bool
Create and append to a full screen menu-bar.
"""
BeginMainMenuBar() = igBeginMainMenuBar()

"""
    EndMainMenuBar()
!!! note
    only call `EndMainMenuBar` if [`BeginMainMenuBar`](@ref) returns true!
"""
EndMainMenuBar() = igEndMainMenuBar()

"""
    BeginMenuBar() -> Bool
Append to menu-bar of current window (requires `ImGuiWindowFlags_MenuBar` flag set on parent window).
"""
BeginMenuBar() = igBeginMenuBar()

"""
    EndMenuBar()
!!! note
    only call `EndMenuBar` if [`BeginMenuBar`](@ref) returns true!

"""
EndMenuBar() = igEndMenuBar()


"""
    BeginMenu(label, enabled=true) -> Bool
Create a sub-menu entry. only call EndMenu() if this returns true!
"""
BeginMenu(label, enabled=true) = igBeginMenu(label, enabled)

"""
    EndMenu()
!!! note
    only call `EndMenu` if [`BeginMenu`](@ref) returns true!
"""
EndMenu() = igEndMenu()

"""
    MenuItem(label, shortcut=C_NULL, selected::Bool=false, enabled::Bool=true) -> Bool
    MenuItem(label, shortcut, selected::Ref, enabled::Bool=true) -> Bool
Return true when activated. Shortcuts are displayed for convenience but not processed by ImGui at the moment.
"""
MenuItem(label, shortcut=C_NULL, selected::Bool=false, enabled::Bool=true) = igMenuItemBool(label, shortcut, selected, enabled)
MenuItem(label, shortcut, selected::Ref, enabled::Bool=true) = igMenuItemBoolPtr(label, shortcut, selected, enabled)


# Tooltips
# igBeginTooltip()
# igEndTooltip()

# Popups
# igOpenPopup(str_id)
# igBeginPopup(str_id, flags)
# igBeginPopupContextItem(str_id, mouse_button)
# igBeginPopupContextWindow(str_id, mouse_button, also_over_items)
# igBeginPopupContextVoid(str_id, mouse_button)
# igBeginPopupModal(name, p_open, flags)
# igEndPopup()
# igOpenPopupOnItemClick(str_id, mouse_button)
# igIsPopupOpen(str_id)
# igCloseCurrentPopup()

# Columns
# igColumns(count, id, border)
# igNextColumn()
# igGetColumnIndex()
# igGetColumnWidth(column_index)
# igSetColumnWidth(column_index, width)
# igGetColumnOffset(column_index)
# igSetColumnOffset(column_index, offset_x)
# igGetColumnsCount()

# Logging/Capture
# igLogToTTY(max_depth)
# igLogToFile(max_depth, filename)
# igLogToClipboard(max_depth)
# igLogFinish()
# igLogButtons()

# Drag and Drop
# igBeginDragDropSource(flags)
# igSetDragDropPayload(type, data, size, cond)
# igEndDragDropSource()
# igBeginDragDropTarget()
# igAcceptDragDropPayload(type, flags)
# igEndDragDropTarget()
# igGetDragDropPayload()

# Clipping
# igPushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect)
# igPopClipRect()

# Focus, Activation
# igSetItemDefaultFocus()
# igSetKeyboardFocusHere(offset)

# Item/Widgets Utilities
# igIsItemHovered(flags)
# igIsItemActive()
# igIsItemFocused()
# igIsItemClicked(mouse_button)
# igIsItemVisible()
# igIsItemEdited()
# igIsItemDeactivated()
# igIsItemDeactivatedAfterEdit()
# igIsAnyItemHovered()
# igIsAnyItemActive()
# igIsAnyItemFocused()
# igGetItemRectMin()
# igGetItemRectMax()
# igGetItemRectSize()
# igSetItemAllowOverlap()

# Miscellaneous Utilities
"""
    RectVisible(size) -> Bool
    RectVisible(x, y) -> Bool
Test if rectangle (of given size, starting from cursor position) is visible / not clipped.
"""
RectVisible(size) = igIsRectVisible(size)
RectVisible(x, y) = RectVisible(ImVec2(x,y))

"""
    IsRectVisibleVec2(rect_min::ImVec2, rect_max::ImVec2) -> Bool
    IsRectVisibleVec2(rect_min::NTuple{2}, rect_max::NTuple{2}) -> Bool
Test if rectangle (in screen space) is visible / not clipped. to perform coarse clipping on user's side.
"""
IsRectVisibleVec2(rect_min, rect_max) = igIsRectVisibleVec2(rect_min, rect_max)

"""
    GetTime() -> Cdouble
"""
GetTime() = igGetTime()

"""
    GetFrameCount() -> Cint
"""
GetFrameCount() = igGetFrameCount()

"""
    GetOverlayDrawList() -> Ptr{ImDrawList}
This draw list will be the last rendered one, useful to quickly draw overlays shapes/text.
"""
GetOverlayDrawList() = igGetOverlayDrawList()

"""
    GetDrawListSharedData() -> Ptr{ImDrawListSharedData}
This function might be used when creating your own `ImDrawList` instances.
"""
GetDrawListSharedData() = igGetDrawListSharedData()

"""
    GetStyleColorName(idx::Integer) -> Cstring
"""
GetStyleColorName(idx::Integer) = igGetStyleColorName(idx)

"""
    SetStateStorage(storage)
Replace current window storage with our own (if you want to manipulate it yourself,
typically clear subsection of it)
"""
SetStateStorage(storage) = igSetStateStorage(storage)

"""
    GetStateStorage()
"""
GetStateStorage() = igGetStateStorage()

"""
    CalcTextSize(text, text_end=C_NULL, hide_text_after_double_hash=false, wrap_width=-1) -> ImVec2
"""
CalcTextSize(text, text_end=C_NULL, hide_text_after_double_hash=false, wrap_width=-1) = igCalcTextSize(text, text_end, hide_text_after_double_hash, wrap_width)

"""
    CalcListClipping(items_count, items_height, out_items_display_start, out_items_display_end)
Calculate coarse clipping for large list of evenly sized items. Prefer using the ImGuiListClipper higher-level helper if you can.
"""
CalcListClipping(items_count, items_height, out_items_display_start, out_items_display_end) = igCalcListClipping(items_count, items_height, out_items_display_start, out_items_display_end)

"""
    BeginChildFrame(id, size, flags=0) -> Bool
Helper to create a child window / scrolling region that looks like a normal widget frame.
"""
BeginChildFrame(id, size, flags=0) = igBeginChildFrame(id, size, flags)

"""
    EndChildFrame()
!!! note
    always call `EndChildFrame` regardless of [`BeginChildFrame`](@ref) return values which
    indicates a collapsed/clipped window.
"""
EndChildFrame() = igEndChildFrame()


# Color Utilities
# igColorConvertU32ToFloat4(in)
# igColorConvertFloat4ToU32(in)

# Inputs Utilities
# igGetKeyIndex(imgui_key)
# igIsKeyDown(user_key_index)
# igIsKeyPressed(user_key_index, repeat)
# igIsKeyReleased(user_key_index)
# igGetKeyPressedAmount(key_index, repeat_delay, rate)
# igIsMouseDown(button)
# igIsAnyMouseDown()
# igIsMouseClicked(button, repeat)
# igIsMouseDoubleClicked(button)
# igIsMouseReleased(button)
# igIsMouseDragging(button, lock_threshold)
# igIsMouseHoveringRect(r_min, r_max, clip)
# igIsMousePosValid(mouse_pos)
# igGetMousePos()
# igGetMousePosOnOpeningCurrentPopup()
# igGetMouseDragDelta(button, lock_threshold)
# igResetMouseDragDelta(button)
# igGetMouseCursor()
# igSetMouseCursor(type)
# igCaptureKeyboardFromApp(capture)
# igCaptureMouseFromApp(capture)

# Clipboard Utilities
# igGetClipboardText()
# igSetClipboardText(text)

# Settings/.Ini Utilities
# igLoadIniSettingsFromDisk(ini_filename)
# igLoadIniSettingsFromMemory(ini_data, ini_size)
# igSaveIniSettingsToDisk(ini_filename)
# igSaveIniSettingsToMemory(out_ini_size)

# Memory Utilities
# igSetAllocatorFunctions(alloc_func, free_func, user_data)
# igMemAlloc(size)
# igMemFree(ptr)

# ImDrawList
"""
    AddRectFilled(self::Ptr{ImDrawList}, a, b, col, rounding=0, rounding_corners_flags=ImDrawCornerFlags_All)
"""
AddRectFilled(self::Ptr{ImDrawList}, a, b, col, rounding=0, rounding_corners_flags=ImDrawCornerFlags_All) = ImDrawList_AddRectFilled(self, a, b, col, rounding, rounding_corners_flags)