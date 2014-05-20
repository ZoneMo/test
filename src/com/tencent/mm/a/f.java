package com.tencent.mm.a;

import java.io.File;
import java.io.InputStream;
import java.security.MessageDigest;

public final class f
{
  // ERROR //
  public static String a(File paramFile, int paramInt, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +14 -> 15
    //   4: aload_0
    //   5: invokevirtual 16	java/io/File:exists	()Z
    //   8: ifeq +7 -> 15
    //   11: iload_1
    //   12: ifgt +5 -> 17
    //   15: aconst_null
    //   16: areturn
    //   17: new 18	java/io/FileInputStream
    //   20: dup
    //   21: aload_0
    //   22: invokespecial 22	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   25: astore_3
    //   26: aload_3
    //   27: iload_1
    //   28: aload_2
    //   29: invokestatic 25	com/tencent/mm/a/f:a	(Ljava/io/InputStream;I[B)Ljava/lang/String;
    //   32: astore 9
    //   34: aload_3
    //   35: invokevirtual 29	java/io/FileInputStream:close	()V
    //   38: aload_3
    //   39: invokevirtual 29	java/io/FileInputStream:close	()V
    //   42: aload 9
    //   44: areturn
    //   45: astore 10
    //   47: aload 9
    //   49: areturn
    //   50: astore 11
    //   52: aconst_null
    //   53: astore 5
    //   55: aload 5
    //   57: ifnull +8 -> 65
    //   60: aload 5
    //   62: invokevirtual 29	java/io/FileInputStream:close	()V
    //   65: aconst_null
    //   66: areturn
    //   67: astore 7
    //   69: aconst_null
    //   70: astore_3
    //   71: aload_3
    //   72: ifnull +7 -> 79
    //   75: aload_3
    //   76: invokevirtual 29	java/io/FileInputStream:close	()V
    //   79: aload 7
    //   81: athrow
    //   82: astore 6
    //   84: goto -19 -> 65
    //   87: astore 8
    //   89: goto -10 -> 79
    //   92: astore 7
    //   94: goto -23 -> 71
    //   97: astore 4
    //   99: aload_3
    //   100: astore 5
    //   102: goto -47 -> 55
    //
    // Exception table:
    //   from	to	target	type
    //   38	42	45	java/io/IOException
    //   17	26	50	java/lang/Exception
    //   17	26	67	finally
    //   60	65	82	java/io/IOException
    //   75	79	87	java/io/IOException
    //   26	38	92	finally
    //   26	38	97	java/lang/Exception
  }

