module CodecZstd

export
    ZstdCompressor,
    ZstdCompressorStream,
    ZstdDecompressor,
    ZstdDecompressorStream

import TranscodingStreams:
    TranscodingStreams,
    TranscodingStream,
    Memory,
    Error,
    initialize,
    finalize,
    splitkwargs

using Zstd_jll

include(joinpath("libzstd","LibZstd.jl"))
include("libzstd.jl")
include("compression.jl")
include("decompression.jl")

end # module
