package com.tencent.mm.plugin.scanner.b;

import com.tencent.mm.compatible.a.b;

final class k
  implements b
{
  k(j paramj)
  {
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 20	android/graphics/YuvImage
    //   5: dup
    //   6: aload_0
    //   7: getfield 12	com/tencent/mm/plugin/scanner/b/k:egr	Lcom/tencent/mm/plugin/scanner/b/j;
    //   10: invokestatic 26	com/tencent/mm/plugin/scanner/b/j:a	(Lcom/tencent/mm/plugin/scanner/b/j;)[B
    //   13: bipush 17
    //   15: aload_0
    //   16: getfield 12	com/tencent/mm/plugin/scanner/b/k:egr	Lcom/tencent/mm/plugin/scanner/b/j;
    //   19: invokestatic 30	com/tencent/mm/plugin/scanner/b/j:b	(Lcom/tencent/mm/plugin/scanner/b/j;)I
    //   22: aload_0
    //   23: getfield 12	com/tencent/mm/plugin/scanner/b/k:egr	Lcom/tencent/mm/plugin/scanner/b/j;
    //   26: invokestatic 33	com/tencent/mm/plugin/scanner/b/j:c	(Lcom/tencent/mm/plugin/scanner/b/j;)I
    //   29: aconst_null
    //   30: invokespecial 36	android/graphics/YuvImage:<init>	([BIII[I)V
    //   33: astore_2
    //   34: ldc 38
    //   36: ldc 40
    //   38: invokestatic 46	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   41: new 48	java/io/ByteArrayOutputStream
    //   44: dup
    //   45: invokespecial 49	java/io/ByteArrayOutputStream:<init>	()V
    //   48: astore_3
    //   49: aload_2
    //   50: new 51	android/graphics/Rect
    //   53: dup
    //   54: iconst_0
    //   55: iconst_0
    //   56: aload_0
    //   57: getfield 12	com/tencent/mm/plugin/scanner/b/k:egr	Lcom/tencent/mm/plugin/scanner/b/j;
    //   60: invokestatic 30	com/tencent/mm/plugin/scanner/b/j:b	(Lcom/tencent/mm/plugin/scanner/b/j;)I
    //   63: aload_0
    //   64: getfield 12	com/tencent/mm/plugin/scanner/b/k:egr	Lcom/tencent/mm/plugin/scanner/b/j;
    //   67: invokestatic 33	com/tencent/mm/plugin/scanner/b/j:c	(Lcom/tencent/mm/plugin/scanner/b/j;)I
    //   70: invokespecial 54	android/graphics/Rect:<init>	(IIII)V
    //   73: aload_0
    //   74: getfield 12	com/tencent/mm/plugin/scanner/b/k:egr	Lcom/tencent/mm/plugin/scanner/b/j;
    //   77: invokestatic 56	com/tencent/mm/plugin/scanner/b/j:d	(Lcom/tencent/mm/plugin/scanner/b/j;)I
    //   80: aload_3
    //   81: invokevirtual 60	android/graphics/YuvImage:compressToJpeg	(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    //   84: pop
    //   85: aload_0
    //   86: getfield 12	com/tencent/mm/plugin/scanner/b/k:egr	Lcom/tencent/mm/plugin/scanner/b/j;
    //   89: aload_3
    //   90: invokevirtual 64	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   93: putfield 68	com/tencent/mm/plugin/scanner/b/j:efL	[B
    //   96: getstatic 74	com/tencent/mm/platformtools/at:cHz	Z
    //   99: istore 12
    //   101: aconst_null
    //   102: astore_1
    //   103: iload 12
    //   105: ifeq +173 -> 278
    //   108: new 76	java/io/FileOutputStream
    //   111: dup
    //   112: new 78	java/io/File
    //   115: dup
    //   116: new 80	java/lang/StringBuilder
    //   119: dup
    //   120: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   123: invokestatic 87	com/tencent/mm/compatible/g/l:getExternalStorageDirectory	()Ljava/io/File;
    //   126: invokevirtual 91	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   129: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: ldc 97
    //   134: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: invokespecial 103	java/io/File:<init>	(Ljava/lang/String;)V
    //   143: invokespecial 106	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   146: astore 13
    //   148: aload 13
    //   150: aload_0
    //   151: getfield 12	com/tencent/mm/plugin/scanner/b/k:egr	Lcom/tencent/mm/plugin/scanner/b/j;
    //   154: getfield 68	com/tencent/mm/plugin/scanner/b/j:efL	[B
    //   157: invokevirtual 110	java/io/FileOutputStream:write	([B)V
    //   160: aload 13
    //   162: invokevirtual 113	java/io/FileOutputStream:flush	()V
    //   165: aload 13
    //   167: ifnull +8 -> 175
    //   170: aload 13
    //   172: invokevirtual 116	java/io/FileOutputStream:close	()V
    //   175: aload_3
    //   176: invokevirtual 117	java/io/ByteArrayOutputStream:close	()V
    //   179: return
    //   180: astore 8
    //   182: iconst_1
    //   183: anewarray 4	java/lang/Object
    //   186: astore 9
    //   188: aload 9
    //   190: iconst_0
    //   191: aload 8
    //   193: invokevirtual 120	java/io/IOException:getMessage	()Ljava/lang/String;
    //   196: aastore
    //   197: ldc 38
    //   199: ldc 122
    //   201: aload 9
    //   203: invokestatic 125	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   206: aload_1
    //   207: ifnull +7 -> 214
    //   210: aload_1
    //   211: invokevirtual 116	java/io/FileOutputStream:close	()V
    //   214: aload_3
    //   215: invokevirtual 117	java/io/ByteArrayOutputStream:close	()V
    //   218: return
    //   219: astore 10
    //   221: return
    //   222: astore 5
    //   224: aload_1
    //   225: ifnull +7 -> 232
    //   228: aload_1
    //   229: invokevirtual 116	java/io/FileOutputStream:close	()V
    //   232: aload_3
    //   233: invokevirtual 117	java/io/ByteArrayOutputStream:close	()V
    //   236: aload 5
    //   238: athrow
    //   239: astore 15
    //   241: goto -66 -> 175
    //   244: astore 14
    //   246: return
    //   247: astore 11
    //   249: goto -35 -> 214
    //   252: astore 7
    //   254: goto -22 -> 232
    //   257: astore 6
    //   259: goto -23 -> 236
    //   262: astore 5
    //   264: aload 13
    //   266: astore_1
    //   267: goto -43 -> 224
    //   270: astore 8
    //   272: aload 13
    //   274: astore_1
    //   275: goto -93 -> 182
    //   278: aconst_null
    //   279: astore 13
    //   281: goto -116 -> 165
    //
    // Exception table:
    //   from	to	target	type
    //   96	101	180	java/io/IOException
    //   108	148	180	java/io/IOException
    //   214	218	219	java/io/IOException
    //   96	101	222	finally
    //   108	148	222	finally
    //   182	206	222	finally
    //   170	175	239	java/io/IOException
    //   175	179	244	java/io/IOException
    //   210	214	247	java/io/IOException
    //   228	232	252	java/io/IOException
    //   232	236	257	java/io/IOException
    //   148	165	262	finally
    //   148	165	270	java/io/IOException
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.b.k
 * JD-Core Version:    0.6.2
 */