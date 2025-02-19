#include <cstdio>
#include "zlib.h"


int main(int argc, char *argv[])
{
    z_stream strm;
    strm.zalloc = Z_NULL;
    strm.zfree = Z_NULL;
    strm.opaque = Z_NULL;

    int result = deflateInit(&strm, Z_DEFAULT_COMPRESSION);

    if(result != Z_OK)
    {
        printf("error initializing deflate\n");
        return 1;
    }
    else
    {
        printf("successfully initialized deflate\n");
        return 0;
    }
}
