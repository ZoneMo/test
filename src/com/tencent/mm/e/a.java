package com.tencent.mm.e;

import android.util.SparseArray;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.h;
import java.io.File;

public final class a
{
  public static final String cfK = h.cfC + "configlist/";
  private SparseArray cfJ = new SparseArray();

  // ERROR //
  private boolean a(File paramFile1, File paramFile2)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 50	java/io/File:exists	()Z
    //   4: istore_3
    //   5: iconst_0
    //   6: istore 4
    //   8: iload_3
    //   9: ifeq +90 -> 99
    //   12: aload_1
    //   13: invokevirtual 53	java/io/File:isDirectory	()Z
    //   16: ifeq +86 -> 102
    //   19: aload_2
    //   20: invokevirtual 50	java/io/File:exists	()Z
    //   23: ifne +8 -> 31
    //   26: aload_2
    //   27: invokevirtual 56	java/io/File:mkdir	()Z
    //   30: pop
    //   31: aload_1
    //   32: invokevirtual 60	java/io/File:listFiles	()[Ljava/io/File;
    //   35: astore 21
    //   37: iconst_0
    //   38: istore 22
    //   40: iload 4
    //   42: aload 21
    //   44: arraylength
    //   45: if_icmpge +50 -> 95
    //   48: aload 21
    //   50: iload 4
    //   52: aaload
    //   53: astore 23
    //   55: aload_0
    //   56: aload 23
    //   58: new 46	java/io/File
    //   61: dup
    //   62: aload_2
    //   63: invokevirtual 63	java/io/File:getPath	()Ljava/lang/String;
    //   66: aload 23
    //   68: invokevirtual 66	java/io/File:getName	()Ljava/lang/String;
    //   71: invokespecial 69	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   74: invokespecial 71	com/tencent/mm/e/a:a	(Ljava/io/File;Ljava/io/File;)Z
    //   77: istore 22
    //   79: iload 22
    //   81: ifeq +8 -> 89
    //   84: aload_1
    //   85: invokevirtual 74	java/io/File:delete	()Z
    //   88: pop
    //   89: iinc 4 1
    //   92: goto -52 -> 40
    //   95: iload 22
    //   97: istore 4
    //   99: iload 4
    //   101: ireturn
    //   102: new 76	java/io/FileInputStream
    //   105: dup
    //   106: aload_1
    //   107: invokespecial 79	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   110: astore 5
    //   112: new 81	java/io/FileOutputStream
    //   115: dup
    //   116: aload_2
    //   117: invokespecial 82	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   120: astore 6
    //   122: sipush 1024
    //   125: newarray byte
    //   127: astore 14
    //   129: aload 5
    //   131: aload 14
    //   133: invokevirtual 88	java/io/InputStream:read	([B)I
    //   136: istore 15
    //   138: iload 15
    //   140: iconst_m1
    //   141: if_icmpeq +51 -> 192
    //   144: aload 6
    //   146: aload 14
    //   148: iconst_0
    //   149: iload 15
    //   151: invokevirtual 94	java/io/OutputStream:write	([BII)V
    //   154: goto -25 -> 129
    //   157: astore 10
    //   159: aload 5
    //   161: astore 11
    //   163: aload 11
    //   165: ifnull +8 -> 173
    //   168: aload 11
    //   170: invokevirtual 97	java/io/InputStream:close	()V
    //   173: iconst_0
    //   174: istore 4
    //   176: aload 6
    //   178: ifnull -79 -> 99
    //   181: aload 6
    //   183: invokevirtual 98	java/io/OutputStream:close	()V
    //   186: iconst_0
    //   187: ireturn
    //   188: astore 12
    //   190: iconst_0
    //   191: ireturn
    //   192: aload 6
    //   194: invokevirtual 101	java/io/OutputStream:flush	()V
    //   197: aload_1
    //   198: invokevirtual 74	java/io/File:delete	()Z
    //   201: pop
    //   202: aload 5
    //   204: invokevirtual 97	java/io/InputStream:close	()V
    //   207: aload 6
    //   209: invokevirtual 98	java/io/OutputStream:close	()V
    //   212: iconst_1
    //   213: ireturn
    //   214: astore 7
    //   216: aconst_null
    //   217: astore 6
    //   219: aconst_null
    //   220: astore 5
    //   222: aload 5
    //   224: ifnull +8 -> 232
    //   227: aload 5
    //   229: invokevirtual 97	java/io/InputStream:close	()V
    //   232: aload 6
    //   234: ifnull +8 -> 242
    //   237: aload 6
    //   239: invokevirtual 98	java/io/OutputStream:close	()V
    //   242: aload 7
    //   244: athrow
    //   245: astore 17
    //   247: goto -40 -> 207
    //   250: astore 18
    //   252: goto -40 -> 212
    //   255: astore 13
    //   257: goto -84 -> 173
    //   260: astore 9
    //   262: goto -30 -> 232
    //   265: astore 8
    //   267: goto -25 -> 242
    //   270: astore 7
    //   272: aconst_null
    //   273: astore 6
    //   275: goto -53 -> 222
    //   278: astore 7
    //   280: goto -58 -> 222
    //   283: astore 20
    //   285: aconst_null
    //   286: astore 6
    //   288: aconst_null
    //   289: astore 11
    //   291: goto -128 -> 163
    //   294: astore 19
    //   296: aload 5
    //   298: astore 11
    //   300: aconst_null
    //   301: astore 6
    //   303: goto -140 -> 163
    //
    // Exception table:
    //   from	to	target	type
    //   122	129	157	java/lang/Exception
    //   129	138	157	java/lang/Exception
    //   144	154	157	java/lang/Exception
    //   192	202	157	java/lang/Exception
    //   181	186	188	java/io/IOException
    //   102	112	214	finally
    //   202	207	245	java/io/IOException
    //   207	212	250	java/io/IOException
    //   168	173	255	java/io/IOException
    //   227	232	260	java/io/IOException
    //   237	242	265	java/io/IOException
    //   112	122	270	finally
    //   122	129	278	finally
    //   129	138	278	finally
    //   144	154	278	finally
    //   192	202	278	finally
    //   102	112	283	java/lang/Exception
    //   112	122	294	java/lang/Exception
  }

  private static String bI(int paramInt)
  {
    return cfK + "config_" + paramInt + ".xml";
  }

  private void d(int paramInt, String paramString)
  {
    b localb = new b(paramInt);
    localb.bn(paramString);
    this.cfJ.put(Integer.valueOf(paramInt).intValue(), localb);
  }

  // ERROR //
  private void load(int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 46	java/io/File
    //   5: dup
    //   6: iload_1
    //   7: invokestatic 138	com/tencent/mm/e/a:bI	(I)Ljava/lang/String;
    //   10: invokespecial 140	java/io/File:<init>	(Ljava/lang/String;)V
    //   13: astore_3
    //   14: aload_3
    //   15: invokevirtual 50	java/io/File:exists	()Z
    //   18: ifeq +157 -> 175
    //   21: new 76	java/io/FileInputStream
    //   24: dup
    //   25: aload_3
    //   26: invokespecial 79	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   29: astore 5
    //   31: new 142	java/io/InputStreamReader
    //   34: dup
    //   35: aload 5
    //   37: ldc 144
    //   39: invokespecial 147	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   42: astore 9
    //   44: new 149	java/io/BufferedReader
    //   47: dup
    //   48: aload 9
    //   50: invokespecial 152	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   53: astore 10
    //   55: new 154	java/lang/StringBuffer
    //   58: dup
    //   59: invokespecial 155	java/lang/StringBuffer:<init>	()V
    //   62: astore 11
    //   64: aload 10
    //   66: invokevirtual 158	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   69: astore 14
    //   71: aload 14
    //   73: ifnull +27 -> 100
    //   76: aload 11
    //   78: aload 14
    //   80: invokevirtual 161	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   83: pop
    //   84: goto -20 -> 64
    //   87: astore 13
    //   89: aload 5
    //   91: ifnull +8 -> 99
    //   94: aload 5
    //   96: invokevirtual 97	java/io/InputStream:close	()V
    //   99: return
    //   100: aload_0
    //   101: iload_1
    //   102: aload 11
    //   104: invokevirtual 162	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   107: invokespecial 164	com/tencent/mm/e/a:d	(ILjava/lang/String;)V
    //   110: aload 9
    //   112: invokevirtual 165	java/io/InputStreamReader:close	()V
    //   115: aload 10
    //   117: invokevirtual 166	java/io/BufferedReader:close	()V
    //   120: aload 5
    //   122: ifnull -23 -> 99
    //   125: aload 5
    //   127: invokevirtual 97	java/io/InputStream:close	()V
    //   130: return
    //   131: astore 16
    //   133: return
    //   134: astore 7
    //   136: aload_2
    //   137: ifnull +7 -> 144
    //   140: aload_2
    //   141: invokevirtual 97	java/io/InputStream:close	()V
    //   144: aload 7
    //   146: athrow
    //   147: astore 6
    //   149: return
    //   150: astore 8
    //   152: goto -8 -> 144
    //   155: astore 12
    //   157: aload 5
    //   159: astore_2
    //   160: aload 12
    //   162: astore 7
    //   164: goto -28 -> 136
    //   167: astore 4
    //   169: aconst_null
    //   170: astore 5
    //   172: goto -83 -> 89
    //   175: aconst_null
    //   176: astore 5
    //   178: goto -58 -> 120
    //
    // Exception table:
    //   from	to	target	type
    //   31	64	87	java/lang/Exception
    //   64	71	87	java/lang/Exception
    //   76	84	87	java/lang/Exception
    //   100	120	87	java/lang/Exception
    //   125	130	131	java/io/IOException
    //   2	31	134	finally
    //   94	99	147	java/io/IOException
    //   140	144	150	java/io/IOException
    //   31	64	155	finally
    //   64	71	155	finally
    //   76	84	155	finally
    //   100	120	155	finally
    //   2	31	167	java/lang/Exception
  }

  private String n(String paramString1, String paramString2)
  {
    if (this.cfJ.get(1) == null)
      load(1);
    b localb = (b)this.cfJ.get(1);
    if (localb == null)
      return null;
    return localb.o(paramString1, paramString2);
  }

  public static boolean qn()
  {
    return qo() == 0;
  }

  public static int qo()
  {
    String str = d.qA().getValue("VoiceVOIPSwitch");
    aa.d("MicroMsg.ConfigListDecoder", "voip is " + str);
    try
    {
      int j = cj.getInt(str, 0);
      i = j;
      aa.d("MicroMsg.ConfigListDecoder", "showVoiceVoipEntrance is " + i);
      return i;
    }
    catch (Exception localException)
    {
      while (true)
        int i = 0;
    }
  }

  public static boolean qr()
  {
    return false;
  }

  public final void b(int paramInt, byte[] paramArrayOfByte)
  {
    File localFile1 = new File(cfK);
    if (!localFile1.exists())
      localFile1.mkdir();
    try
    {
      File localFile2 = new File(bI(paramInt));
      if (!localFile2.exists())
        localFile2.createNewFile();
      com.tencent.mm.a.c.a(bI(paramInt), paramArrayOfByte, paramArrayOfByte.length);
      d(paramInt, new String(paramArrayOfByte));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final void init()
  {
    for (int i = 0; i < b.cfL.length; i++)
      load(b.cfL[i]);
  }

  public final boolean qj()
  {
    File localFile1 = new File(h.cfE + "configlist/");
    if (!localFile1.exists());
    File localFile2;
    do
    {
      return true;
      localFile2 = new File(cfK);
    }
    while (localFile2.exists());
    aa.d("MicroMsg.ConfigListDecoder", "bugfix");
    return a(localFile1, localFile2);
  }

  public final void qk()
  {
    this.cfJ.clear();
  }

  public final int ql()
  {
    String str1 = cj.azS();
    if (cj.hX(str1));
    String str2;
    do
    {
      return -1;
      str2 = n("VoipInviteTimeLimit", str1);
    }
    while (cj.hX(str2));
    try
    {
      int i = Integer.parseInt(str2);
      return i;
    }
    catch (Exception localException)
    {
    }
    return -1;
  }

  public final String qm()
  {
    return n("HideWechatID", "idprefix");
  }

  public final int qp()
  {
    return cj.getInt(n("BrandService", "continueLocationReportInterval"), 5);
  }

  public final int qq()
  {
    return cj.getInt(n("QQBroswer", "RecommendCount"), 5);
  }

  public final boolean qs()
  {
    int i = cj.getInt(n("ShowConfig", "hideaddfriend"), 0);
    boolean bool = false;
    if (i == 0)
      bool = true;
    return bool;
  }

  public final boolean qt()
  {
    int i = 1;
    if (cj.getInt(n("ShowConfig", "hidePoiOversea"), i) == i);
    while (true)
    {
      aa.d("MicroMsg.ConfigListDecoder", "isHidePoiOversea : " + i);
      return i;
      int j = 0;
    }
  }

  public final String[] qu()
  {
    String str = n("WebViewConfig", "removeJavascriptInterface");
    if (cj.hX(str))
      return null;
    return str.split(";");
  }

  public final boolean qv()
  {
    int i = 1;
    if (cj.getInt(n("ShowConfig", "showShakeTV"), 0) == i);
    while (true)
    {
      aa.d("MicroMsg.ConfigListDecoder", "isShowShakeTV : " + i);
      return i;
      int j = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.e.a
 * JD-Core Version:    0.6.2
 */