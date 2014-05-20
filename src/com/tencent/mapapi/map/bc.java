package com.tencent.mapapi.map;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;

final class bc
{
  private final int Uc = 64;
  private an WO = null;
  private String b = "";

  public bc(Context paramContext, bb parambb)
  {
    if (parambb == null)
      return;
    boolean bool1 = parambb.WL.equals("");
    int i = 0;
    boolean bool2;
    if (!bool1)
    {
      File localFile = new File(parambb.WL);
      bool2 = localFile.exists();
      if (!bool2)
        bool2 = localFile.mkdirs();
      if (bool2 != true)
        break label248;
      boolean bool3 = aq(parambb.WL) < 5L;
      i = 0;
      if (!bool3)
        break label248;
    }
    while (true)
    {
      if (i == 0)
        if (!Environment.getExternalStorageState().equals("mounted"))
          this.b = paramContext.getFilesDir().getPath();
      while (true)
      {
        this.b = (this.b + File.separator + "sosomapsdk" + File.separator + parambb.WG);
        return;
        this.b = Environment.getExternalStorageDirectory().getPath();
        if (aq(this.b) < 5L)
        {
          this.b = paramContext.getFilesDir().getPath();
          if (aq(this.b) < 5L)
          {
            this.b = Environment.getExternalStorageDirectory().getPath();
            continue;
            this.b = parambb.WL;
          }
        }
      }
      label248: i = bool2;
    }
  }

  private static int a(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    if (paramBoolean == true)
      return 0xFF & paramArrayOfByte[3] | 0xFF00 & paramArrayOfByte[2] << 8 | 0xFF0000 & paramArrayOfByte[1] << 16 | 0xFF000000 & paramArrayOfByte[0] << 24;
    return 0xFF & paramArrayOfByte[0] | 0xFF00 & paramArrayOfByte[1] << 8 | 0xFF0000 & paramArrayOfByte[2] << 16 | 0xFF000000 & paramArrayOfByte[3] << 24;
  }

  private static long aq(String paramString)
  {
    try
    {
      StatFs localStatFs = new StatFs(paramString);
      long l = localStatFs.getBlockSize() * localStatFs.getAvailableBlocks() / 1024L / 1024L;
      return l;
    }
    catch (Exception localException)
    {
    }
    return 0L;
  }

