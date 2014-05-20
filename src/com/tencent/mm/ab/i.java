package com.tencent.mm.ab;

import com.tencent.mm.a.c;
import com.tencent.mm.c.a.eo;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.n.z;
import com.tencent.mm.network.aj;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.ef;
import com.tencent.mm.protocal.a.eg;
import com.tencent.mm.protocal.a.pr;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.cj;

public final class i extends x
  implements com.tencent.mm.n.ab, com.tencent.mm.network.ab
{
  private int bRm;
  private m cjh;
  private com.tencent.mm.n.a cke;
  private int cvS;
  private int offset;

  public i(int paramInt1, int paramInt2)
  {
    this.cvS = paramInt1;
    this.bRm = paramInt2;
    this.offset = 0;
    k localk = r.BM().G(paramInt1, paramInt2);
    if (localk == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadPackage", "doScene get info null, id:" + paramInt1);
      return;
    }
    localk.setStatus(3);
    localk.cL(64);
    r.BM().b(localk);
    if (paramInt2 == 5)
    {
      String str = be.uz().sW();
      c.deleteFile(str + "brand_i18n.apk");
      return;
    }
    l locall = r.BM();
    c.deleteFile(locall.BJ() + l.I(paramInt1, paramInt2));
  }

  // ERROR //
  private boolean L(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 115	com/tencent/mm/sdk/platformtools/cj:hX	(Ljava/lang/String;)Z
    //   4: ifne +10 -> 14
    //   7: aload_2
    //   8: invokestatic 115	com/tencent/mm/sdk/platformtools/cj:hX	(Ljava/lang/String;)Z
    //   11: ifeq +63 -> 74
    //   14: ldc 41
    //   16: new 43	java/lang/StringBuilder
    //   19: dup
    //   20: ldc 117
    //   22: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   25: aload_1
    //   26: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: ldc 119
    //   31: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: aload_2
    //   35: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: invokestatic 62	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   44: invokestatic 33	com/tencent/mm/ab/r:BM	()Lcom/tencent/mm/ab/l;
    //   47: aload_0
    //   48: getfield 23	com/tencent/mm/ab/i:cvS	I
    //   51: aload_0
    //   52: getfield 25	com/tencent/mm/ab/i:bRm	I
    //   55: invokevirtual 121	com/tencent/mm/ab/l:L	(II)V
    //   58: aload_0
    //   59: getfield 123	com/tencent/mm/ab/i:cjh	Lcom/tencent/mm/n/m;
    //   62: iconst_3
    //   63: iconst_0
    //   64: ldc 125
    //   66: aload_0
    //   67: invokeinterface 131 5 0
    //   72: iconst_0
    //   73: ireturn
    //   74: new 133	java/io/File
    //   77: dup
    //   78: new 43	java/lang/StringBuilder
    //   81: dup
    //   82: invokespecial 87	java/lang/StringBuilder:<init>	()V
    //   85: aload_1
    //   86: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: aload_2
    //   90: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   96: invokespecial 134	java/io/File:<init>	(Ljava/lang/String;)V
    //   99: astore_3
    //   100: aload_3
    //   101: invokevirtual 138	java/io/File:exists	()Z
    //   104: ifne +63 -> 167
    //   107: ldc 41
    //   109: new 43	java/lang/StringBuilder
    //   112: dup
    //   113: ldc 140
    //   115: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   118: aload_1
    //   119: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: ldc 119
    //   124: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: aload_2
    //   128: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   134: invokestatic 62	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   137: invokestatic 33	com/tencent/mm/ab/r:BM	()Lcom/tencent/mm/ab/l;
    //   140: aload_0
    //   141: getfield 23	com/tencent/mm/ab/i:cvS	I
    //   144: aload_0
    //   145: getfield 25	com/tencent/mm/ab/i:bRm	I
    //   148: invokevirtual 121	com/tencent/mm/ab/l:L	(II)V
    //   151: aload_0
    //   152: getfield 123	com/tencent/mm/ab/i:cjh	Lcom/tencent/mm/n/m;
    //   155: iconst_3
    //   156: iconst_0
    //   157: ldc 142
    //   159: aload_0
    //   160: invokeinterface 131 5 0
    //   165: iconst_0
    //   166: ireturn
    //   167: new 144	java/util/HashMap
    //   170: dup
    //   171: invokespecial 145	java/util/HashMap:<init>	()V
    //   174: astore 4
    //   176: new 147	java/io/FileInputStream
    //   179: dup
    //   180: aload_3
    //   181: invokespecial 150	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   184: astore 5
    //   186: new 152	java/io/InputStreamReader
    //   189: dup
    //   190: aload 5
    //   192: ldc 154
    //   194: invokespecial 157	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   197: astore 6
    //   199: new 159	java/io/BufferedReader
    //   202: dup
    //   203: aload 6
    //   205: invokespecial 162	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   208: astore 7
    //   210: aload 7
    //   212: invokevirtual 165	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   215: astore 19
    //   217: aload 19
    //   219: ifnull +404 -> 623
    //   222: aload 19
    //   224: invokevirtual 170	java/lang/String:trim	()Ljava/lang/String;
    //   227: ldc 172
    //   229: invokevirtual 176	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   232: astore 20
    //   234: aload 20
    //   236: arraylength
    //   237: iconst_2
    //   238: if_icmplt +23 -> 261
    //   241: aload 20
    //   243: iconst_0
    //   244: aaload
    //   245: invokestatic 115	com/tencent/mm/sdk/platformtools/cj:hX	(Ljava/lang/String;)Z
    //   248: ifne +13 -> 261
    //   251: aload 20
    //   253: iconst_1
    //   254: aaload
    //   255: invokestatic 115	com/tencent/mm/sdk/platformtools/cj:hX	(Ljava/lang/String;)Z
    //   258: ifeq +128 -> 386
    //   261: ldc 41
    //   263: new 43	java/lang/StringBuilder
    //   266: dup
    //   267: ldc 178
    //   269: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   272: aload 19
    //   274: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   277: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   280: invokestatic 62	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   283: goto -73 -> 210
    //   286: astore 13
    //   288: aload 5
    //   290: astore 14
    //   292: invokestatic 33	com/tencent/mm/ab/r:BM	()Lcom/tencent/mm/ab/l;
    //   295: aload_0
    //   296: getfield 23	com/tencent/mm/ab/i:cvS	I
    //   299: aload_0
    //   300: getfield 25	com/tencent/mm/ab/i:bRm	I
    //   303: invokevirtual 121	com/tencent/mm/ab/l:L	(II)V
    //   306: aload_0
    //   307: getfield 123	com/tencent/mm/ab/i:cjh	Lcom/tencent/mm/n/m;
    //   310: iconst_3
    //   311: iconst_0
    //   312: aload 13
    //   314: invokevirtual 181	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   317: aload_0
    //   318: invokeinterface 131 5 0
    //   323: aload 14
    //   325: ifnull +8 -> 333
    //   328: aload 14
    //   330: invokevirtual 186	java/io/InputStream:close	()V
    //   333: aload 4
    //   335: invokeinterface 192 1 0
    //   340: invokeinterface 198 1 0
    //   345: astore 17
    //   347: aload 17
    //   349: invokeinterface 203 1 0
    //   354: ifeq +30 -> 384
    //   357: aload 17
    //   359: invokeinterface 207 1 0
    //   364: checkcast 209	java/io/BufferedWriter
    //   367: astore 18
    //   369: aload 18
    //   371: ifnull -24 -> 347
    //   374: aload 18
    //   376: invokevirtual 210	java/io/BufferedWriter:close	()V
    //   379: goto -32 -> 347
    //   382: astore 16
    //   384: iconst_0
    //   385: ireturn
    //   386: aload 4
    //   388: aload 20
    //   390: iconst_0
    //   391: aaload
    //   392: invokeinterface 214 2 0
    //   397: checkcast 209	java/io/BufferedWriter
    //   400: astore 21
    //   402: aload 21
    //   404: ifnonnull +161 -> 565
    //   407: invokestatic 220	com/tencent/mm/storage/RegionCodeDecoder:aDe	()Lcom/tencent/mm/storage/RegionCodeDecoder;
    //   410: pop
    //   411: aload 20
    //   413: iconst_0
    //   414: aaload
    //   415: invokestatic 224	com/tencent/mm/storage/RegionCodeDecoder:vv	(Ljava/lang/String;)Ljava/lang/String;
    //   418: astore 23
    //   420: aload 23
    //   422: invokestatic 115	com/tencent/mm/sdk/platformtools/cj:hX	(Ljava/lang/String;)Z
    //   425: ifeq +83 -> 508
    //   428: ldc 41
    //   430: ldc 226
    //   432: invokestatic 62	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   435: goto -225 -> 210
    //   438: astore 8
    //   440: aload 8
    //   442: astore 9
    //   444: aload 5
    //   446: ifnull +8 -> 454
    //   449: aload 5
    //   451: invokevirtual 186	java/io/InputStream:close	()V
    //   454: aload 4
    //   456: invokeinterface 192 1 0
    //   461: invokeinterface 198 1 0
    //   466: astore 11
    //   468: aload 11
    //   470: invokeinterface 203 1 0
    //   475: ifeq +30 -> 505
    //   478: aload 11
    //   480: invokeinterface 207 1 0
    //   485: checkcast 209	java/io/BufferedWriter
    //   488: astore 12
    //   490: aload 12
    //   492: ifnull -24 -> 468
    //   495: aload 12
    //   497: invokevirtual 210	java/io/BufferedWriter:close	()V
    //   500: goto -32 -> 468
    //   503: astore 10
    //   505: aload 9
    //   507: athrow
    //   508: new 133	java/io/File
    //   511: dup
    //   512: aload 23
    //   514: invokespecial 134	java/io/File:<init>	(Ljava/lang/String;)V
    //   517: astore 24
    //   519: aload 24
    //   521: invokevirtual 138	java/io/File:exists	()Z
    //   524: ifne +9 -> 533
    //   527: aload 24
    //   529: invokevirtual 229	java/io/File:createNewFile	()Z
    //   532: pop
    //   533: new 209	java/io/BufferedWriter
    //   536: dup
    //   537: new 231	java/io/FileWriter
    //   540: dup
    //   541: aload 24
    //   543: invokespecial 232	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   546: invokespecial 235	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   549: astore 21
    //   551: aload 4
    //   553: aload 20
    //   555: iconst_0
    //   556: aaload
    //   557: aload 21
    //   559: invokeinterface 239 3 0
    //   564: pop
    //   565: new 241	java/lang/StringBuffer
    //   568: dup
    //   569: invokespecial 242	java/lang/StringBuffer:<init>	()V
    //   572: astore 26
    //   574: aload 26
    //   576: aload 20
    //   578: iconst_1
    //   579: aaload
    //   580: invokevirtual 245	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   583: pop
    //   584: aload 26
    //   586: bipush 124
    //   588: invokevirtual 248	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   591: pop
    //   592: aload 26
    //   594: aload 20
    //   596: iconst_2
    //   597: aaload
    //   598: invokevirtual 245	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   601: pop
    //   602: aload 26
    //   604: bipush 10
    //   606: invokevirtual 248	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   609: pop
    //   610: aload 21
    //   612: aload 26
    //   614: invokevirtual 249	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   617: invokevirtual 252	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   620: goto -410 -> 210
    //   623: aload 7
    //   625: invokevirtual 253	java/io/BufferedReader:close	()V
    //   628: aload 6
    //   630: invokevirtual 254	java/io/InputStreamReader:close	()V
    //   633: aload_3
    //   634: invokevirtual 257	java/io/File:delete	()Z
    //   637: pop
    //   638: aload 5
    //   640: invokevirtual 186	java/io/InputStream:close	()V
    //   643: aload 4
    //   645: invokeinterface 192 1 0
    //   650: invokeinterface 198 1 0
    //   655: astore 34
    //   657: aload 34
    //   659: invokeinterface 203 1 0
    //   664: ifeq +30 -> 694
    //   667: aload 34
    //   669: invokeinterface 207 1 0
    //   674: checkcast 209	java/io/BufferedWriter
    //   677: astore 35
    //   679: aload 35
    //   681: ifnull -24 -> 657
    //   684: aload 35
    //   686: invokevirtual 210	java/io/BufferedWriter:close	()V
    //   689: goto -32 -> 657
    //   692: astore 33
    //   694: iconst_1
    //   695: ireturn
    //   696: astore 36
    //   698: aload 36
    //   700: astore 9
    //   702: aconst_null
    //   703: astore 5
    //   705: goto -261 -> 444
    //   708: astore 15
    //   710: aload 15
    //   712: astore 9
    //   714: aload 14
    //   716: astore 5
    //   718: goto -274 -> 444
    //   721: astore 13
    //   723: aconst_null
    //   724: astore 14
    //   726: goto -434 -> 292
    //
    // Exception table:
    //   from	to	target	type
    //   186	210	286	java/lang/Exception
    //   210	217	286	java/lang/Exception
    //   222	261	286	java/lang/Exception
    //   261	283	286	java/lang/Exception
    //   386	402	286	java/lang/Exception
    //   407	435	286	java/lang/Exception
    //   508	533	286	java/lang/Exception
    //   533	565	286	java/lang/Exception
    //   565	620	286	java/lang/Exception
    //   623	638	286	java/lang/Exception
    //   328	333	382	java/io/IOException
    //   333	347	382	java/io/IOException
    //   347	369	382	java/io/IOException
    //   374	379	382	java/io/IOException
    //   186	210	438	finally
    //   210	217	438	finally
    //   222	261	438	finally
    //   261	283	438	finally
    //   386	402	438	finally
    //   407	435	438	finally
    //   508	533	438	finally
    //   533	565	438	finally
    //   565	620	438	finally
    //   623	638	438	finally
    //   449	454	503	java/io/IOException
    //   454	468	503	java/io/IOException
    //   468	490	503	java/io/IOException
    //   495	500	503	java/io/IOException
    //   638	657	692	java/io/IOException
    //   657	679	692	java/io/IOException
    //   684	689	692	java/io/IOException
    //   176	186	696	finally
    //   292	323	708	finally
    //   176	186	721	java/lang/Exception
  }

  public final int BG()
  {
    return this.cvS;
  }

  public final int a(com.tencent.mm.network.r paramr, m paramm)
  {
    this.cjh = paramm;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.cvS);
    arrayOfObject[1] = Integer.valueOf(this.bRm);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadPackage", "dkregcode doScene pkgId:%d packageType:%d", arrayOfObject);
    k localk = r.BM().G(this.cvS, this.bRm);
    if (localk == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadPackage", "doScene get Theme failed id:" + this.cvS + " type:" + this.bRm);
      return -1;
    }
    if (localk.getStatus() != 3)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadPackage", "doScene get Theme stat failed id:" + this.cvS + " stat:" + localk.getStatus());
      return -1;
    }
    if (localk.getSize() <= 0)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadPackage", "doScene Theme size err id:" + this.cvS + " size:" + localk.getSize());
      return -1;
    }
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new ef());
    localb.b(new eg());
    localb.es("/cgi-bin/micromsg-bin/downloadpackage");
    localb.cN(160);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    ef localef = (ef)this.cke.wr();
    pr localpr = new pr();
    localpr.fGp = localk.getId();
    localpr.fFT = localk.getVersion();
    localef.fEX = localpr;
    localef.fAE = this.offset;
    localef.fEY = 65536;
    localef.dGR = this.bRm;
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    ef localef = (ef)((com.tencent.mm.n.a)paramaj).wr();
    k localk = r.BM().G(this.cvS, this.bRm);
    if (localk == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadPackage", "securityVerificationChecked get Theme failed id:" + this.cvS);
      return com.tencent.mm.n.aa.cmi;
    }
    if ((localef.fEX.fGp != this.cvS) || (localef.fAE != this.offset) || (localef.fAE >= localk.getSize()) || (localef.fEY != 65536) || (localk.getSize() <= 0) || (localk.getStatus() != 3))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadPackage", "securityVerificationChecked Theme failed id:" + this.cvS);
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneDownloadPackage", "onGYNetEnd id:" + this.cvS + " + id:" + paramInt1 + " errtype:" + paramInt2 + " errCode:" + paramInt3);
    if ((paramInt2 != 0) && (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadPackage", "onGYNetEnd, errType = " + paramInt2 + ", errCode = " + paramInt3);
      r.BM().L(this.cvS, this.bRm);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
    }
    label900: 
    do
    {
      return;
      eg localeg = (eg)((com.tencent.mm.n.a)paramaj).ws();
      if (localeg.dGR != this.bRm)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadPackage", "packageType is not consistent");
        r.BM().L(this.cvS, this.bRm);
        this.cjh.a(3, -1, "", this);
        return;
      }
      byte[] arrayOfByte = an.a(localeg.fEZ);
      if ((arrayOfByte == null) || (arrayOfByte.length == 0))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadPackage", "onGYNetEnd get pkgBuf failed id:" + this.cvS);
        r.BM().L(this.cvS, this.bRm);
        this.cjh.a(3, -1, paramString, this);
        return;
      }
      k localk = r.BM().G(this.cvS, this.bRm);
      if (localk == null)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadPackage", "onGYNetEnd info is null, pkgId = " + this.cvS);
        r.BM().L(this.cvS, this.bRm);
        this.cjh.a(3, -1, paramString, this);
        return;
      }
      if (localk.getSize() != localeg.fFa)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadPackage", "onGYNetEnd totalSize is incorrect");
        r.BM().L(this.cvS, this.bRm);
        j localj = new j(this.bRm);
        be.uA().d(localj);
        this.cjh.a(3, -1, paramString, this);
        return;
      }
      String str1;
      if (this.bRm == 5)
        str1 = be.uz().sW();
      for (String str2 = "brand_i18n.apk"; ; str2 = l.I(this.cvS, this.bRm))
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneDownloadPackage", "packagePath " + str1);
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneDownloadPackage", "packageName " + str2);
        int i = c.b(str1, str2, arrayOfByte);
        if (i == 0)
          break;
        r.BM().L(this.cvS, this.bRm);
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadPackage", "onGYNetEnd write file fail, ret = " + i);
        this.cjh.a(3, -1, paramString, this);
        return;
        str1 = r.BM().BJ();
        r.BM();
      }
      this.offset += arrayOfByte.length;
      if (this.offset >= localk.getSize())
      {
        int j = this.bRm;
        boolean bool = false;
        if (j == 1)
        {
          String str3 = r.BM().J(this.cvS, this.bRm);
          int k = cj.aP(str1 + str2, str3);
          if (k >= 0)
            break label900;
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneDownloadPackage", "unzip fail, ret = " + k + ", zipFilePath = " + str1 + str2 + ", unzipPath = " + str3);
          r.BM().L(this.cvS, this.bRm);
          this.cjh.a(3, 0, "unzip fail", this);
        }
        for (bool = false; ; bool = true)
        {
          if (this.bRm == 8)
            bool = L(str1, str2);
          if (this.bRm == 7)
            bool = true;
          if (this.bRm == 9)
            bool = true;
          if (this.bRm == 5)
          {
            bool = true;
            com.tencent.mm.p.ab.yj();
          }
          if (this.bRm == 12)
          {
            eo localeo = new eo();
            localeo.bPp.bPr = (str1 + str2);
            com.tencent.mm.sdk.b.a.ayH().f(localeo);
            bool = true;
          }
          if (!bool)
            break;
          localk.setStatus(2);
          localk.cL(64);
          r.BM().b(localk);
          this.cjh.a(0, 0, "", this);
          return;
        }
      }
    }
    while (a(wM(), this.cjh) >= 0);
    r.BM().L(this.cvS, this.bRm);
    this.cjh.a(3, -1, paramString, this);
  }

  protected final void a(z paramz)
  {
    r.BM().L(this.cvS, this.bRm);
  }

  public final int getType()
  {
    return 160;
  }

  public final int wQ()
  {
    return this.bRm;
  }

  protected final int we()
  {
    return 50;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ab.i
 * JD-Core Version:    0.6.2
 */