  private static String a(InputStream paramInputStream, int paramInt)
  {
    int i = 0;
    if ((paramInputStream == null) || (paramInt <= 0))
      return null;
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      StringBuilder localStringBuilder = new StringBuilder(32);
      byte[] arrayOfByte1 = new byte[paramInt];
      while (true)
      {
        int j = paramInputStream.read(arrayOfByte1);
        if (j == -1)
          break;
        localMessageDigest.update(arrayOfByte1, 0, j);
      }
      byte[] arrayOfByte2 = localMessageDigest.digest();
      while (i < arrayOfByte2.length)
      {
        localStringBuilder.append(Integer.toString(256 + (0xFF & arrayOfByte2[i]), 16).substring(1));
        i++;
      }
      String str = localStringBuilder.toString();
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  private static String a(InputStream paramInputStream, int paramInt, byte[] paramArrayOfByte)
  {
    int i = 0;
    if ((paramInputStream == null) || (paramInt <= 0));
    while (true)
    {
      return null;
      try
      {
        if (paramInputStream.skip(0L) >= 0L)
        {
          MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
          StringBuilder localStringBuilder = new StringBuilder(32);
          byte[] arrayOfByte1 = new byte[102400];
          int j = 0;
          while (true)
          {
            int k = paramInputStream.read(arrayOfByte1);
            if ((k == -1) || (j >= paramInt))
              break;
            if (j + k <= paramInt)
            {
              localMessageDigest.update(arrayOfByte1, 0, k);
              j += k;
            }
            else
            {
              localMessageDigest.update(arrayOfByte1, 0, paramInt - j);
              j = paramInt;
            }
          }
          if ((paramArrayOfByte != null) && (paramArrayOfByte.length > 0))
            localMessageDigest.update(paramArrayOfByte);
          byte[] arrayOfByte2 = localMessageDigest.digest();
          while (i < arrayOfByte2.length)
          {
            localStringBuilder.append(Integer.toString(256 + (0xFF & arrayOfByte2[i]), 16).substring(1));
            i++;
          }
          String str = localStringBuilder.toString();
          return str;
        }
      }
      catch (Exception localException)
      {
      }
    }
    return null;
  }

  public static String au(String paramString)
  {
    if (paramString == null);
    File localFile;
    do
    {
      return null;
      localFile = new File(paramString);
    }
    while (!localFile.exists());
    return c(localFile);
  }

  public static String av(String paramString)
  {
    if (paramString == null);
    File localFile;
    do
    {
      return null;
      localFile = new File(paramString);
    }
    while (!localFile.exists());
    return d(localFile);
  }

  // ERROR //
  public static String c(File paramFile)
  {
    // Byte code:
    //   0: ldc2_w 98
    //   3: lstore_1
    //   4: aload_0
    //   5: ifnull +10 -> 15
    //   8: aload_0
    //   9: invokevirtual 16	java/io/File:exists	()Z
    //   12: ifne +5 -> 17
    //   15: aconst_null
    //   16: areturn
    //   17: new 18	java/io/FileInputStream
    //   20: dup
    //   21: aload_0
    //   22: invokespecial 22	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   25: astore_3
    //   26: lload_1
    //   27: aload_0
    //   28: invokevirtual 103	java/io/File:length	()J
    //   31: lcmp
    //   32: ifgt +27 -> 59
    //   35: aload_3
    //   36: lload_1
    //   37: l2i
    //   38: invokestatic 105	com/tencent/mm/a/f:a	(Ljava/io/InputStream;I)Ljava/lang/String;
    //   41: astore 9
    //   43: aload_3
    //   44: invokevirtual 29	java/io/FileInputStream:close	()V
    //   47: aload_3
    //   48: invokevirtual 29	java/io/FileInputStream:close	()V
    //   51: aload 9
    //   53: areturn
    //   54: astore 10
    //   56: aload 9
    //   58: areturn
    //   59: aload_0
    //   60: invokevirtual 103	java/io/File:length	()J
    //   63: lstore 11
    //   65: lload 11
    //   67: lstore_1
    //   68: goto -33 -> 35
    //   71: astore 13
    //   73: aconst_null
    //   74: astore 5
    //   76: aload 5
    //   78: ifnull +8 -> 86
    //   81: aload 5
    //   83: invokevirtual 29	java/io/FileInputStream:close	()V
    //   86: aconst_null
    //   87: areturn
    //   88: astore 7
    //   90: aconst_null
    //   91: astore_3
    //   92: aload_3
    //   93: ifnull +7 -> 100
    //   96: aload_3
    //   97: invokevirtual 29	java/io/FileInputStream:close	()V
    //   100: aload 7
    //   102: athrow
    //   103: astore 6
    //   105: goto -19 -> 86
    //   108: astore 8
    //   110: goto -10 -> 100
    //   113: astore 7
    //   115: goto -23 -> 92
    //   118: astore 4
    //   120: aload_3
    //   121: astore 5
    //   123: goto -47 -> 76
    //
    // Exception table:
    //   from	to	target	type
    //   47	51	54	java/io/IOException
    //   17	26	71	java/lang/Exception
    //   17	26	88	finally
    //   81	86	103	java/io/IOException
    //   96	100	108	java/io/IOException
    //   26	35	113	finally
    //   35	47	113	finally
    //   59	65	113	finally
    //   26	35	118	java/lang/Exception
    //   35	47	118	java/lang/Exception
    //   59	65	118	java/lang/Exception
  }

  // ERROR //
  private static String d(File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +10 -> 11
    //   4: aload_0
    //   5: invokevirtual 16	java/io/File:exists	()Z
    //   8: ifne +5 -> 13
    //   11: aconst_null
    //   12: areturn
    //   13: new 18	java/io/FileInputStream
    //   16: dup
    //   17: aload_0
    //   18: invokespecial 22	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   21: astore_1
    //   22: aload_1
    //   23: sipush 256
    //   26: aconst_null
    //   27: invokestatic 25	com/tencent/mm/a/f:a	(Ljava/io/InputStream;I[B)Ljava/lang/String;
    //   30: astore 7
    //   32: aload_1
    //   33: invokevirtual 29	java/io/FileInputStream:close	()V
    //   36: aload_1
    //   37: invokevirtual 29	java/io/FileInputStream:close	()V
    //   40: aload 7
    //   42: areturn
    //   43: astore 8
    //   45: aload 7
    //   47: areturn
    //   48: astore 9
    //   50: aconst_null
    //   51: astore_3
    //   52: aload_3
    //   53: ifnull +7 -> 60
    //   56: aload_3
    //   57: invokevirtual 29	java/io/FileInputStream:close	()V
    //   60: aconst_null
    //   61: areturn
    //   62: astore 5
    //   64: aconst_null
    //   65: astore_1
    //   66: aload_1
    //   67: ifnull +7 -> 74
    //   70: aload_1
    //   71: invokevirtual 29	java/io/FileInputStream:close	()V
    //   74: aload 5
    //   76: athrow
    //   77: astore 4
    //   79: goto -19 -> 60
    //   82: astore 6
    //   84: goto -10 -> 74
    //   87: astore 5
    //   89: goto -23 -> 66
    //   92: astore_2
    //   93: aload_1
    //   94: astore_3
    //   95: goto -43 -> 52
    //
    // Exception table:
    //   from	to	target	type
    //   36	40	43	java/io/IOException
    //   13	22	48	java/lang/Exception
    //   13	22	62	finally
    //   56	60	77	java/io/IOException
    //   70	74	82	java/io/IOException
    //   22	36	87	finally
    //   22	36	92	java/lang/Exception
  }

  public static final String h(byte[] paramArrayOfByte)
  {
    int i = 0;
    char[] arrayOfChar1 = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte);
      byte[] arrayOfByte = localMessageDigest.digest();
      int j = arrayOfByte.length;
      char[] arrayOfChar2 = new char[j * 2];
      int k = 0;
      while (i < j)
      {
        int m = arrayOfByte[i];
        int n = k + 1;
        arrayOfChar2[k] = arrayOfChar1[(0xF & m >>> 4)];
        k = n + 1;
        arrayOfChar2[n] = arrayOfChar1[(m & 0xF)];
        i++;
      }
      String str = new String(arrayOfChar2);
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static final byte[] i(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte);
      byte[] arrayOfByte = localMessageDigest.digest();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.a.f
 * JD-Core Version:    0.6.2
 */