  private String[] b(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i = paramInt1 / 64;
    int j = paramInt2 / 64;
    int k = i / 10;
    int m = j / 10;
    String[] arrayOfString = new String[2];
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.b);
    localStringBuilder.append("/");
    localStringBuilder.append(paramInt3);
    localStringBuilder.append("/");
    localStringBuilder.append(k);
    localStringBuilder.append("/");
    localStringBuilder.append(m);
    localStringBuilder.append("/");
    if (!paramBoolean)
    {
      File localFile = new File(localStringBuilder.toString());
      if (!localFile.exists())
        localFile.mkdirs();
    }
    localStringBuilder.append(paramInt3);
    localStringBuilder.append("_");
    localStringBuilder.append(j);
    localStringBuilder.append("_");
    localStringBuilder.append(i);
    arrayOfString[0] = (localStringBuilder.toString() + ".ind");
    arrayOfString[1] = (localStringBuilder.toString() + ".dat");
    return arrayOfString;
  }

  private static byte[] c(int paramInt, boolean paramBoolean)
  {
    byte[] arrayOfByte = new byte[4];
    if (paramBoolean == true)
    {
      arrayOfByte[3] = ((byte)(paramInt & 0xFF));
      arrayOfByte[2] = ((byte)((0xFF00 & paramInt) >> 8));
      arrayOfByte[1] = ((byte)((0xFF0000 & paramInt) >> 16));
      arrayOfByte[0] = ((byte)((0xFF000000 & paramInt) >> 24));
      return arrayOfByte;
    }
    arrayOfByte[0] = ((byte)(paramInt & 0xFF));
    arrayOfByte[1] = ((byte)((0xFF00 & paramInt) >> 8));
    arrayOfByte[2] = ((byte)((0xFF0000 & paramInt) >> 16));
    arrayOfByte[3] = ((byte)((0xFF000000 & paramInt) >> 24));
    return arrayOfByte;
  }

  // ERROR //
  private static byte[] i(String paramString, int paramInt)
  {
    // Byte code:
    //   0: new 36	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 39	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore_2
    //   9: aload_2
    //   10: invokevirtual 43	java/io/File:exists	()Z
    //   13: ifne +5 -> 18
    //   16: aconst_null
    //   17: areturn
    //   18: new 131	java/io/RandomAccessFile
    //   21: dup
    //   22: aload_2
    //   23: ldc 133
    //   25: invokespecial 136	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   28: astore_3
    //   29: aload_3
    //   30: ifnull -14 -> 16
    //   33: iconst_4
    //   34: newarray byte
    //   36: astore 4
    //   38: iload_1
    //   39: i2l
    //   40: lstore 5
    //   42: aload_3
    //   43: lload 5
    //   45: invokevirtual 140	java/io/RandomAccessFile:seek	(J)V
    //   48: aload_3
    //   49: aload 4
    //   51: iconst_0
    //   52: iconst_4
    //   53: invokevirtual 144	java/io/RandomAccessFile:read	([BII)I
    //   56: pop
    //   57: aload 4
    //   59: iconst_0
    //   60: invokestatic 146	com/tencent/mapapi/map/bc:a	([BZ)I
    //   63: istore 9
    //   65: iload 9
    //   67: ifgt +20 -> 87
    //   70: aload_3
    //   71: invokevirtual 149	java/io/RandomAccessFile:close	()V
    //   74: aconst_null
    //   75: areturn
    //   76: astore 14
    //   78: aconst_null
    //   79: areturn
    //   80: astore 16
    //   82: aconst_null
    //   83: astore_3
    //   84: goto -55 -> 29
    //   87: iload 9
    //   89: newarray byte
    //   91: astore 10
    //   93: aload_3
    //   94: aload 10
    //   96: iconst_0
    //   97: iload 9
    //   99: invokevirtual 144	java/io/RandomAccessFile:read	([BII)I
    //   102: pop
    //   103: aload_3
    //   104: invokevirtual 149	java/io/RandomAccessFile:close	()V
    //   107: aload 10
    //   109: areturn
    //   110: astore 12
    //   112: aload 10
    //   114: areturn
    //   115: astore 7
    //   117: goto -69 -> 48
    //   120: astore 8
    //   122: goto -65 -> 57
    //   125: astore 11
    //   127: goto -24 -> 103
    //
    // Exception table:
    //   from	to	target	type
    //   70	74	76	java/io/IOException
    //   18	29	80	java/io/FileNotFoundException
    //   103	107	110	java/io/IOException
    //   42	48	115	java/io/IOException
    //   48	57	120	java/io/IOException
    //   93	103	125	java/io/IOException
  }

  private static int v(int paramInt1, int paramInt2)
  {
    int i = paramInt1 % 64;
    return paramInt2 % 64 + i * 64;
  }

  public final void a(an paraman)
  {
    this.WO = paraman;
  }

  // ERROR //
  public final boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +11 -> 14
    //   6: iconst_0
    //   7: istore 7
    //   9: aload_0
    //   10: monitorexit
    //   11: iload 7
    //   13: ireturn
    //   14: aload_1
    //   15: arraylength
    //   16: istore 6
    //   18: iload 6
    //   20: ifgt +9 -> 29
    //   23: iconst_0
    //   24: istore 7
    //   26: goto -17 -> 9
    //   29: aload_0
    //   30: iload_2
    //   31: iload_3
    //   32: iload 4
    //   34: iconst_0
    //   35: invokespecial 155	com/tencent/mapapi/map/bc:b	(IIIZ)[Ljava/lang/String;
    //   38: astore 8
    //   40: aload 8
    //   42: ifnull +553 -> 595
    //   45: aload 8
    //   47: arraylength
    //   48: iconst_2
    //   49: if_icmpne +546 -> 595
    //   52: aload 8
    //   54: iconst_0
    //   55: aaload
    //   56: ldc 19
    //   58: invokevirtual 34	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   61: ifne +534 -> 595
    //   64: aload 8
    //   66: iconst_1
    //   67: aaload
    //   68: ldc 19
    //   70: invokevirtual 34	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   73: ifeq +6 -> 79
    //   76: goto +519 -> 595
    //   79: new 36	java/io/File
    //   82: dup
    //   83: aload 8
    //   85: iconst_1
    //   86: aaload
    //   87: invokespecial 39	java/io/File:<init>	(Ljava/lang/String;)V
    //   90: astore 9
    //   92: aload 9
    //   94: invokevirtual 43	java/io/File:exists	()Z
    //   97: istore 10
    //   99: iload 10
    //   101: ifne +25 -> 126
    //   104: aload 9
    //   106: invokevirtual 158	java/io/File:createNewFile	()Z
    //   109: istore 55
    //   111: iload 55
    //   113: istore 54
    //   115: iload 54
    //   117: ifne +9 -> 126
    //   120: iconst_0
    //   121: istore 7
    //   123: goto -114 -> 9
    //   126: lconst_0
    //   127: lstore 11
    //   129: new 131	java/io/RandomAccessFile
    //   132: dup
    //   133: aload 9
    //   135: ldc 160
    //   137: invokespecial 136	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   140: astore 13
    //   142: iload 6
    //   144: iconst_0
    //   145: invokestatic 162	com/tencent/mapapi/map/bc:c	(IZ)[B
    //   148: astore 49
    //   150: aload 13
    //   152: invokevirtual 166	java/io/RandomAccessFile:length	()J
    //   155: lstore 11
    //   157: aload 13
    //   159: lload 11
    //   161: invokevirtual 140	java/io/RandomAccessFile:seek	(J)V
    //   164: aload 13
    //   166: aload 49
    //   168: invokevirtual 170	java/io/RandomAccessFile:write	([B)V
    //   171: aload 13
    //   173: aload_1
    //   174: invokevirtual 170	java/io/RandomAccessFile:write	([B)V
    //   177: aload 13
    //   179: invokevirtual 149	java/io/RandomAccessFile:close	()V
    //   182: lload 11
    //   184: lstore 15
    //   186: new 36	java/io/File
    //   189: dup
    //   190: aload 8
    //   192: iconst_0
    //   193: aaload
    //   194: invokespecial 39	java/io/File:<init>	(Ljava/lang/String;)V
    //   197: astore 17
    //   199: aload 17
    //   201: invokevirtual 43	java/io/File:exists	()Z
    //   204: istore 18
    //   206: iload 18
    //   208: ifne +121 -> 329
    //   211: aload 17
    //   213: invokevirtual 158	java/io/File:createNewFile	()Z
    //   216: istore 43
    //   218: iload 43
    //   220: istore 42
    //   222: iload 42
    //   224: ifne +105 -> 329
    //   227: iconst_0
    //   228: istore 7
    //   230: goto -221 -> 9
    //   233: astore 50
    //   235: lload 11
    //   237: lstore 15
    //   239: goto -53 -> 186
    //   242: astore 52
    //   244: aconst_null
    //   245: astore 13
    //   247: aload 13
    //   249: ifnull +17 -> 266
    //   252: aload 13
    //   254: invokevirtual 149	java/io/RandomAccessFile:close	()V
    //   257: lload 11
    //   259: lstore 15
    //   261: goto -75 -> 186
    //   264: astore 44
    //   266: lload 11
    //   268: lstore 15
    //   270: goto -84 -> 186
    //   273: astore 51
    //   275: aconst_null
    //   276: astore 13
    //   278: aload 13
    //   280: ifnull +17 -> 297
    //   283: aload 13
    //   285: invokevirtual 149	java/io/RandomAccessFile:close	()V
    //   288: lload 11
    //   290: lstore 15
    //   292: goto -106 -> 186
    //   295: astore 46
    //   297: lload 11
    //   299: lstore 15
    //   301: goto -115 -> 186
    //   304: astore 47
    //   306: aconst_null
    //   307: astore 13
    //   309: aload 13
    //   311: ifnull +8 -> 319
    //   314: aload 13
    //   316: invokevirtual 149	java/io/RandomAccessFile:close	()V
    //   319: aload 47
    //   321: athrow
    //   322: astore 5
    //   324: aload_0
    //   325: monitorexit
    //   326: aload 5
    //   328: athrow
    //   329: aconst_null
    //   330: astore 19
    //   332: new 131	java/io/RandomAccessFile
    //   335: dup
    //   336: aload 17
    //   338: ldc 160
    //   340: invokespecial 136	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   343: astore 20
    //   345: aload 20
    //   347: invokevirtual 166	java/io/RandomAccessFile:length	()J
    //   350: lstore 37
    //   352: aload 20
    //   354: astore 22
    //   356: lload 37
    //   358: lstore 23
    //   360: lload 23
    //   362: lconst_0
    //   363: lcmp
    //   364: ifne +61 -> 425
    //   367: sipush 16384
    //   370: newarray byte
    //   372: astore 34
    //   374: aload 34
    //   376: iconst_m1
    //   377: invokestatic 176	java/util/Arrays:fill	([BB)V
    //   380: aload 22
    //   382: ifnonnull +36 -> 418
    //   385: iconst_0
    //   386: istore 7
    //   388: goto -379 -> 9
    //   391: astore 40
    //   393: aconst_null
    //   394: astore 20
    //   396: aload 20
    //   398: astore 22
    //   400: lconst_0
    //   401: lstore 23
    //   403: goto -43 -> 360
    //   406: astore 39
    //   408: aload 19
    //   410: astore 22
    //   412: lconst_0
    //   413: lstore 23
    //   415: goto -55 -> 360
    //   418: aload 22
    //   420: aload 34
    //   422: invokevirtual 170	java/io/RandomAccessFile:write	([B)V
    //   425: iload_2
    //   426: iload_3
    //   427: invokestatic 178	com/tencent/mapapi/map/bc:v	(II)I
    //   430: istore 25
    //   432: iload 25
    //   434: ifge +14 -> 448
    //   437: aload 22
    //   439: invokevirtual 149	java/io/RandomAccessFile:close	()V
    //   442: iconst_0
    //   443: istore 7
    //   445: goto -436 -> 9
    //   448: iload 25
    //   450: iconst_4
    //   451: imul
    //   452: i2l
    //   453: lstore 26
    //   455: aload 22
    //   457: lload 26
    //   459: invokevirtual 140	java/io/RandomAccessFile:seek	(J)V
    //   462: aload 22
    //   464: lload 15
    //   466: l2i
    //   467: iconst_1
    //   468: invokestatic 162	com/tencent/mapapi/map/bc:c	(IZ)[B
    //   471: invokevirtual 170	java/io/RandomAccessFile:write	([B)V
    //   474: aload 22
    //   476: ifnull +8 -> 484
    //   479: aload 22
    //   481: invokevirtual 149	java/io/RandomAccessFile:close	()V
    //   484: iconst_1
    //   485: istore 7
    //   487: goto -478 -> 9
    //   490: astore 30
    //   492: aload 22
    //   494: ifnull -10 -> 484
    //   497: aload 22
    //   499: invokevirtual 149	java/io/RandomAccessFile:close	()V
    //   502: goto -18 -> 484
    //   505: astore 31
    //   507: goto -23 -> 484
    //   510: astore 28
    //   512: aload 22
    //   514: ifnull +8 -> 522
    //   517: aload 22
    //   519: invokevirtual 149	java/io/RandomAccessFile:close	()V
    //   522: aload 28
    //   524: athrow
    //   525: astore 53
    //   527: iconst_0
    //   528: istore 54
    //   530: goto -415 -> 115
    //   533: astore 48
    //   535: goto -216 -> 319
    //   538: astore 41
    //   540: iconst_0
    //   541: istore 42
    //   543: goto -321 -> 222
    //   546: astore 35
    //   548: goto -123 -> 425
    //   551: astore 33
    //   553: goto -111 -> 442
    //   556: astore 32
    //   558: goto -74 -> 484
    //   561: astore 29
    //   563: goto -41 -> 522
    //   566: astore 36
    //   568: aload 20
    //   570: astore 19
    //   572: goto -164 -> 408
    //   575: astore 21
    //   577: goto -181 -> 396
    //   580: astore 47
    //   582: goto -273 -> 309
    //   585: astore 45
    //   587: goto -309 -> 278
    //   590: astore 14
    //   592: goto -345 -> 247
    //   595: iconst_0
    //   596: istore 7
    //   598: goto -589 -> 9
    //
    // Exception table:
    //   from	to	target	type
    //   177	182	233	java/io/IOException
    //   129	142	242	java/io/FileNotFoundException
    //   252	257	264	java/io/IOException
    //   129	142	273	java/io/IOException
    //   283	288	295	java/io/IOException
    //   129	142	304	finally
    //   14	18	322	finally
    //   29	40	322	finally
    //   45	76	322	finally
    //   79	99	322	finally
    //   104	111	322	finally
    //   177	182	322	finally
    //   186	206	322	finally
    //   211	218	322	finally
    //   252	257	322	finally
    //   283	288	322	finally
    //   314	319	322	finally
    //   319	322	322	finally
    //   332	345	322	finally
    //   345	352	322	finally
    //   367	380	322	finally
    //   418	425	322	finally
    //   425	432	322	finally
    //   437	442	322	finally
    //   479	484	322	finally
    //   497	502	322	finally
    //   517	522	322	finally
    //   522	525	322	finally
    //   332	345	391	java/io/FileNotFoundException
    //   332	345	406	java/io/IOException
    //   455	474	490	java/io/IOException
    //   497	502	505	java/io/IOException
    //   455	474	510	finally
    //   104	111	525	java/io/IOException
    //   314	319	533	java/io/IOException
    //   211	218	538	java/io/IOException
    //   418	425	546	java/io/IOException
    //   437	442	551	java/io/IOException
    //   479	484	556	java/io/IOException
    //   517	522	561	java/io/IOException
    //   345	352	566	java/io/IOException
    //   345	352	575	java/io/FileNotFoundException
    //   142	177	580	finally
    //   142	177	585	java/io/IOException
    //   142	177	590	java/io/FileNotFoundException
  }

  // ERROR //
  public final boolean d(aa paramaa)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: getfield 184	com/tencent/mapapi/map/aa:a	I
    //   5: aload_1
    //   6: getfield 186	com/tencent/mapapi/map/aa:b	I
    //   9: aload_1
    //   10: getfield 187	com/tencent/mapapi/map/aa:Uc	I
    //   13: iconst_1
    //   14: invokespecial 155	com/tencent/mapapi/map/bc:b	(IIIZ)[Ljava/lang/String;
    //   17: astore_2
    //   18: aload_2
    //   19: ifnull +31 -> 50
    //   22: aload_2
    //   23: arraylength
    //   24: iconst_2
    //   25: if_icmpne +25 -> 50
    //   28: aload_2
    //   29: iconst_0
    //   30: aaload
    //   31: ldc 19
    //   33: invokevirtual 34	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   36: ifne +14 -> 50
    //   39: aload_2
    //   40: iconst_1
    //   41: aaload
    //   42: ldc 19
    //   44: invokevirtual 34	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   47: ifeq +5 -> 52
    //   50: iconst_0
    //   51: ireturn
    //   52: new 36	java/io/File
    //   55: dup
    //   56: aload_2
    //   57: iconst_0
    //   58: aaload
    //   59: invokespecial 39	java/io/File:<init>	(Ljava/lang/String;)V
    //   62: astore_3
    //   63: aload_3
    //   64: invokevirtual 43	java/io/File:exists	()Z
    //   67: ifne +5 -> 72
    //   70: iconst_0
    //   71: ireturn
    //   72: aload_1
    //   73: getfield 184	com/tencent/mapapi/map/aa:a	I
    //   76: aload_1
    //   77: getfield 186	com/tencent/mapapi/map/aa:b	I
    //   80: invokestatic 178	com/tencent/mapapi/map/bc:v	(II)I
    //   83: istore 4
    //   85: iload 4
    //   87: ifge +5 -> 92
    //   90: iconst_0
    //   91: ireturn
    //   92: new 131	java/io/RandomAccessFile
    //   95: dup
    //   96: aload_3
    //   97: ldc 133
    //   99: invokespecial 136	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   102: astore 5
    //   104: iload 4
    //   106: iconst_4
    //   107: imul
    //   108: i2l
    //   109: lstore 6
    //   111: aload 5
    //   113: lload 6
    //   115: invokevirtual 140	java/io/RandomAccessFile:seek	(J)V
    //   118: iconst_4
    //   119: newarray byte
    //   121: astore 9
    //   123: aload 5
    //   125: aload 9
    //   127: iconst_0
    //   128: iconst_4
    //   129: invokevirtual 144	java/io/RandomAccessFile:read	([BII)I
    //   132: pop
    //   133: aload 9
    //   135: iconst_1
    //   136: invokestatic 146	com/tencent/mapapi/map/bc:a	([BZ)I
    //   139: istore 11
    //   141: aload 5
    //   143: invokevirtual 149	java/io/RandomAccessFile:close	()V
    //   146: iload 11
    //   148: iconst_m1
    //   149: if_icmpne +5 -> 154
    //   152: iconst_0
    //   153: ireturn
    //   154: aconst_null
    //   155: astore 13
    //   157: iload 11
    //   159: bipush 254
    //   161: if_icmpeq +33 -> 194
    //   164: aconst_null
    //   165: astore 13
    //   167: iload 11
    //   169: bipush 253
    //   171: if_icmpeq +23 -> 194
    //   174: aconst_null
    //   175: astore 13
    //   177: iload 11
    //   179: bipush 156
    //   181: if_icmpeq +13 -> 194
    //   184: aload_2
    //   185: iconst_1
    //   186: aaload
    //   187: iload 11
    //   189: invokestatic 189	com/tencent/mapapi/map/bc:i	(Ljava/lang/String;I)[B
    //   192: astore 13
    //   194: aload 13
    //   196: ifnonnull +5 -> 201
    //   199: iconst_0
    //   200: ireturn
    //   201: new 71	java/lang/StringBuilder
    //   204: dup
    //   205: invokespecial 72	java/lang/StringBuilder:<init>	()V
    //   208: astore 14
    //   210: aload 14
    //   212: aload_1
    //   213: getfield 184	com/tencent/mapapi/map/aa:a	I
    //   216: invokevirtual 115	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   219: pop
    //   220: aload 14
    //   222: ldc 191
    //   224: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   227: pop
    //   228: aload 14
    //   230: aload_1
    //   231: getfield 186	com/tencent/mapapi/map/aa:b	I
    //   234: invokevirtual 115	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   237: pop
    //   238: aload 14
    //   240: ldc 191
    //   242: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: pop
    //   246: aload 14
    //   248: aload_1
    //   249: getfield 187	com/tencent/mapapi/map/aa:Uc	I
    //   252: invokevirtual 115	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   255: pop
    //   256: aload_0
    //   257: getfield 17	com/tencent/mapapi/map/bc:WO	Lcom/tencent/mapapi/map/an;
    //   260: ifnonnull +5 -> 265
    //   263: iconst_0
    //   264: ireturn
    //   265: aload_0
    //   266: getfield 17	com/tencent/mapapi/map/bc:WO	Lcom/tencent/mapapi/map/an;
    //   269: aload 13
    //   271: aload 14
    //   273: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   276: invokevirtual 196	com/tencent/mapapi/map/an:b	([BLjava/lang/String;)Z
    //   279: ireturn
    //   280: astore 10
    //   282: goto -149 -> 133
    //   285: astore 12
    //   287: goto -141 -> 146
    //   290: astore 23
    //   292: aconst_null
    //   293: astore 5
    //   295: goto -177 -> 118
    //   298: astore 21
    //   300: goto -182 -> 118
    //   303: astore 22
    //   305: aconst_null
    //   306: astore 5
    //   308: goto -190 -> 118
    //   311: astore 8
    //   313: goto -195 -> 118
    //
    // Exception table:
    //   from	to	target	type
    //   123	133	280	java/io/IOException
    //   141	146	285	java/io/IOException
    //   92	104	290	java/io/IOException
    //   111	118	298	java/io/IOException
    //   92	104	303	java/io/FileNotFoundException
    //   111	118	311	java/io/FileNotFoundException
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.bc
 * JD-Core Version:    0.6.2
 */