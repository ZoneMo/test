package com.tencent.tmassistantsdk.protocol;

public class ZipUtils
{
  // ERROR //
  public static byte[] unzip(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 16	java/util/zip/Inflater
    //   3: dup
    //   4: invokespecial 17	java/util/zip/Inflater:<init>	()V
    //   7: astore_1
    //   8: aconst_null
    //   9: astore_2
    //   10: new 19	java/io/ByteArrayOutputStream
    //   13: dup
    //   14: aload_0
    //   15: arraylength
    //   16: invokespecial 22	java/io/ByteArrayOutputStream:<init>	(I)V
    //   19: astore_3
    //   20: sipush 1024
    //   23: newarray byte
    //   25: astore 9
    //   27: aload_1
    //   28: aload_0
    //   29: invokevirtual 26	java/util/zip/Inflater:setInput	([B)V
    //   32: aload_1
    //   33: invokevirtual 30	java/util/zip/Inflater:finished	()Z
    //   36: ifne +38 -> 74
    //   39: aload_3
    //   40: aload 9
    //   42: iconst_0
    //   43: aload_1
    //   44: aload 9
    //   46: invokevirtual 34	java/util/zip/Inflater:inflate	([B)I
    //   49: invokevirtual 38	java/io/ByteArrayOutputStream:write	([BII)V
    //   52: goto -20 -> 32
    //   55: astore 7
    //   57: aload_1
    //   58: invokevirtual 41	java/util/zip/Inflater:end	()V
    //   61: aload_3
    //   62: ifnull +7 -> 69
    //   65: aload_3
    //   66: invokevirtual 44	java/io/ByteArrayOutputStream:close	()V
    //   69: aload_3
    //   70: invokevirtual 48	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   73: areturn
    //   74: aload_1
    //   75: invokevirtual 41	java/util/zip/Inflater:end	()V
    //   78: aload_3
    //   79: invokevirtual 44	java/io/ByteArrayOutputStream:close	()V
    //   82: goto -13 -> 69
    //   85: astore 10
    //   87: goto -18 -> 69
    //   90: astore 5
    //   92: aload_1
    //   93: invokevirtual 41	java/util/zip/Inflater:end	()V
    //   96: aload_2
    //   97: ifnull +7 -> 104
    //   100: aload_2
    //   101: invokevirtual 44	java/io/ByteArrayOutputStream:close	()V
    //   104: aload 5
    //   106: athrow
    //   107: astore 8
    //   109: goto -40 -> 69
    //   112: astore 6
    //   114: goto -10 -> 104
    //   117: astore 4
    //   119: aload_3
    //   120: astore_2
    //   121: aload 4
    //   123: astore 5
    //   125: goto -33 -> 92
    //   128: astore 11
    //   130: aconst_null
    //   131: astore_3
    //   132: goto -75 -> 57
    //
    // Exception table:
    //   from	to	target	type
    //   20	32	55	java/util/zip/DataFormatException
    //   32	52	55	java/util/zip/DataFormatException
    //   78	82	85	java/io/IOException
    //   10	20	90	finally
    //   65	69	107	java/io/IOException
    //   100	104	112	java/io/IOException
    //   20	32	117	finally
    //   32	52	117	finally
    //   10	20	128	java/util/zip/DataFormatException
  }

  // ERROR //
  public static byte[] zip(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 51	java/util/zip/Deflater
    //   3: dup
    //   4: invokespecial 52	java/util/zip/Deflater:<init>	()V
    //   7: astore_1
    //   8: new 19	java/io/ByteArrayOutputStream
    //   11: dup
    //   12: aload_0
    //   13: arraylength
    //   14: invokespecial 22	java/io/ByteArrayOutputStream:<init>	(I)V
    //   17: astore_2
    //   18: aload_1
    //   19: bipush 9
    //   21: invokevirtual 55	java/util/zip/Deflater:setLevel	(I)V
    //   24: aload_1
    //   25: aload_0
    //   26: invokevirtual 56	java/util/zip/Deflater:setInput	([B)V
    //   29: aload_1
    //   30: invokevirtual 59	java/util/zip/Deflater:finish	()V
    //   33: sipush 1024
    //   36: newarray byte
    //   38: astore 5
    //   40: aload_1
    //   41: invokevirtual 60	java/util/zip/Deflater:finished	()Z
    //   44: ifne +34 -> 78
    //   47: aload_2
    //   48: aload 5
    //   50: iconst_0
    //   51: aload_1
    //   52: aload 5
    //   54: invokevirtual 63	java/util/zip/Deflater:deflate	([B)I
    //   57: invokevirtual 38	java/io/ByteArrayOutputStream:write	([BII)V
    //   60: goto -20 -> 40
    //   63: astore_3
    //   64: aload_1
    //   65: invokevirtual 64	java/util/zip/Deflater:end	()V
    //   68: aload_2
    //   69: ifnull +7 -> 76
    //   72: aload_2
    //   73: invokevirtual 44	java/io/ByteArrayOutputStream:close	()V
    //   76: aload_3
    //   77: athrow
    //   78: aload_1
    //   79: invokevirtual 64	java/util/zip/Deflater:end	()V
    //   82: aload_2
    //   83: invokevirtual 44	java/io/ByteArrayOutputStream:close	()V
    //   86: aload_2
    //   87: invokevirtual 48	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   90: areturn
    //   91: astore 6
    //   93: goto -7 -> 86
    //   96: astore 4
    //   98: goto -22 -> 76
    //   101: astore_3
    //   102: aconst_null
    //   103: astore_2
    //   104: goto -40 -> 64
    //
    // Exception table:
    //   from	to	target	type
    //   18	40	63	finally
    //   40	60	63	finally
    //   82	86	91	java/io/IOException
    //   72	76	96	java/io/IOException
    //   8	18	101	finally
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.protocol.ZipUtils
 * JD-Core Version:    0.6.2
 */