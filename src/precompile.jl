function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    precompile(MachO.r_extern, (MachO.relocation_info,))
    precompile(MachO.getindex, (MachO.Sections, Int64,))
    precompile(MachO.bytestring, (Base.AbstractIOBuffer{Array{UInt8, 1}}, UInt32,))
    precompile(MachO.Type, (Type{MachO.LoadCmds}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Void, Int64,))
    precompile(MachO.getindex, (MachO.Relocations, Int64,))
    precompile(MachO.unpack, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Type{MachO.load_command},))
    precompile(MachO.r_type, (MachO.relocation_info,))
    precompile(MachO.getindex, (MachO.Sections, UInt32,))
    precompile(MachO.getindex, (MachO.FatMachOHandle, Int64,))
    precompile(MachO.getindex, (MachO.Symbols, UInt32,))
    precompile(MachO.next, (MachO.LoadCmds, Tuple{UInt64, Int64, Int64},))
    precompile(MachO.unpack, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Type{UInt32},))
    precompile(MachO.readloadcmd, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}},))
    precompile(MachO.unpack, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Type{MachO.dyld_info_command},))
    precompile(MachO.debugsections, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}},))
    precompile(MachO.Type, (Type{MachO.FatMachOHandle}, Base.AbstractIOBuffer{Array{UInt8, 1}}, Int64,))
    precompile(MachO.bytestring, (MachO.small_fixed_string,))
    precompile(MachO.debugsections, (MachO.LoadCmd{MachO.segment_command_64},))
    precompile(MachO.readheader, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}},))
    precompile(MachO.Type, (Type{MachO.LoadCmd}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64, UInt32, MachO.source_version_command,))
    precompile(MachO.unpack, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Type{MachO.routines_command_64},))
    precompile(MachO.Type, (Type{MachO.SectionRef{MachO.section_64}}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, MachO.section_64,))
    precompile(MachO.Type, (Type{MachO.LoadCmd}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64, UInt32, MachO.version_min_macosx_command,))
    precompile(MachO.unpack, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Type{MachO.section_64},))
    precompile(MachO.unpack, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Type{MachO.uuid_command},))
    precompile(MachO.Type, (Type{MachO.LoadCmd}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64, UInt32, MachO.uuid_command,))
    precompile(MachO.unpack, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Type{MachO.linkedit_data_command},))
    precompile(MachO.Type, (Type{MachO.LoadCmd}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64, UInt32, MachO.linkedit_data_command,))
    precompile(MachO.Type, (Type{MachO.LoadCmd}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64, UInt32, MachO.thread_command,))
    precompile(MachO.unpack, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Type{MachO.relocation_info},))
    precompile(MachO.Type, (Type{MachO.LoadCmd}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64, UInt32, MachO.segment_command_64,))
    precompile(MachO.readuntil, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Char,))
    precompile(MachO.__init__, ())
    precompile(MachO.Type, (Type{MachO.sub_framework_command}, UInt32, ASCIIString,))
    precompile(MachO.unpack, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Type{MachO.version_min_macosx_command},))
    precompile(MachO.Type, (Type{MachO.LoadCmd}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64, UInt32, MachO.sub_framework_command,))
    precompile(MachO.unpack, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Type{MachO.segment_command},))
    precompile(MachO.unpack, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Type{MachO.source_version_command},))
    precompile(MachO.Type, (Type{MachO.LoadCmd}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64, UInt32, MachO.dyld_info_command,))
    precompile(MachO.Type, (Type{MachO.LoadCmd}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64, UInt32, MachO.dylinker_command,))
    precompile(MachO.unpack, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Type{MachO.dysymtab_command},))
    precompile(MachO.Type, (Type{MachO.LoadCmd}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64, UInt32, MachO.symtab_command,))
    precompile(MachO.Type, (Type{MachO.LoadCmd}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64, UInt32, MachO.sub_client_command,))
    precompile(MachO.r_length, (MachO.relocation_info,))
    precompile(MachO.seek, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64,))
    precompile(MachO.readmeta, (Base.AbstractIOBuffer{Array{UInt8, 1}}, Type{MachO.MachOHandle},))
    precompile(MachO.Type, (Type{MachO.LoadCmd}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64, UInt32, MachO.dysymtab_command,))
    precompile(MachO.unpack, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Type{MachO.symtab_command},))
    precompile(MachO.Type, (Type{MachO.LoadCmd}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64, UInt32, MachO.routines_command_64,))
    precompile(MachO.unpack, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Type{MachO.segment_command_64},))
    precompile(MachO.position, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}},))
    precompile(MachO.Type, (Type{MachO.LoadCmd}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64, UInt32, MachO.dylib_command,))
    precompile(MachO.compute_X86_64, (MachO.RelocationRef, UInt64,))
    precompile(MachO.Type, (Type{MachO.LoadCmds}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}},))
    precompile(MachO.unpack, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Type{MachO.mach_header_64},))
    precompile(MachO.Type, (Type{MachO.LoadCmd}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64, UInt32, MachO.rpath_command,))
    precompile(MachO.sectionsize, (MachO.section_64,))
    precompile(MachO.sizeof, (Type{MachO.section_64},))
    precompile(MachO.Type, (Type{MachO.Sections}, MachO.LoadCmd{MachO.segment_command_64},))
    precompile(MachO.Type, (Type{MachO.dylib_command}, UInt32, UInt32, UInt32, UInt32, ASCIIString,))
    precompile(MachO.print, (Base.AbstractIOBuffer{Array{UInt8, 1}}, MachO.small_fixed_string,))
    precompile(MachO.seek, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt32,))
    precompile(MachO.sectionname, (MachO.SectionRef{MachO.section_64},))
    precompile(MachO.Type, (Type{MachO.sub_client_command}, ASCIIString,))
    precompile(MachO.Type, (Type{MachO.Symbols}, MachO.LoadCmd{MachO.symtab_command},))
    precompile(MachO.load_strtab, (MachO.SectionRef{MachO.section_64},))
    precompile(MachO.sectionoffset, (MachO.section_64,))
    precompile(MachO.Type, (Type{MachO.dylinker_command}, ASCIIString,))
    precompile(MachO.seek, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Int64,))
    precompile(MachO.sectionname, (MachO.section_64,))
    precompile(MachO.Type, (Type{MachO.Sections}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}},))
    precompile(MachO.deref, (MachO.LoadCmd{MachO.uuid_command},))
    precompile(MachO.Type, (Type{ObjFileBase.Sections}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}},))
    precompile(MachO.deref, (MachO.LoadCmd{MachO.thread_command},))
    precompile(MachO.Type, (Type{MachO.rpath_command}, UInt32, ASCIIString,))
    precompile(MachO.deref, (MachO.LoadCmd{MachO.segment_command_64},))
    precompile(MachO.deref, (MachO.SectionRef{MachO.section_64},))
    precompile(MachO.handle, (MachO.SectionRef{MachO.section_64},))
    precompile(MachO.Type, (Type{ObjFileBase.StrTab}, MachO.SectionRef{MachO.section_64},))
    precompile(MachO.unpack, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Type{MachO.dylib_command}, UInt32,))
    precompile(MachO.compute_value, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, MachO.Symbols, MachO.Sections, Base.Dict{Symbol, Any}, MachO.RelocationRef,))
    precompile(MachO.unpack_lcstr, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt32, Int64, UInt32,))
    precompile(MachO.compute_relocation, (MachO.mach_header_64, MachO.RelocationRef, UInt64,))
    precompile(MachO.Type, (Type{ObjFileBase.Sections}, MachO.LoadCmd{MachO.segment_command_64},))
end
