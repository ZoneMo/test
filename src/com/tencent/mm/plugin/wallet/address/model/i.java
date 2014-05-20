package com.tencent.mm.plugin.wallet.address.model;

import com.tencent.mm.a.c;
import com.tencent.mm.a.f;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.wallet.protocal.a;
import com.tencent.mm.protocal.a.re;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;

public final class i
{
  private static final Pattern exD = Pattern.compile("(-|\\s)+");
  private final String bRt;
  private a eWc = new a();
  private final List eWd = new ArrayList();
  private final HashMap eWe = new HashMap();
  private final HashMap eWf = new HashMap();

  public i()
  {
    String str = be.uz().sX();
    pz(str);
    this.bRt = (str + "addrmgr");
    File localFile = new File(this.bRt);
    if (!localFile.exists())
      localFile.mkdir();
    byte[] arrayOfByte = decrypt(c.g(this.bRt, 0, -1), amZ());
    try
    {
      this.eWc = new a().aq(arrayOfByte);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private static boolean aD(String paramString1, String paramString2)
  {
    return paramString1.substring(6).startsWith(paramString2);
  }

  private byte[] amZ()
  {
    return f.h(("addrmgr" + this.bRt).toString().getBytes()).substring(8, 16).getBytes();
  }

  private static byte[] decrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      DESKeySpec localDESKeySpec = new DESKeySpec(paramArrayOfByte2);
      SecretKey localSecretKey = SecretKeyFactory.getInstance("DES").generateSecret(localDESKeySpec);
      Cipher localCipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
      localCipher.init(2, localSecretKey, new IvParameterSpec("12345678".getBytes()));
      byte[] arrayOfByte = localCipher.doFinal(paramArrayOfByte1);
      return arrayOfByte;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  private static byte[] encrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      DESKeySpec localDESKeySpec = new DESKeySpec(paramArrayOfByte2);
      SecretKey localSecretKey = SecretKeyFactory.getInstance("DES").generateSecret(localDESKeySpec);
      Cipher localCipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
      localCipher.init(1, localSecretKey, new IvParameterSpec("12345678".getBytes()));
      byte[] arrayOfByte = localCipher.doFinal(paramArrayOfByte1);
      return arrayOfByte;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  // ERROR //
  private void pz(String paramString)
  {
    // Byte code:
    //   0: ldc 176
    //   2: ldc 178
    //   4: invokestatic 184	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   7: aload_0
    //   8: getfield 42	com/tencent/mm/plugin/wallet/address/model/i:eWd	Ljava/util/List;
    //   11: invokeinterface 189 1 0
    //   16: aload_0
    //   17: getfield 47	com/tencent/mm/plugin/wallet/address/model/i:eWe	Ljava/util/HashMap;
    //   20: invokevirtual 190	java/util/HashMap:clear	()V
    //   23: aload_0
    //   24: getfield 49	com/tencent/mm/plugin/wallet/address/model/i:eWf	Ljava/util/HashMap;
    //   27: invokevirtual 190	java/util/HashMap:clear	()V
    //   30: invokestatic 196	com/tencent/mm/sdk/platformtools/al:getContext	()Landroid/content/Context;
    //   33: invokevirtual 202	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   36: astore_2
    //   37: new 39	java/util/ArrayList
    //   40: dup
    //   41: invokespecial 40	java/util/ArrayList:<init>	()V
    //   44: astore_3
    //   45: iconst_0
    //   46: istore 4
    //   48: new 204	java/io/FileReader
    //   51: dup
    //   52: new 67	java/lang/StringBuilder
    //   55: dup
    //   56: invokespecial 68	java/lang/StringBuilder:<init>	()V
    //   59: aload_1
    //   60: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: ldc 206
    //   65: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: invokespecial 207	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   74: astore 5
    //   76: new 209	java/io/BufferedReader
    //   79: dup
    //   80: aload 5
    //   82: invokespecial 212	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   85: astore 6
    //   87: aload_3
    //   88: invokeinterface 189 1 0
    //   93: aload 6
    //   95: invokevirtual 215	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   98: astore 47
    //   100: iconst_0
    //   101: istore 4
    //   103: aload 47
    //   105: ifnull +359 -> 464
    //   108: aload_3
    //   109: aload 47
    //   111: invokeinterface 219 2 0
    //   116: pop
    //   117: goto -24 -> 93
    //   120: astore 8
    //   122: iload 4
    //   124: istore 9
    //   126: iload 9
    //   128: ifne +82 -> 210
    //   131: aload_3
    //   132: invokeinterface 189 1 0
    //   137: aload_2
    //   138: ldc 206
    //   140: invokevirtual 225	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   143: astore 40
    //   145: new 209	java/io/BufferedReader
    //   148: dup
    //   149: new 227	java/io/InputStreamReader
    //   152: dup
    //   153: aload 40
    //   155: ldc 229
    //   157: invokespecial 232	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   160: invokespecial 212	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   163: astore 35
    //   165: aload 35
    //   167: invokevirtual 215	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   170: astore 43
    //   172: aload 43
    //   174: ifnull +315 -> 489
    //   177: aload_3
    //   178: aload 43
    //   180: invokeinterface 219 2 0
    //   185: pop
    //   186: goto -21 -> 165
    //   189: astore 42
    //   191: aload 40
    //   193: astore 36
    //   195: aload 35
    //   197: ifnull +8 -> 205
    //   200: aload 35
    //   202: invokevirtual 235	java/io/BufferedReader:close	()V
    //   205: aload 36
    //   207: ifnull +3 -> 210
    //   210: ldc 176
    //   212: new 67	java/lang/StringBuilder
    //   215: dup
    //   216: ldc 237
    //   218: invokespecial 121	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   221: iload 9
    //   223: invokevirtual 240	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   226: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   229: invokestatic 184	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   232: aload_3
    //   233: invokeinterface 244 1 0
    //   238: istore 10
    //   240: ldc 246
    //   242: astore 11
    //   244: ldc 246
    //   246: astore 12
    //   248: iconst_0
    //   249: istore 13
    //   251: iload 13
    //   253: iload 10
    //   255: if_icmpge +537 -> 792
    //   258: aload_3
    //   259: iload 13
    //   261: invokeinterface 250 2 0
    //   266: checkcast 112	java/lang/String
    //   269: astore 14
    //   271: iload 13
    //   273: iconst_1
    //   274: iadd
    //   275: iload 10
    //   277: if_icmpge +250 -> 527
    //   280: aload_3
    //   281: iload 13
    //   283: iconst_1
    //   284: iadd
    //   285: invokeinterface 250 2 0
    //   290: checkcast 112	java/lang/String
    //   293: astore 15
    //   295: aload 14
    //   297: ldc 252
    //   299: ldc 254
    //   301: invokevirtual 258	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   304: ldc_w 260
    //   307: ldc 254
    //   309: invokevirtual 258	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   312: astore 16
    //   314: aload 15
    //   316: ldc 252
    //   318: ldc 254
    //   320: invokevirtual 258	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   323: ldc_w 260
    //   326: ldc 254
    //   328: invokevirtual 258	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   331: astore 17
    //   333: aload 16
    //   335: iconst_0
    //   336: bipush 6
    //   338: invokevirtual 134	java/lang/String:substring	(II)Ljava/lang/String;
    //   341: astore 18
    //   343: aload 16
    //   345: bipush 6
    //   347: invokevirtual 116	java/lang/String:substring	(I)Ljava/lang/String;
    //   350: astore 19
    //   352: new 67	java/lang/StringBuilder
    //   355: dup
    //   356: ldc 254
    //   358: invokespecial 121	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   361: aload 19
    //   363: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   366: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   369: astore 20
    //   371: getstatic 27	com/tencent/mm/plugin/wallet/address/model/i:exD	Ljava/util/regex/Pattern;
    //   374: aload 20
    //   376: invokevirtual 264	java/util/regex/Pattern:split	(Ljava/lang/CharSequence;)[Ljava/lang/String;
    //   379: astore 21
    //   381: aload 21
    //   383: arraylength
    //   384: iconst_3
    //   385: if_icmpne +149 -> 534
    //   388: new 266	com/tencent/mm/plugin/wallet/address/model/RcptItem
    //   391: dup
    //   392: aload 21
    //   394: iconst_1
    //   395: aaload
    //   396: aload 18
    //   398: aload 21
    //   400: iconst_2
    //   401: aaload
    //   402: invokespecial 269	com/tencent/mm/plugin/wallet/address/model/RcptItem:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   405: astore 22
    //   407: aload 22
    //   409: ifnonnull +131 -> 540
    //   412: ldc 176
    //   414: new 67	java/lang/StringBuilder
    //   417: dup
    //   418: ldc_w 271
    //   421: invokespecial 121	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   424: aload 19
    //   426: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   429: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   432: invokestatic 274	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   435: aload 11
    //   437: astore 23
    //   439: aload 12
    //   441: astore 18
    //   443: iload 13
    //   445: iconst_1
    //   446: iadd
    //   447: istore 24
    //   449: aload 18
    //   451: astore 12
    //   453: iload 24
    //   455: istore 13
    //   457: aload 23
    //   459: astore 11
    //   461: goto -210 -> 251
    //   464: iconst_1
    //   465: istore 4
    //   467: aload 5
    //   469: invokevirtual 275	java/io/FileReader:close	()V
    //   472: aload 6
    //   474: invokevirtual 235	java/io/BufferedReader:close	()V
    //   477: iload 4
    //   479: istore 9
    //   481: goto -355 -> 126
    //   484: astore 7
    //   486: aload 7
    //   488: athrow
    //   489: aload 35
    //   491: invokevirtual 235	java/io/BufferedReader:close	()V
    //   494: aload 40
    //   496: invokevirtual 278	java/io/InputStream:close	()V
    //   499: aload 35
    //   501: invokevirtual 235	java/io/BufferedReader:close	()V
    //   504: aload 40
    //   506: ifnull -296 -> 210
    //   509: goto -299 -> 210
    //   512: astore 38
    //   514: aload 6
    //   516: ifnull +8 -> 524
    //   519: aload 6
    //   521: invokevirtual 235	java/io/BufferedReader:close	()V
    //   524: aload 38
    //   526: athrow
    //   527: ldc 246
    //   529: astore 15
    //   531: goto -236 -> 295
    //   534: aconst_null
    //   535: astore 22
    //   537: goto -130 -> 407
    //   540: aload 19
    //   542: ldc_w 280
    //   545: invokevirtual 120	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   548: ifeq +79 -> 627
    //   551: aload_0
    //   552: getfield 49	com/tencent/mm/plugin/wallet/address/model/i:eWf	Ljava/util/HashMap;
    //   555: aload 11
    //   557: invokevirtual 283	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   560: ifne +20 -> 580
    //   563: aload_0
    //   564: getfield 49	com/tencent/mm/plugin/wallet/address/model/i:eWf	Ljava/util/HashMap;
    //   567: aload 11
    //   569: new 39	java/util/ArrayList
    //   572: dup
    //   573: invokespecial 40	java/util/ArrayList:<init>	()V
    //   576: invokevirtual 287	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   579: pop
    //   580: aload_0
    //   581: getfield 49	com/tencent/mm/plugin/wallet/address/model/i:eWf	Ljava/util/HashMap;
    //   584: aload 11
    //   586: invokevirtual 290	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   589: checkcast 186	java/util/List
    //   592: astore 30
    //   594: aload 30
    //   596: aload 22
    //   598: invokeinterface 219 2 0
    //   603: pop
    //   604: aload_0
    //   605: getfield 49	com/tencent/mm/plugin/wallet/address/model/i:eWf	Ljava/util/HashMap;
    //   608: aload 11
    //   610: aload 30
    //   612: invokevirtual 287	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   615: pop
    //   616: aload 11
    //   618: astore 23
    //   620: aload 12
    //   622: astore 18
    //   624: goto -181 -> 443
    //   627: aload 19
    //   629: ldc_w 292
    //   632: invokevirtual 120	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   635: ifeq +96 -> 731
    //   638: aload_0
    //   639: getfield 47	com/tencent/mm/plugin/wallet/address/model/i:eWe	Ljava/util/HashMap;
    //   642: aload 12
    //   644: invokevirtual 283	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   647: ifne +20 -> 667
    //   650: aload_0
    //   651: getfield 47	com/tencent/mm/plugin/wallet/address/model/i:eWe	Ljava/util/HashMap;
    //   654: aload 12
    //   656: new 39	java/util/ArrayList
    //   659: dup
    //   660: invokespecial 40	java/util/ArrayList:<init>	()V
    //   663: invokevirtual 287	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   666: pop
    //   667: aload_0
    //   668: getfield 47	com/tencent/mm/plugin/wallet/address/model/i:eWe	Ljava/util/HashMap;
    //   671: aload 12
    //   673: invokevirtual 290	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   676: checkcast 186	java/util/List
    //   679: astore 26
    //   681: aload 17
    //   683: ldc_w 280
    //   686: invokestatic 294	com/tencent/mm/plugin/wallet/address/model/i:aD	(Ljava/lang/String;Ljava/lang/String;)Z
    //   689: ifeq +9 -> 698
    //   692: aload 22
    //   694: iconst_1
    //   695: putfield 298	com/tencent/mm/plugin/wallet/address/model/RcptItem:eWb	Z
    //   698: aload 26
    //   700: aload 22
    //   702: invokeinterface 219 2 0
    //   707: pop
    //   708: aload_0
    //   709: getfield 47	com/tencent/mm/plugin/wallet/address/model/i:eWe	Ljava/util/HashMap;
    //   712: aload 12
    //   714: aload 26
    //   716: invokevirtual 287	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   719: pop
    //   720: aload 18
    //   722: astore 23
    //   724: aload 12
    //   726: astore 18
    //   728: goto -285 -> 443
    //   731: aload 19
    //   733: ldc 254
    //   735: invokevirtual 120	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   738: ifeq +104 -> 842
    //   741: aload 17
    //   743: ldc_w 292
    //   746: invokestatic 294	com/tencent/mm/plugin/wallet/address/model/i:aD	(Ljava/lang/String;Ljava/lang/String;)Z
    //   749: ifeq +9 -> 758
    //   752: aload 22
    //   754: iconst_1
    //   755: putfield 298	com/tencent/mm/plugin/wallet/address/model/RcptItem:eWb	Z
    //   758: aload_0
    //   759: getfield 42	com/tencent/mm/plugin/wallet/address/model/i:eWd	Ljava/util/List;
    //   762: aload 22
    //   764: invokeinterface 219 2 0
    //   769: pop
    //   770: aload 11
    //   772: astore 23
    //   774: goto -331 -> 443
    //   777: astore 45
    //   779: goto -275 -> 504
    //   782: astore 37
    //   784: goto -579 -> 205
    //   787: astore 39
    //   789: goto -265 -> 524
    //   792: return
    //   793: astore 41
    //   795: aload 35
    //   797: astore 6
    //   799: aload 41
    //   801: astore 38
    //   803: goto -289 -> 514
    //   806: astore 34
    //   808: aload 6
    //   810: astore 35
    //   812: aconst_null
    //   813: astore 36
    //   815: goto -620 -> 195
    //   818: astore 46
    //   820: aload 6
    //   822: astore 35
    //   824: aload 40
    //   826: astore 36
    //   828: goto -633 -> 195
    //   831: astore 49
    //   833: iconst_0
    //   834: istore 4
    //   836: aconst_null
    //   837: astore 6
    //   839: goto -717 -> 122
    //   842: aload 11
    //   844: astore 23
    //   846: aload 12
    //   848: astore 18
    //   850: goto -407 -> 443
    //
    // Exception table:
    //   from	to	target	type
    //   87	93	120	java/io/IOException
    //   93	100	120	java/io/IOException
    //   108	117	120	java/io/IOException
    //   467	477	120	java/io/IOException
    //   165	172	189	java/io/IOException
    //   177	186	189	java/io/IOException
    //   489	499	189	java/io/IOException
    //   48	87	484	finally
    //   87	93	484	finally
    //   93	100	484	finally
    //   108	117	484	finally
    //   467	477	484	finally
    //   131	145	512	finally
    //   145	165	512	finally
    //   499	504	777	java/io/IOException
    //   200	205	782	java/io/IOException
    //   519	524	787	java/io/IOException
    //   165	172	793	finally
    //   177	186	793	finally
    //   489	499	793	finally
    //   131	145	806	java/io/IOException
    //   145	165	818	java/io/IOException
    //   48	87	831	java/io/IOException
  }

  public final boolean O(LinkedList paramLinkedList)
  {
    this.eWc.fcT.clear();
    Iterator localIterator = paramLinkedList.iterator();
    while (localIterator.hasNext())
    {
      re localre = (re)localIterator.next();
      com.tencent.mm.plugin.wallet.protocal.b localb = new com.tencent.mm.plugin.wallet.protocal.b();
      localb.id = localre.id;
      localb.fdc = localre.fTI.getString();
      localb.fcW = localre.fTC.getString();
      localb.fcZ = localre.fTF.getString();
      localb.fcX = localre.fTD.getString();
      localb.fda = localre.fTG.getString();
      localb.fdb = localre.fTH.getString();
      localb.fcV = localre.fTB.getString();
      localb.fcY = localre.fTE.getString();
      this.eWc.fcT.add(localb);
    }
    return true;
  }

  public final boolean a(com.tencent.mm.plugin.wallet.protocal.b paramb)
  {
    if (this.eWc == null)
      this.eWc = new a();
    for (int i = 0; ; i++)
    {
      int j = this.eWc.fcT.size();
      boolean bool = false;
      if (i < j)
      {
        if (((com.tencent.mm.plugin.wallet.protocal.b)this.eWc.fcT.get(i)).id == paramb.id)
        {
          this.eWc.fcT.remove(i);
          bool = true;
        }
      }
      else
        return bool;
    }
  }

  public final a amX()
  {
    return this.eWc;
  }

  public final void amY()
  {
    try
    {
      byte[] arrayOfByte1 = this.eWc.toByteArray();
      long l = System.currentTimeMillis();
      byte[] arrayOfByte2 = encrypt(arrayOfByte1, amZ());
      c.deleteFile(this.bRt);
      c.a(this.bRt, arrayOfByte2, arrayOfByte2.length);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(System.currentTimeMillis() - l);
      aa.e("MicroMsg.WalletAddrMgr", "hakon saveAddr time %s", arrayOfObject);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final List ana()
  {
    return this.eWd;
  }

  public final com.tencent.mm.plugin.wallet.protocal.b jz(int paramInt)
  {
    for (int i = 0; i < this.eWc.fcT.size(); i++)
    {
      com.tencent.mm.plugin.wallet.protocal.b localb = (com.tencent.mm.plugin.wallet.protocal.b)this.eWc.fcT.get(i);
      if (localb.id == paramInt)
        return localb;
    }
    return null;
  }

  public final List px(String paramString)
  {
    if (this.eWe.containsKey(paramString))
      return (List)this.eWe.get(paramString);
    return new ArrayList();
  }

  public final List py(String paramString)
  {
    if (this.eWf.containsKey(paramString))
      return (List)this.eWf.get(paramString);
    return new ArrayList();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.model.i
 * JD-Core Version:    0.6.2
 */