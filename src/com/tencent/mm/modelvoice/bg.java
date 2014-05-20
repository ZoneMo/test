package com.tencent.mm.modelvoice;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import junit.framework.Assert;

public final class bg
{
  // ERROR //
  public static boolean a(String paramString, int paramInt, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: iload_2
    //   3: ifeq +67 -> 70
    //   6: ldc 12
    //   8: new 14	java/lang/StringBuilder
    //   11: dup
    //   12: ldc 16
    //   14: invokespecial 20	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   17: aload_0
    //   18: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: invokevirtual 28	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   24: invokestatic 34	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   27: new 36	java/io/RandomAccessFile
    //   30: dup
    //   31: aload_0
    //   32: ldc 38
    //   34: invokespecial 40	java/io/RandomAccessFile:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   37: astore 4
    //   39: bipush 6
    //   41: newarray byte
    //   43: astore 10
    //   45: aload 4
    //   47: aload 10
    //   49: iconst_0
    //   50: bipush 6
    //   52: invokevirtual 44	java/io/RandomAccessFile:read	([BII)I
    //   55: istore 11
    //   57: iload 11
    //   59: iconst_m1
    //   60: if_icmpne +22 -> 82
    //   63: aload 4
    //   65: invokevirtual 48	java/io/RandomAccessFile:close	()V
    //   68: iconst_0
    //   69: ireturn
    //   70: iload_1
    //   71: ifne +169 -> 240
    //   74: aload_0
    //   75: invokestatic 54	com/tencent/mm/modelvoice/bi:fU	(Ljava/lang/String;)Ljava/lang/String;
    //   78: astore_0
    //   79: goto -73 -> 6
    //   82: new 56	java/lang/String
    //   85: dup
    //   86: aload 10
    //   88: invokespecial 59	java/lang/String:<init>	([B)V
    //   91: astore 12
    //   93: ldc 12
    //   95: new 14	java/lang/StringBuilder
    //   98: dup
    //   99: ldc 61
    //   101: invokespecial 20	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   104: aload 12
    //   106: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: ldc 63
    //   111: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: invokevirtual 28	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   117: invokestatic 34	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   120: aload 12
    //   122: ldc 65
    //   124: invokevirtual 69	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   127: istore 13
    //   129: iload 13
    //   131: ifeq +10 -> 141
    //   134: aload 4
    //   136: invokevirtual 48	java/io/RandomAccessFile:close	()V
    //   139: iconst_1
    //   140: ireturn
    //   141: aload 4
    //   143: invokevirtual 48	java/io/RandomAccessFile:close	()V
    //   146: iconst_0
    //   147: ireturn
    //   148: astore 18
    //   150: ldc 12
    //   152: ldc 71
    //   154: invokestatic 34	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   157: aload_3
    //   158: ifnull -12 -> 146
    //   161: aload_3
    //   162: invokevirtual 48	java/io/RandomAccessFile:close	()V
    //   165: goto -19 -> 146
    //   168: astore 9
    //   170: goto -24 -> 146
    //   173: astore 17
    //   175: aconst_null
    //   176: astore 4
    //   178: aload 17
    //   180: astore 7
    //   182: aload 4
    //   184: ifnull +8 -> 192
    //   187: aload 4
    //   189: invokevirtual 48	java/io/RandomAccessFile:close	()V
    //   192: aload 7
    //   194: athrow
    //   195: astore 16
    //   197: goto -129 -> 68
    //   200: astore 15
    //   202: goto -63 -> 139
    //   205: astore 14
    //   207: goto -61 -> 146
    //   210: astore 8
    //   212: goto -20 -> 192
    //   215: astore 7
    //   217: goto -35 -> 182
    //   220: astore 6
    //   222: aload_3
    //   223: astore 4
    //   225: aload 6
    //   227: astore 7
    //   229: goto -47 -> 182
    //   232: astore 5
    //   234: aload 4
    //   236: astore_3
    //   237: goto -87 -> 150
    //   240: aconst_null
    //   241: astore_0
    //   242: goto -236 -> 6
    //
    // Exception table:
    //   from	to	target	type
    //   27	39	148	java/lang/Exception
    //   161	165	168	java/io/IOException
    //   27	39	173	finally
    //   63	68	195	java/io/IOException
    //   134	139	200	java/io/IOException
    //   141	146	205	java/io/IOException
    //   187	192	210	java/io/IOException
    //   39	57	215	finally
    //   82	129	215	finally
    //   150	157	220	finally
    //   39	57	232	java/lang/Exception
    //   82	129	232	java/lang/Exception
  }

  public static int hb(String paramString)
  {
    int i;
    switch (hl(paramString))
    {
    default:
      i = hm(bi.fU(paramString));
      return i;
    case 0:
      return hm(bi.fU(paramString));
    case 1:
    }
    String str = bi.fU(paramString);
    if (str.length() >= 0);
    for (boolean bool1 = true; ; bool1 = false)
    {
      Assert.assertTrue(bool1);
      File localFile = new File(str);
      boolean bool2 = localFile.exists();
      i = 0;
      if (!bool2)
        break;
      int j = (int)localFile.length();
      i = 0;
      if (j <= 0)
        break;
      return j;
    }
  }

  public static int hl(String paramString)
  {
    int i;
    if (cj.hX(paramString))
      i = -1;
    boolean bool;
    do
    {
      return i;
      aa.d("MicroMsg.VoiceFile", "fileName " + paramString);
      bool = a(paramString, 0, false);
      i = 0;
    }
    while (bool);
    return 1;
  }

  private static int hm(String paramString)
  {
    boolean bool;
    File localFile;
    if (paramString.length() >= 0)
    {
      bool = true;
      Assert.assertTrue(bool);
      localFile = new File(paramString);
      if (localFile.exists())
        break label36;
    }
    label36: int i;
    do
    {
      return 0;
      bool = false;
      break;
      i = -6 + (int)localFile.length();
    }
    while (i <= 0);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.bg
 * JD-Core Version:    0.6.2
 */