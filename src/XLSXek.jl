
module XLSXek

import Artifacts
import Dates
import Printf.@printf
import ZipFile
import EzXML
import Tables
import Base.convert

# https://github.com/fhs/ZipFile.jl/issues/39
if !hasmethod(Base.bytesavailable, Tuple{ZipFile.ReadableFile})
    Base.bytesavailable(f::ZipFile.ReadableFile) = f.uncompressedsize - f._pos
end

const SPREADSHEET_NAMESPACE_XPATH_ARG = [ "xpath" => "http://schemas.openxmlformats.org/spreadsheetml/2006/main" ]

include("types.jl")
include("formula.jl")
include("cellref.jl")
include("sst.jl")
include("stream.jl")
include("table.jl")
include("tables_interface.jl")
include("relationship.jl")
include("read.jl")
include("workbook.jl")
include("worksheet.jl")
include("cell.jl")
include("styles.jl")
include("write.jl")

end # module XLSXek
