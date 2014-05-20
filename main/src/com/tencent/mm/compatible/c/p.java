package com.tencent.mm.compatible.c;

import android.os.Build;
import android.os.Build.VERSION;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.File;
import java.lang.reflect.Field;
import java.util.Map;

public final class p
{
  private static Map ceF = null;

  private static String a(Map paramMap, String paramString)
  {
    return (String)paramMap.get(paramString);
  }

  private static String bh(String paramString)
  {
    if (paramString != null)
      try
      {
        if (paramString.length() > 0)
          while (!i(paramString.charAt(0)))
          {
            if (paramString.length() == 1)
              return null;
            String str = paramString.substring(1);
            paramString = str;
          }
      }
      catch (Exception localException)
      {
      }
    return paramString;
  }

  private static String bi(String paramString)
  {
    int j;
    for (int i = 0; ; i = j)
    {
      j = i + 1;
      try
      {
        if ((!i(paramString.charAt(i))) || (paramString.length() <= j))
        {
          int k = j - 1;
          if ((paramString.length() > k + 1) && (k > 0))
          {
            String str = paramString.substring(0, k);
            paramString = str;
          }
          return paramString;
        }
      }
      catch (Exception localException)
      {
        return paramString;
      }
    }
  }

  private static boolean i(char paramChar)
  {
    return (paramChar >= '0') && (paramChar <= '9');
  }

  public static String pO()
  {
    if (ceF == null)
      ceF = pT();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(": ");
    localStringBuilder.append(a(ceF, "Features"));
    localStringBuilder.append(": ");
    localStringBuilder.append(a(ceF, "Processor"));
    localStringBuilder.append(": ");
    localStringBuilder.append(a(ceF, "CPU architecture"));
    localStringBuilder.append(": ");
    localStringBuilder.append(a(ceF, "Hardware"));
    localStringBuilder.append(": ");
    localStringBuilder.append(a(ceF, "Serial"));
    return localStringBuilder.toString();
  }

  public static boolean pP()
  {
    if (ceF == null)
      ceF = pT();
    if (ceF != null)
    {
      String str = a(ceF, "Features");
      if ((str != null) && (str.contains("neon")))
        return true;
    }
    return false;
  }

  public static boolean pQ()
  {
    try
    {
      if (Build.VERSION.SDK_INT >= 4);
      for (int i = 1; (i != 0) && (Build.class.getField("CPU_ABI").get(null).toString().startsWith("armeabi-v7")); i = 0)
      {
        boolean bool = pP();
        if (!bool)
          break;
        return true;
      }
      return false;
    }
    catch (Throwable localThrowable)
    {
    }
    return false;
  }

  public static boolean pR()
  {
    if (ceF == null)
      ceF = pT();
    if (ceF != null)
    {
      String str = a(ceF, "CPU architecture");
      aa.d("CpuFeatures", "arch " + str);
      if (str != null)
        try
        {
          if (str.length() > 0)
          {
            int i = Integer.parseInt(bi(bh(str)));
            aa.d("CpuFeatures", "armarch " + i);
            if (i >= 6)
              return true;
          }
        }
        catch (Exception localException)
        {
        }
    }
    return false;
  }

  public static int pS()
  {
    try
    {
      int i = new File("/sys/devices/system/cpu/").listFiles(new q()).length;
      return i;
    }
    catch (Exception localException)
    {
    }
    return 1;
  }

  // ERROR //
  private static java.util.HashMap pT()
  {
    // Byte code:
    //   0: new 161	java/util/HashMap
    //   3: dup
    //   4: invokespecial 162	java/util/HashMap:<init>	()V
    //   7: astore_0
    //   8: aconst_null
    //   9: astore_1
    //   10: new 164	java/lang/ProcessBuilder
    //   13: dup
    //   14: iconst_2
    //   15: anewarray 20	java/lang/String
    //   18: dup
    //   19: iconst_0
    //   20: ldc 166
    //   22: aastore
    //   23: dup
    //   24: iconst_1
    //   25: ldc 168
    //   27: aastore
    //   28: invokespecial 171	java/lang/ProcessBuilder:<init>	([Ljava/lang/String;)V
    //   31: invokevirtual 175	java/lang/ProcessBuilder:start	()Ljava/lang/Process;
    //   34: invokevirtual 181	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   37: astore 8
    //   39: aload 8
    //   41: astore_1
    //   42: new 183	java/io/BufferedReader
    //   45: dup
    //   46: new 185	java/io/InputStreamReader
    //   49: dup
    //   50: aload_1
    //   51: invokespecial 188	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   54: invokespecial 191	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   57: astore 9
    //   59: aload 9
    //   61: invokevirtual 194	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   64: astore 11
    //   66: aload 11
    //   68: ifnull +76 -> 144
    //   71: aload 11
    //   73: ldc 196
    //   75: iconst_2
    //   76: invokevirtual 200	java/lang/String:split	(Ljava/lang/String;I)[Ljava/lang/String;
    //   79: astore 12
    //   81: aload 12
    //   83: ifnull -24 -> 59
    //   86: aload 12
    //   88: arraylength
    //   89: iconst_2
    //   90: if_icmplt -31 -> 59
    //   93: aload 12
    //   95: iconst_0
    //   96: aaload
    //   97: invokevirtual 203	java/lang/String:trim	()Ljava/lang/String;
    //   100: astore 13
    //   102: aload 12
    //   104: iconst_1
    //   105: aaload
    //   106: invokevirtual 203	java/lang/String:trim	()Ljava/lang/String;
    //   109: astore 14
    //   111: aload_0
    //   112: aload 13
    //   114: invokevirtual 204	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   117: ifnonnull -58 -> 59
    //   120: aload_0
    //   121: aload 13
    //   123: aload 14
    //   125: invokevirtual 208	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   128: pop
    //   129: goto -70 -> 59
    //   132: astore 6
    //   134: aload_1
    //   135: ifnull +7 -> 142
    //   138: aload_1
    //   139: invokevirtual 213	java/io/InputStream:close	()V
    //   142: aload_0
    //   143: areturn
    //   144: aload_1
    //   145: ifnull -3 -> 142
    //   148: aload_1
    //   149: invokevirtual 213	java/io/InputStream:close	()V
    //   152: aload_0
    //   153: areturn
    //   154: astore 16
    //   156: aload_0
    //   157: areturn
    //   158: astore_2
    //   159: aconst_null
    //   160: astore_3
    //   161: aload_2
    //   162: astore 4
    //   164: aload_3
    //   165: ifnull +7 -> 172
    //   168: aload_3
    //   169: invokevirtual 213	java/io/InputStream:close	()V
    //   172: aload 4
    //   174: athrow
    //   175: astore 7
    //   177: aload_0
    //   178: areturn
    //   179: astore 5
    //   181: goto -9 -> 172
    //   184: astore 10
    //   186: aload_1
    //   187: astore_3
    //   188: aload 10
    //   190: astore 4
    //   192: goto -28 -> 164
    //
    // Exception table:
    //   from	to	target	type
    //   10	39	132	java/io/IOException
    //   42	59	132	java/io/IOException
    //   59	66	132	java/io/IOException
    //   71	81	132	java/io/IOException
    //   86	129	132	java/io/IOException
    //   148	152	154	java/io/IOException
    //   10	39	158	finally
    //   138	142	175	java/io/IOException
    //   168	172	179	java/io/IOException
    //   42	59	184	finally
    //   59	66	184	finally
    //   71	81	184	finally
    //   86	129	184	finally
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.c.p
 * JD-Core Version:    0.6.2
 */