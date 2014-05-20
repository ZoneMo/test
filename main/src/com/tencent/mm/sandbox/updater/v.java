package com.tencent.mm.sandbox.updater;

import android.os.AsyncTask;
import com.tencent.mm.network.bd;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.sandbox.b;
import com.tencent.mm.sdk.platformtools.aa;

final class v extends AsyncTask
{
  private bd bZH = null;
  private String cEu = null;
  private b gbn = null;
  private int gbr = 200;
  private PInt gbs = new PInt();

  public v(t paramt, String paramString, b paramb)
  {
    this.cEu = paramString;
    this.gbn = paramb;
  }

  // ERROR //
  private com.tencent.mm.protocal.a.kz a(com.tencent.mm.protocal.a.ky[] paramArrayOfky)
  {
    // Byte code:
    //   0: aload_1
    //   1: arraylength
    //   2: ifeq +9 -> 11
    //   5: aload_1
    //   6: iconst_0
    //   7: aaload
    //   8: ifnonnull +12 -> 20
    //   11: aload_0
    //   12: iconst_m1
    //   13: putfield 27	com/tencent/mm/sandbox/updater/v:gbr	I
    //   16: aconst_null
    //   17: astore_2
    //   18: aload_2
    //   19: areturn
    //   20: ldc 44
    //   22: new 46	java/lang/StringBuilder
    //   25: dup
    //   26: ldc 48
    //   28: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   31: aload_1
    //   32: iconst_0
    //   33: aaload
    //   34: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   37: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: invokestatic 65	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   43: aload_1
    //   44: iconst_0
    //   45: aaload
    //   46: astore_3
    //   47: new 67	com/tencent/mm/pointers/PByteArray
    //   50: dup
    //   51: invokespecial 68	com/tencent/mm/pointers/PByteArray:<init>	()V
    //   54: astore 4
    //   56: aload_3
    //   57: invokevirtual 74	com/tencent/mm/protocal/a/ky:toByteArray	()[B
    //   60: aload 4
    //   62: aload_0
    //   63: getfield 20	com/tencent/mm/sandbox/updater/v:gbq	Lcom/tencent/mm/sandbox/updater/t;
    //   66: invokestatic 80	com/tencent/mm/sandbox/updater/t:j	(Lcom/tencent/mm/sandbox/updater/t;)Ljava/lang/String;
    //   69: aload_0
    //   70: getfield 20	com/tencent/mm/sandbox/updater/v:gbq	Lcom/tencent/mm/sandbox/updater/t;
    //   73: invokestatic 84	com/tencent/mm/sandbox/updater/t:k	(Lcom/tencent/mm/sandbox/updater/t;)[B
    //   76: invokestatic 89	com/tencent/mm/compatible/c/s:pV	()Ljava/lang/String;
    //   79: aload_0
    //   80: getfield 20	com/tencent/mm/sandbox/updater/v:gbq	Lcom/tencent/mm/sandbox/updater/t;
    //   83: invokestatic 93	com/tencent/mm/sandbox/updater/t:l	(Lcom/tencent/mm/sandbox/updater/t;)I
    //   86: bipush 113
    //   88: iconst_0
    //   89: iconst_0
    //   90: newarray byte
    //   92: iconst_0
    //   93: newarray byte
    //   95: invokestatic 99	com/tencent/mm/protocal/MMProtocalJni:pack	([BLcom/tencent/mm/pointers/PByteArray;Ljava/lang/String;[BLjava/lang/String;III[B[B)Z
    //   98: pop
    //   99: aload_0
    //   100: new 46	java/lang/StringBuilder
    //   103: dup
    //   104: ldc 101
    //   106: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   109: aload_0
    //   110: getfield 34	com/tencent/mm/sandbox/updater/v:cEu	Ljava/lang/String;
    //   113: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: ldc 106
    //   118: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   124: invokestatic 112	com/tencent/mm/network/k:hD	(Ljava/lang/String;)Lcom/tencent/mm/network/bd;
    //   127: putfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   130: aload_0
    //   131: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   134: ldc 114
    //   136: invokevirtual 119	com/tencent/mm/network/bd:setRequestMethod	(Ljava/lang/String;)V
    //   139: aload_0
    //   140: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   143: invokevirtual 122	com/tencent/mm/network/bd:EW	()V
    //   146: aload_0
    //   147: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   150: invokevirtual 125	com/tencent/mm/network/bd:EX	()V
    //   153: aload_0
    //   154: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   157: iconst_0
    //   158: invokevirtual 129	com/tencent/mm/network/bd:setUseCaches	(Z)V
    //   161: aload_0
    //   162: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   165: ldc 131
    //   167: ldc 133
    //   169: invokevirtual 136	com/tencent/mm/network/bd:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   172: aload_0
    //   173: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   176: ldc 138
    //   178: ldc 140
    //   180: invokevirtual 136	com/tencent/mm/network/bd:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   183: aload_0
    //   184: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   187: ldc 142
    //   189: ldc 144
    //   191: invokevirtual 136	com/tencent/mm/network/bd:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   194: aload_0
    //   195: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   198: ldc 146
    //   200: ldc 148
    //   202: invokevirtual 136	com/tencent/mm/network/bd:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   205: aload_0
    //   206: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   209: ldc 150
    //   211: ldc 152
    //   213: invokevirtual 136	com/tencent/mm/network/bd:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   216: aload_0
    //   217: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   220: ldc 154
    //   222: ldc 156
    //   224: invokevirtual 136	com/tencent/mm/network/bd:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   227: aload_0
    //   228: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   231: sipush 15000
    //   234: invokevirtual 160	com/tencent/mm/network/bd:setConnectTimeout	(I)V
    //   237: aload_0
    //   238: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   241: invokevirtual 163	com/tencent/mm/network/bd:connect	()V
    //   244: aload_0
    //   245: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   248: invokevirtual 167	com/tencent/mm/network/bd:getOutputStream	()Ljava/io/OutputStream;
    //   251: astore 17
    //   253: aload 17
    //   255: astore 10
    //   257: aload 10
    //   259: aload 4
    //   261: getfield 171	com/tencent/mm/pointers/PByteArray:value	[B
    //   264: invokevirtual 177	java/io/OutputStream:write	([B)V
    //   267: aload 10
    //   269: invokevirtual 180	java/io/OutputStream:flush	()V
    //   272: aload_0
    //   273: aload_0
    //   274: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   277: invokevirtual 184	com/tencent/mm/network/bd:getResponseCode	()I
    //   280: putfield 27	com/tencent/mm/sandbox/updater/v:gbr	I
    //   283: aload_0
    //   284: getfield 27	com/tencent/mm/sandbox/updater/v:gbr	I
    //   287: istore 18
    //   289: iload 18
    //   291: sipush 200
    //   294: if_icmpeq +62 -> 356
    //   297: aload 10
    //   299: ifnull +8 -> 307
    //   302: aload 10
    //   304: invokevirtual 187	java/io/OutputStream:close	()V
    //   307: aload_0
    //   308: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   311: ifnull +15 -> 326
    //   314: aload_0
    //   315: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   318: invokevirtual 190	com/tencent/mm/network/bd:disconnect	()V
    //   321: aload_0
    //   322: aconst_null
    //   323: putfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   326: aconst_null
    //   327: areturn
    //   328: astore 5
    //   330: iconst_1
    //   331: anewarray 192	java/lang/Object
    //   334: astore 6
    //   336: aload 6
    //   338: iconst_0
    //   339: aload 5
    //   341: invokevirtual 195	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   344: aastore
    //   345: ldc 44
    //   347: ldc 197
    //   349: aload 6
    //   351: invokestatic 201	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   354: aconst_null
    //   355: areturn
    //   356: aload_0
    //   357: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   360: ldc 203
    //   362: invokevirtual 207	com/tencent/mm/network/bd:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   365: astore 19
    //   367: aload_0
    //   368: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   371: invokevirtual 211	com/tencent/mm/network/bd:getInputStream	()Ljava/io/InputStream;
    //   374: astore 20
    //   376: aload 20
    //   378: astore 9
    //   380: aload 19
    //   382: ifnull +24 -> 406
    //   385: aload 19
    //   387: ldc 213
    //   389: invokevirtual 219	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   392: ifeq +14 -> 406
    //   395: new 221	java/util/zip/GZIPInputStream
    //   398: dup
    //   399: aload 9
    //   401: invokespecial 224	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   404: astore 9
    //   406: new 226	java/io/ByteArrayOutputStream
    //   409: dup
    //   410: invokespecial 227	java/io/ByteArrayOutputStream:<init>	()V
    //   413: astore 21
    //   415: sipush 1024
    //   418: newarray byte
    //   420: astore 22
    //   422: aload 9
    //   424: aload 22
    //   426: invokevirtual 233	java/io/InputStream:read	([B)I
    //   429: istore 23
    //   431: iload 23
    //   433: ifle +88 -> 521
    //   436: aload 21
    //   438: aload 22
    //   440: iconst_0
    //   441: iload 23
    //   443: invokevirtual 236	java/io/ByteArrayOutputStream:write	([BII)V
    //   446: goto -24 -> 422
    //   449: astore 8
    //   451: iconst_1
    //   452: anewarray 192	java/lang/Object
    //   455: astore 14
    //   457: aload 14
    //   459: iconst_0
    //   460: aload 8
    //   462: invokevirtual 195	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   465: aastore
    //   466: ldc 44
    //   468: ldc 238
    //   470: aload 14
    //   472: invokestatic 201	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   475: aload_0
    //   476: iconst_m1
    //   477: putfield 27	com/tencent/mm/sandbox/updater/v:gbr	I
    //   480: aload 10
    //   482: ifnull +8 -> 490
    //   485: aload 10
    //   487: invokevirtual 187	java/io/OutputStream:close	()V
    //   490: aload 9
    //   492: ifnull +8 -> 500
    //   495: aload 9
    //   497: invokevirtual 239	java/io/InputStream:close	()V
    //   500: aload_0
    //   501: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   504: ifnull +15 -> 519
    //   507: aload_0
    //   508: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   511: invokevirtual 190	com/tencent/mm/network/bd:disconnect	()V
    //   514: aload_0
    //   515: aconst_null
    //   516: putfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   519: aconst_null
    //   520: areturn
    //   521: new 67	com/tencent/mm/pointers/PByteArray
    //   524: dup
    //   525: invokespecial 68	com/tencent/mm/pointers/PByteArray:<init>	()V
    //   528: astore 24
    //   530: new 67	com/tencent/mm/pointers/PByteArray
    //   533: dup
    //   534: invokespecial 68	com/tencent/mm/pointers/PByteArray:<init>	()V
    //   537: astore 25
    //   539: aload 24
    //   541: aload 21
    //   543: invokevirtual 240	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   546: aload_0
    //   547: getfield 20	com/tencent/mm/sandbox/updater/v:gbq	Lcom/tencent/mm/sandbox/updater/t;
    //   550: invokestatic 80	com/tencent/mm/sandbox/updater/t:j	(Lcom/tencent/mm/sandbox/updater/t;)Ljava/lang/String;
    //   553: invokevirtual 243	java/lang/String:getBytes	()[B
    //   556: aload 25
    //   558: aload_0
    //   559: getfield 32	com/tencent/mm/sandbox/updater/v:gbs	Lcom/tencent/mm/pointers/PInt;
    //   562: invokestatic 247	com/tencent/mm/protocal/MMProtocalJni:unpack	(Lcom/tencent/mm/pointers/PByteArray;[B[BLcom/tencent/mm/pointers/PByteArray;Lcom/tencent/mm/pointers/PInt;)Z
    //   565: pop
    //   566: new 249	com/tencent/mm/protocal/a/kz
    //   569: dup
    //   570: invokespecial 250	com/tencent/mm/protocal/a/kz:<init>	()V
    //   573: aload 24
    //   575: getfield 171	com/tencent/mm/pointers/PByteArray:value	[B
    //   578: invokevirtual 254	com/tencent/mm/protocal/a/kz:bq	([B)Lcom/tencent/mm/protocal/a/kz;
    //   581: astore 27
    //   583: aload 27
    //   585: astore_2
    //   586: aload 10
    //   588: ifnull +8 -> 596
    //   591: aload 10
    //   593: invokevirtual 187	java/io/OutputStream:close	()V
    //   596: aload 9
    //   598: ifnull +8 -> 606
    //   601: aload 9
    //   603: invokevirtual 239	java/io/InputStream:close	()V
    //   606: aload_0
    //   607: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   610: ifnull -592 -> 18
    //   613: aload_0
    //   614: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   617: invokevirtual 190	com/tencent/mm/network/bd:disconnect	()V
    //   620: aload_0
    //   621: aconst_null
    //   622: putfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   625: aload_2
    //   626: areturn
    //   627: astore 11
    //   629: aconst_null
    //   630: astore 9
    //   632: aconst_null
    //   633: astore 10
    //   635: aload 10
    //   637: ifnull +8 -> 645
    //   640: aload 10
    //   642: invokevirtual 187	java/io/OutputStream:close	()V
    //   645: aload 9
    //   647: ifnull +8 -> 655
    //   650: aload 9
    //   652: invokevirtual 239	java/io/InputStream:close	()V
    //   655: aload_0
    //   656: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   659: ifnull +15 -> 674
    //   662: aload_0
    //   663: getfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   666: invokevirtual 190	com/tencent/mm/network/bd:disconnect	()V
    //   669: aload_0
    //   670: aconst_null
    //   671: putfield 25	com/tencent/mm/sandbox/updater/v:bZH	Lcom/tencent/mm/network/bd;
    //   674: aload 11
    //   676: athrow
    //   677: astore 30
    //   679: goto -372 -> 307
    //   682: astore 29
    //   684: goto -88 -> 596
    //   687: astore 28
    //   689: goto -83 -> 606
    //   692: astore 16
    //   694: goto -204 -> 490
    //   697: astore 15
    //   699: goto -199 -> 500
    //   702: astore 13
    //   704: goto -59 -> 645
    //   707: astore 12
    //   709: goto -54 -> 655
    //   712: astore 11
    //   714: aconst_null
    //   715: astore 9
    //   717: goto -82 -> 635
    //   720: astore 11
    //   722: goto -87 -> 635
    //   725: astore 8
    //   727: aconst_null
    //   728: astore 9
    //   730: aconst_null
    //   731: astore 10
    //   733: goto -282 -> 451
    //   736: astore 8
    //   738: aconst_null
    //   739: astore 9
    //   741: goto -290 -> 451
    //
    // Exception table:
    //   from	to	target	type
    //   56	99	328	java/lang/Exception
    //   385	406	449	java/lang/Exception
    //   406	422	449	java/lang/Exception
    //   422	431	449	java/lang/Exception
    //   436	446	449	java/lang/Exception
    //   521	583	449	java/lang/Exception
    //   99	253	627	finally
    //   302	307	677	java/io/IOException
    //   591	596	682	java/io/IOException
    //   601	606	687	java/io/IOException
    //   485	490	692	java/io/IOException
    //   495	500	697	java/io/IOException
    //   640	645	702	java/io/IOException
    //   650	655	707	java/io/IOException
    //   257	289	712	finally
    //   356	376	712	finally
    //   385	406	720	finally
    //   406	422	720	finally
    //   422	431	720	finally
    //   436	446	720	finally
    //   451	480	720	finally
    //   521	583	720	finally
    //   99	253	725	java/lang/Exception
    //   257	289	736	java/lang/Exception
    //   356	376	736	java/lang/Exception
  }

  protected final void onCancelled()
  {
    aa.d("MicroMsg.NetSceneGetUpdatePack", "task had been cancelled.");
    if (this.bZH != null)
      this.bZH.disconnect();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.v
 * JD-Core Version:    0.6.2
 */