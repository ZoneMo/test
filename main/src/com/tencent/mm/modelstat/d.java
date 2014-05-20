package com.tencent.mm.modelstat;

import com.tencent.mm.model.be;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.n.z;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.platformtools.i;
import com.tencent.mm.protocal.a.vw;
import com.tencent.mm.protocal.a.vx;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

public final class d extends x
  implements ab
{
  private m cjh;
  private a cke;
  private ay ckr = new ay(new e(this), false);
  private int cyH = 5;
  private int cyI = 1;
  private Queue cyJ = null;

  public d()
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new vw());
    localb.b(new vx());
    localb.es("/cgi-bin/micromsg-bin/statreport");
    localb.cN(250);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    this.cyI = ((int)i.a(l.czt + "wd.ini", "ReportFlag", 1L));
    this.cyJ = CO();
    StringBuilder localStringBuilder = new StringBuilder("getFileList : ");
    if (this.cyJ == null);
    for (Object localObject = "null"; ; localObject = Integer.valueOf(this.cyJ.size()))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneNetStatReport", localObject);
      return;
    }
  }

  private static Queue CO()
  {
    int i = 0;
    File[] arrayOfFile = new File(l.czt).listFiles();
    Object localObject;
    if (arrayOfFile == null)
      localObject = null;
    while (true)
    {
      return localObject;
      long l1 = gw(l.gx(i.getValue(l.czt + "wd.ini", "LastFile")));
      HashMap localHashMap = new HashMap();
      long l2 = cj.FD();
      int j = 0;
      if (j < arrayOfFile.length)
      {
        String str = arrayOfFile[j].getPath();
        long l3;
        if (!str.endsWith("wd.ini"))
        {
          l3 = gw(str);
          if ((l3 != -1L) && (l1 != l3))
            break label162;
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneNetStatReport", "getTimeByFle failed tLast:" + l1 + " file:" + str);
        }
        while (true)
        {
          j++;
          break;
          label162: if (l2 - 604800000L > l3)
          {
            arrayOfFile[j].delete();
            com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneNetStatReport", "Give up file:" + str);
          }
          else if (str.endsWith(".send"))
          {
            com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneNetStatReport", "file has send :" + str);
          }
          else
          {
            localHashMap.put(Long.valueOf(l3), arrayOfFile[j]);
          }
        }
      }
      if (localHashMap.size() == 0)
        return null;
      localObject = new LinkedList();
      Object[] arrayOfObject = localHashMap.keySet().toArray();
      Arrays.sort(arrayOfObject);
      int k = arrayOfObject.length;
      while (i < k)
      {
        ((Queue)localObject).add(localHashMap.get(arrayOfObject[i]));
        i++;
      }
    }
  }

  // ERROR //
  private boolean a(File paramFile, vw paramvw)
  {
    // Byte code:
    //   0: new 243	java/io/RandomAccessFile
    //   3: dup
    //   4: aload_1
    //   5: ldc 245
    //   7: invokespecial 248	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   10: astore_3
    //   11: new 250	com/tencent/mm/modelstat/q
    //   14: dup
    //   15: invokespecial 251	com/tencent/mm/modelstat/q:<init>	()V
    //   18: astore 4
    //   20: aload 4
    //   22: aload_3
    //   23: invokevirtual 254	com/tencent/mm/modelstat/q:a	(Ljava/io/RandomAccessFile;)I
    //   26: pop
    //   27: new 256	com/tencent/mm/protocal/a/vt
    //   30: dup
    //   31: invokespecial 257	com/tencent/mm/protocal/a/vt:<init>	()V
    //   34: astore 6
    //   36: aload 6
    //   38: aload 4
    //   40: getfield 261	com/tencent/mm/modelstat/q:cAa	[J
    //   43: iconst_0
    //   44: laload
    //   45: l2i
    //   46: putfield 264	com/tencent/mm/protocal/a/vt:fEW	I
    //   49: aload 6
    //   51: aload 4
    //   53: getfield 261	com/tencent/mm/modelstat/q:cAa	[J
    //   56: iconst_1
    //   57: laload
    //   58: l2i
    //   59: putfield 267	com/tencent/mm/protocal/a/vt:fDR	I
    //   62: aload 6
    //   64: aload 4
    //   66: getfield 261	com/tencent/mm/modelstat/q:cAa	[J
    //   69: iconst_3
    //   70: laload
    //   71: l2i
    //   72: putfield 270	com/tencent/mm/protocal/a/vt:fWm	I
    //   75: aload 6
    //   77: aload 4
    //   79: getfield 261	com/tencent/mm/modelstat/q:cAa	[J
    //   82: iconst_4
    //   83: laload
    //   84: l2i
    //   85: putfield 273	com/tencent/mm/protocal/a/vt:fWn	I
    //   88: aload 6
    //   90: aload 4
    //   92: getfield 261	com/tencent/mm/modelstat/q:cAa	[J
    //   95: iconst_5
    //   96: laload
    //   97: l2i
    //   98: putfield 276	com/tencent/mm/protocal/a/vt:fWo	I
    //   101: aload 6
    //   103: aload 4
    //   105: getfield 261	com/tencent/mm/modelstat/q:cAa	[J
    //   108: bipush 6
    //   110: laload
    //   111: l2i
    //   112: putfield 279	com/tencent/mm/protocal/a/vt:fWp	I
    //   115: aload 6
    //   117: aload 4
    //   119: getfield 261	com/tencent/mm/modelstat/q:cAa	[J
    //   122: bipush 7
    //   124: laload
    //   125: l2i
    //   126: putfield 282	com/tencent/mm/protocal/a/vt:fWq	I
    //   129: aload 6
    //   131: aload 4
    //   133: getfield 261	com/tencent/mm/modelstat/q:cAa	[J
    //   136: bipush 8
    //   138: laload
    //   139: l2i
    //   140: putfield 285	com/tencent/mm/protocal/a/vt:fWr	I
    //   143: aload 6
    //   145: aload 4
    //   147: getfield 261	com/tencent/mm/modelstat/q:cAa	[J
    //   150: bipush 9
    //   152: laload
    //   153: l2i
    //   154: putfield 288	com/tencent/mm/protocal/a/vt:fWs	I
    //   157: aload 6
    //   159: aload 4
    //   161: getfield 261	com/tencent/mm/modelstat/q:cAa	[J
    //   164: bipush 11
    //   166: laload
    //   167: l2i
    //   168: putfield 291	com/tencent/mm/protocal/a/vt:fWt	I
    //   171: aload 6
    //   173: invokestatic 294	com/tencent/mm/sdk/platformtools/cj:FC	()J
    //   176: l2i
    //   177: putfield 297	com/tencent/mm/protocal/a/vt:fWl	I
    //   180: aload_2
    //   181: aload 6
    //   183: putfield 301	com/tencent/mm/protocal/a/vw:fXo	Lcom/tencent/mm/protocal/a/vt;
    //   186: new 210	java/util/LinkedList
    //   189: dup
    //   190: invokespecial 211	java/util/LinkedList:<init>	()V
    //   193: astore 7
    //   195: aload_3
    //   196: invokevirtual 304	java/io/RandomAccessFile:getFilePointer	()J
    //   199: aload_3
    //   200: invokevirtual 307	java/io/RandomAccessFile:length	()J
    //   203: lcmp
    //   204: ifge +59 -> 263
    //   207: aload_3
    //   208: invokevirtual 310	java/io/RandomAccessFile:readInt	()I
    //   211: istore 11
    //   213: iload 11
    //   215: ifle +13 -> 228
    //   218: iload 11
    //   220: i2l
    //   221: ldc2_w 311
    //   224: lcmp
    //   225: ifle +80 -> 305
    //   228: ldc 115
    //   230: new 79	java/lang/StringBuilder
    //   233: dup
    //   234: ldc_w 314
    //   237: invokespecial 111	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   240: iload 11
    //   242: invokevirtual 317	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   245: ldc 184
    //   247: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   250: aload_1
    //   251: invokevirtual 320	java/io/File:getName	()Ljava/lang/String;
    //   254: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   260: invokestatic 323	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   263: aload_3
    //   264: invokevirtual 326	java/io/RandomAccessFile:close	()V
    //   267: new 328	com/tencent/mm/protocal/a/vu
    //   270: dup
    //   271: invokespecial 329	com/tencent/mm/protocal/a/vu:<init>	()V
    //   274: astore 10
    //   276: aload 10
    //   278: aload 7
    //   280: invokevirtual 330	java/util/LinkedList:size	()I
    //   283: putfield 333	com/tencent/mm/protocal/a/vu:fAC	I
    //   286: aload 10
    //   288: aload 7
    //   290: putfield 337	com/tencent/mm/protocal/a/vu:fAD	Ljava/util/LinkedList;
    //   293: aload_2
    //   294: aload 10
    //   296: putfield 341	com/tencent/mm/protocal/a/vw:fXn	Lcom/tencent/mm/protocal/a/vu;
    //   299: iconst_1
    //   300: ireturn
    //   301: astore 20
    //   303: iconst_0
    //   304: ireturn
    //   305: iload 11
    //   307: newarray byte
    //   309: astore 12
    //   311: aload_3
    //   312: aload 12
    //   314: iconst_0
    //   315: iload 11
    //   317: invokevirtual 345	java/io/RandomAccessFile:read	([BII)I
    //   320: pop
    //   321: new 347	com/tencent/mm/protocal/a/vv
    //   324: dup
    //   325: invokespecial 348	com/tencent/mm/protocal/a/vv:<init>	()V
    //   328: aload 12
    //   330: invokevirtual 352	com/tencent/mm/protocal/a/vv:bW	([B)Lcom/tencent/mm/protocal/a/vv;
    //   333: astore 14
    //   335: aload 14
    //   337: ifnonnull +31 -> 368
    //   340: ldc 115
    //   342: new 79	java/lang/StringBuilder
    //   345: dup
    //   346: ldc_w 354
    //   349: invokespecial 111	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   352: aload_1
    //   353: invokevirtual 320	java/io/File:getName	()Ljava/lang/String;
    //   356: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   359: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   362: invokestatic 357	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   365: goto -170 -> 195
    //   368: aload 14
    //   370: getfield 360	com/tencent/mm/protocal/a/vv:fWu	I
    //   373: iflt -178 -> 195
    //   376: aload 14
    //   378: getfield 360	com/tencent/mm/protocal/a/vv:fWu	I
    //   381: ifle +53 -> 434
    //   384: aload_0
    //   385: getfield 25	com/tencent/mm/modelstat/d:cyI	I
    //   388: iconst_5
    //   389: if_icmpne +45 -> 434
    //   392: ldc 115
    //   394: new 79	java/lang/StringBuilder
    //   397: dup
    //   398: ldc_w 362
    //   401: invokespecial 111	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   404: aload 14
    //   406: getfield 360	com/tencent/mm/protocal/a/vv:fWu	I
    //   409: invokevirtual 317	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   412: ldc_w 364
    //   415: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   418: aload_0
    //   419: getfield 25	com/tencent/mm/modelstat/d:cyI	I
    //   422: invokevirtual 317	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   425: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   428: invokestatic 323	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   431: goto -236 -> 195
    //   434: aload 14
    //   436: getfield 367	com/tencent/mm/protocal/a/vv:fWA	I
    //   439: ifle +61 -> 500
    //   442: aload_0
    //   443: getfield 25	com/tencent/mm/modelstat/d:cyI	I
    //   446: iconst_2
    //   447: if_icmpeq +11 -> 458
    //   450: aload_0
    //   451: getfield 25	com/tencent/mm/modelstat/d:cyI	I
    //   454: iconst_5
    //   455: if_icmpne +45 -> 500
    //   458: ldc 115
    //   460: new 79	java/lang/StringBuilder
    //   463: dup
    //   464: ldc_w 369
    //   467: invokespecial 111	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   470: aload 14
    //   472: getfield 360	com/tencent/mm/protocal/a/vv:fWu	I
    //   475: invokevirtual 317	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   478: ldc_w 364
    //   481: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   484: aload_0
    //   485: getfield 25	com/tencent/mm/modelstat/d:cyI	I
    //   488: invokevirtual 317	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   491: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   494: invokestatic 323	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   497: goto -302 -> 195
    //   500: invokestatic 166	com/tencent/mm/sdk/platformtools/cj:FD	()J
    //   503: lstore 15
    //   505: aload 14
    //   507: ifnonnull +22 -> 529
    //   510: iconst_0
    //   511: istore 17
    //   513: iload 17
    //   515: ifeq -320 -> 195
    //   518: aload 7
    //   520: aload 14
    //   522: invokevirtual 370	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   525: pop
    //   526: goto -331 -> 195
    //   529: aload 14
    //   531: getfield 360	com/tencent/mm/protocal/a/vv:fWu	I
    //   534: ldc_w 371
    //   537: if_icmple +9 -> 546
    //   540: iconst_0
    //   541: istore 17
    //   543: goto -30 -> 513
    //   546: aload 14
    //   548: getfield 375	com/tencent/mm/protocal/a/vv:fWG	J
    //   551: ldc2_w 376
    //   554: lcmp
    //   555: ifeq +13 -> 568
    //   558: aload 14
    //   560: getfield 375	com/tencent/mm/protocal/a/vv:fWG	J
    //   563: lconst_0
    //   564: lcmp
    //   565: iflt +249 -> 814
    //   568: aload 14
    //   570: getfield 375	com/tencent/mm/protocal/a/vv:fWG	J
    //   573: lload 15
    //   575: lcmp
    //   576: ifle +6 -> 582
    //   579: goto +235 -> 814
    //   582: aload 14
    //   584: getfield 380	com/tencent/mm/protocal/a/vv:fWH	J
    //   587: ldc2_w 376
    //   590: lcmp
    //   591: ifeq +13 -> 604
    //   594: aload 14
    //   596: getfield 380	com/tencent/mm/protocal/a/vv:fWH	J
    //   599: lconst_0
    //   600: lcmp
    //   601: iflt +219 -> 820
    //   604: aload 14
    //   606: getfield 380	com/tencent/mm/protocal/a/vv:fWH	J
    //   609: lload 15
    //   611: lcmp
    //   612: ifle +6 -> 618
    //   615: goto +205 -> 820
    //   618: aload 14
    //   620: getfield 375	com/tencent/mm/protocal/a/vv:fWG	J
    //   623: aload 14
    //   625: getfield 380	com/tencent/mm/protocal/a/vv:fWH	J
    //   628: lcmp
    //   629: ifle +9 -> 638
    //   632: iconst_0
    //   633: istore 17
    //   635: goto -122 -> 513
    //   638: aload 14
    //   640: getfield 383	com/tencent/mm/protocal/a/vv:fWB	I
    //   643: i2l
    //   644: aload 14
    //   646: getfield 380	com/tencent/mm/protocal/a/vv:fWH	J
    //   649: aload 14
    //   651: getfield 375	com/tencent/mm/protocal/a/vv:fWG	J
    //   654: lsub
    //   655: lcmp
    //   656: ifle +9 -> 665
    //   659: iconst_0
    //   660: istore 17
    //   662: goto -149 -> 513
    //   665: aload 14
    //   667: getfield 383	com/tencent/mm/protocal/a/vv:fWB	I
    //   670: ldc_w 384
    //   673: if_icmpeq +11 -> 684
    //   676: aload 14
    //   678: getfield 383	com/tencent/mm/protocal/a/vv:fWB	I
    //   681: iflt +145 -> 826
    //   684: aload 14
    //   686: getfield 383	com/tencent/mm/protocal/a/vv:fWB	I
    //   689: i2l
    //   690: ldc2_w 385
    //   693: lcmp
    //   694: ifle +6 -> 700
    //   697: goto +129 -> 826
    //   700: aload 14
    //   702: getfield 389	com/tencent/mm/protocal/a/vv:fWC	I
    //   705: ldc_w 384
    //   708: if_icmpeq +17 -> 725
    //   711: aload 14
    //   713: getfield 389	com/tencent/mm/protocal/a/vv:fWC	I
    //   716: ifge +9 -> 725
    //   719: iconst_0
    //   720: istore 17
    //   722: goto -209 -> 513
    //   725: aload 14
    //   727: getfield 392	com/tencent/mm/protocal/a/vv:fWE	I
    //   730: ldc_w 384
    //   733: if_icmpeq +11 -> 744
    //   736: aload 14
    //   738: getfield 392	com/tencent/mm/protocal/a/vv:fWE	I
    //   741: iflt +91 -> 832
    //   744: aload 14
    //   746: getfield 392	com/tencent/mm/protocal/a/vv:fWE	I
    //   749: ldc_w 393
    //   752: if_icmple +6 -> 758
    //   755: goto +77 -> 832
    //   758: aload 14
    //   760: getfield 396	com/tencent/mm/protocal/a/vv:fWD	I
    //   763: ldc_w 384
    //   766: if_icmpeq +11 -> 777
    //   769: aload 14
    //   771: getfield 396	com/tencent/mm/protocal/a/vv:fWD	I
    //   774: iflt +18 -> 792
    //   777: aload 14
    //   779: getfield 396	com/tencent/mm/protocal/a/vv:fWD	I
    //   782: istore 19
    //   784: iload 19
    //   786: ldc_w 393
    //   789: if_icmple +9 -> 798
    //   792: iconst_0
    //   793: istore 17
    //   795: goto -282 -> 513
    //   798: iconst_1
    //   799: istore 17
    //   801: goto -288 -> 513
    //   804: astore 9
    //   806: goto -539 -> 267
    //   809: astore 8
    //   811: goto -548 -> 263
    //   814: iconst_0
    //   815: istore 17
    //   817: goto -304 -> 513
    //   820: iconst_0
    //   821: istore 17
    //   823: goto -310 -> 513
    //   826: iconst_0
    //   827: istore 17
    //   829: goto -316 -> 513
    //   832: iconst_0
    //   833: istore 17
    //   835: goto -322 -> 513
    //
    // Exception table:
    //   from	to	target	type
    //   0	11	301	java/lang/Exception
    //   263	267	804	java/io/IOException
    //   195	213	809	java/lang/Exception
    //   228	263	809	java/lang/Exception
    //   305	335	809	java/lang/Exception
    //   340	365	809	java/lang/Exception
    //   368	431	809	java/lang/Exception
    //   434	458	809	java/lang/Exception
    //   458	497	809	java/lang/Exception
    //   500	505	809	java/lang/Exception
    //   518	526	809	java/lang/Exception
    //   529	540	809	java/lang/Exception
    //   546	568	809	java/lang/Exception
    //   568	579	809	java/lang/Exception
    //   582	604	809	java/lang/Exception
    //   604	615	809	java/lang/Exception
    //   618	632	809	java/lang/Exception
    //   638	659	809	java/lang/Exception
    //   665	684	809	java/lang/Exception
    //   684	697	809	java/lang/Exception
    //   700	719	809	java/lang/Exception
    //   725	744	809	java/lang/Exception
    //   744	755	809	java/lang/Exception
    //   758	777	809	java/lang/Exception
    //   777	784	809	java/lang/Exception
  }

  public static long gw(String paramString)
  {
    if (cj.hX(paramString));
    int j;
    int k;
    do
    {
      int i;
      do
      {
        return -1L;
        i = paramString.indexOf("wd_");
      }
      while (i < 0);
      j = i + 3;
      k = paramString.indexOf(".bin");
    }
    while ((k <= 0) || (j >= k));
    return cj.getLong(paramString.substring(j, k), -1L);
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    if (!be.uz().isSDCardAvailable())
      return -1;
    if ((this.cyJ == null) || (this.cyJ.size() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneNetStatReport", "doScene get queue failed");
      return -1;
    }
    while (this.cyJ.size() > 0)
    {
      File localFile = (File)this.cyJ.peek();
      boolean bool = a(localFile, (vw)this.cke.wr());
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneNetStatReport", "getReqFromFile:" + localFile.getName() + " succ:" + bool);
      if (bool)
        break;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneNetStatReport", "get req failed file:" + localFile.getPath());
      ((File)this.cyJ.poll()).delete();
    }
    if (this.cyJ.size() <= 0)
      return -1;
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneNetStatReport", "errType = " + paramInt2 + ", errCode = " + paramInt3);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneNetStatReport", "errType = " + paramInt2 + ", errCode = " + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    File localFile = (File)this.cyJ.poll();
    localFile.renameTo(new File(localFile.getAbsoluteFile() + ".send"));
    vx localvx = (vx)this.cke.ws();
    long l1 = localvx.fXp;
    int i = localvx.fXq;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneNetStatReport", "onGYEnetEnd nextTime:" + l1 + " flag:" + i);
    long l2;
    if (l1 <= 0L)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneNetStatReport", "ERROR Resp getNextReportTime :" + l1);
      l2 = 43200L;
    }
    while (true)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneNetStatReport", "onGYEnetEnd FIX: nextTime:" + l2 + " flag:" + i);
      i.b(l.czt + "wd.ini", "NextReportTime", l2 + cj.FC());
      i.d(l.czt + "wd.ini", "ReportFlag", i);
      if ((this.cyJ.size() > 0) && (this.cyH > 0))
      {
        this.ckr.bO(2000L);
        return;
        if ((l1 > 43200L) && (i != 1))
          l2 = 43200L;
      }
      else
      {
        WatchDogPushReceiver.Dh();
        this.cjh.a(paramInt2, paramInt3, paramString, this);
        return;
        l2 = l1;
      }
    }
  }

  protected final void a(z paramz)
  {
  }

  public final int getType()
  {
    return 250;
  }

  protected final int we()
  {
    return 5;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.d
 * JD-Core Version:    0.6.2
 */