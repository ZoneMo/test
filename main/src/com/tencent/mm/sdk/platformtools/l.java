package com.tencent.mm.sdk.platformtools;

import com.tencent.mm.a.f;
import java.io.File;

public final class l
{
  public static String a(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt)
  {
    if (cj.hX(paramString1));
    label137: 
    while (true)
    {
      return null;
      if (paramString1.endsWith("/"))
      {
        String str1 = "";
        if (paramInt == 1)
          str1 = sv(paramString3);
        while (true)
        {
          if (cj.hX(str1))
            break label137;
          String str2 = paramString1 + str1;
          if (!sw(str2))
            break;
          return str2 + cj.hW(paramString2) + paramString3 + cj.hW(paramString4);
          if (paramInt == 2)
            if (cj.hX(paramString3))
              str1 = null;
            else
              str1 = sv(f.h(paramString3.getBytes()));
        }
      }
    }
  }

  public static String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    String str1 = paramString1 + paramString3 + paramString4 + paramString5;
    String str2 = a(paramString2, paramString3, paramString4, paramString5, 1);
    if ((cj.hX(str1)) || (cj.hX(str2)))
      str2 = null;
    File localFile1;
    File localFile2;
    do
    {
      return str2;
      localFile1 = new File(str2);
      localFile2 = new File(str1);
    }
    while ((localFile1.exists()) || (!localFile2.exists()));
    m.f(str1, str2, false);
    return str2;
  }

  private static String sv(String paramString)
  {
    if (cj.hX(paramString));
    while (paramString.length() <= 4)
      return null;
    return paramString.substring(0, 2) + "/" + paramString.substring(2, 4) + "/";
  }

  // ERROR //
  private static boolean sw(String paramString)
  {
    // Byte code:
    //   0: new 60	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 63	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore_1
    //   9: aload_1
    //   10: invokevirtual 67	java/io/File:exists	()Z
    //   13: ifne +54 -> 67
    //   16: aload_1
    //   17: invokevirtual 88	java/io/File:mkdirs	()Z
    //   20: pop
    //   21: new 60	java/io/File
    //   24: dup
    //   25: new 27	java/lang/StringBuilder
    //   28: dup
    //   29: invokespecial 31	java/lang/StringBuilder:<init>	()V
    //   32: aload_0
    //   33: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: ldc 90
    //   38: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: invokevirtual 39	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: invokespecial 63	java/io/File:<init>	(Ljava/lang/String;)V
    //   47: astore 4
    //   49: aload 4
    //   51: invokevirtual 67	java/io/File:exists	()Z
    //   54: istore 5
    //   56: iload 5
    //   58: ifne +9 -> 67
    //   61: aload 4
    //   63: invokevirtual 93	java/io/File:createNewFile	()Z
    //   66: pop
    //   67: iconst_1
    //   68: ireturn
    //   69: astore_2
    //   70: iconst_0
    //   71: ireturn
    //   72: astore 6
    //   74: goto -7 -> 67
    //
    // Exception table:
    //   from	to	target	type
    //   0	56	69	java/lang/Exception
    //   61	67	69	java/lang/Exception
    //   61	67	72	java/io/IOException
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.l
 * JD-Core Version:    0.6.2
 */