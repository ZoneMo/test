package com.tencent.mm.platformtools;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Debug;
import android.os.StatFs;
import android.os.SystemClock;
import android.os.Vibrator;
import com.tencent.mm.a.f;
import com.tencent.mm.compatible.g.l;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class au
{
  private static final TimeZone GMT = TimeZone.getTimeZone("GMT");
  private static final long[] cHR = { 300L, 200L, 300L, 200L };

  public static boolean A(byte[] paramArrayOfByte)
  {
    return (paramArrayOfByte == null) || (paramArrayOfByte.length <= 0);
  }

  public static long FC()
  {
    return System.currentTimeMillis() / 1000L;
  }

  public static long FD()
  {
    return System.currentTimeMillis();
  }

  public static long FE()
  {
    return SystemClock.elapsedRealtime();
  }

  public static long FF()
  {
    return 86400000L * (System.currentTimeMillis() / 86400000L);
  }

  public static void FG()
  {
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = K(Debug.getGlobalAllocSize());
    arrayOfObject[1] = K(Debug.getGlobalAllocSize() + Debug.getGlobalFreedSize());
    arrayOfObject[2] = K(Debug.getGlobalExternalAllocSize());
    arrayOfObject[3] = K(Debug.getGlobalExternalAllocSize() + Debug.getGlobalExternalFreedSize());
    arrayOfObject[4] = K(Debug.getNativeHeapAllocatedSize());
    arrayOfObject[5] = K(Debug.getNativeHeapSize());
    aa.c("MicroMsg.Util", "memory usage: h=%s/%s, e=%s/%s, n=%s/%s", arrayOfObject);
  }

  public static boolean FH()
  {
    if (!"mounted".equals(l.getExternalStorageState()));
    int i;
    long l3;
    do
    {
      StatFs localStatFs;
      long l1;
      long l2;
      do
      {
        return false;
        localStatFs = new StatFs(l.getExternalStorageDirectory().getPath());
        l1 = localStatFs.getBlockCount();
        l2 = localStatFs.getAvailableBlocks();
      }
      while ((l1 <= 0L) || (l1 - l2 < 0L));
      i = (int)(100L * (l1 - l2) / l1);
      l3 = localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
      aa.d("MicroMsg.Util", "checkSDCardFull per:" + i + " blockCount:" + l1 + " availCount:" + l2 + " availSize:" + l3);
    }
    while ((95 > i) || (l3 > 52428800L));
    return true;
  }

  public static String FI()
  {
    return "android-" + Build.MODEL + "-" + Build.VERSION.SDK_INT;
  }

  public static av FJ()
  {
    return new av();
  }

  public static String K(long paramLong)
  {
    if (paramLong >> 20 > 0L)
      return L(paramLong);
    if (paramLong >> 9 > 0L)
    {
      float f = Math.round(10.0F * (float)paramLong / 1024.0F) / 10.0F;
      return f + "KB";
    }
    return paramLong + "B";
  }

  public static String L(long paramLong)
  {
    float f = Math.round(10.0F * (float)paramLong / 1048576.0F) / 10.0F;
    return f + "MB";
  }

  public static long M(long paramLong)
  {
    return System.currentTimeMillis() / 1000L - paramLong;
  }

  public static long N(long paramLong)
  {
    return System.currentTimeMillis() - paramLong;
  }

  public static long O(long paramLong)
  {
    return SystemClock.elapsedRealtime() - paramLong;
  }

  public static int R(int paramInt1, int paramInt2)
  {
    if (paramInt1 <= paramInt2)
    {
      aa.e("MicroMsg.Util", "getIntRandom failed upLimit:" + paramInt1 + "<= downLimit:" + paramInt2);
      return 0;
    }
    return paramInt2 + new Random(System.currentTimeMillis()).nextInt(1 + (paramInt1 - paramInt2));
  }

  public static String R(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return paramString2;
    return paramString1;
  }

  public static boolean S(int paramInt1, int paramInt2)
  {
    return paramInt2 > 2.0D * paramInt1;
  }

  public static boolean T(int paramInt1, int paramInt2)
  {
    return paramInt1 > 2.0D * paramInt2;
  }

  public static int U(Object paramObject)
  {
    if (paramObject == null);
    do
    {
      return 0;
      if ((paramObject instanceof Integer))
        return ((Integer)paramObject).intValue();
    }
    while (!(paramObject instanceof Long));
    return ((Long)paramObject).intValue();
  }

  public static int a(Integer paramInteger, int paramInt)
  {
    if (paramInteger == null)
      return paramInt;
    return paramInteger.intValue();
  }

  public static long a(Long paramLong)
  {
    if (paramLong == null)
      return 0L;
    return paramLong.longValue();
  }

  public static String a(List paramList, String paramString)
  {
    if (paramList == null)
      return "";
    StringBuilder localStringBuilder = new StringBuilder("");
    int i = 0;
    if (i < paramList.size())
    {
      if (i == -1 + paramList.size())
        localStringBuilder.append(((String)paramList.get(i)).trim());
      while (true)
      {
        i++;
        break;
        localStringBuilder.append(((String)paramList.get(i)).trim() + paramString);
      }
    }
    return localStringBuilder.toString();
  }

  public static void a(Context paramContext, boolean paramBoolean)
  {
    Vibrator localVibrator = (Vibrator)paramContext.getSystemService("vibrator");
    if (localVibrator == null)
      return;
    if (paramBoolean)
    {
      localVibrator.vibrate(cHR, -1);
      return;
    }
    localVibrator.cancel();
  }

  public static boolean a(Boolean paramBoolean, boolean paramBoolean1)
  {
    if (paramBoolean == null)
      return paramBoolean1;
    return paramBoolean.booleanValue();
  }

  public static boolean ag(Context paramContext)
  {
    String str1 = paramContext.getClass().getName();
    String str2 = ah(paramContext);
    aa.d("MicroMsg.Util", "top activity=" + str2 + ", context=" + str1);
    return str2.equalsIgnoreCase(str1);
  }

  public static String ah(Context paramContext)
  {
    try
    {
      String str = ((ActivityManager.RunningTaskInfo)((ActivityManager)paramContext.getSystemService("activity")).getRunningTasks(1).get(0)).topActivity.getClassName();
      return str;
    }
    catch (Exception localException)
    {
    }
    return "(null)";
  }

  public static long b(Long paramLong)
  {
    if (paramLong == null)
      return 0L;
    return paramLong.longValue();
  }

  // ERROR //
  public static String b(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: new 334	java/io/BufferedReader
    //   3: dup
    //   4: new 336	java/io/InputStreamReader
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 339	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   12: invokespecial 342	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   15: astore_1
    //   16: new 126	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 189	java/lang/StringBuilder:<init>	()V
    //   23: astore_2
    //   24: aload_1
    //   25: invokevirtual 345	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   28: astore 7
    //   30: aload 7
    //   32: ifnull +43 -> 75
    //   35: aload_2
    //   36: new 126	java/lang/StringBuilder
    //   39: dup
    //   40: invokespecial 189	java/lang/StringBuilder:<init>	()V
    //   43: aload 7
    //   45: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: ldc_w 347
    //   51: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: pop
    //   61: goto -37 -> 24
    //   64: astore 5
    //   66: aload_0
    //   67: invokevirtual 352	java/io/InputStream:close	()V
    //   70: aload_2
    //   71: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: areturn
    //   75: aload_0
    //   76: invokevirtual 352	java/io/InputStream:close	()V
    //   79: goto -9 -> 70
    //   82: astore 9
    //   84: goto -14 -> 70
    //   87: astore_3
    //   88: aload_0
    //   89: invokevirtual 352	java/io/InputStream:close	()V
    //   92: aload_3
    //   93: athrow
    //   94: astore 6
    //   96: goto -26 -> 70
    //   99: astore 4
    //   101: goto -9 -> 92
    //
    // Exception table:
    //   from	to	target	type
    //   24	30	64	java/io/IOException
    //   35	61	64	java/io/IOException
    //   75	79	82	java/io/IOException
    //   24	30	87	finally
    //   35	61	87	finally
    //   66	70	94	java/io/IOException
    //   88	92	99	java/io/IOException
  }

  public static boolean b(Boolean paramBoolean)
  {
    if (paramBoolean == null)
      return true;
    return paramBoolean.booleanValue();
  }

  public static int c(Integer paramInteger)
  {
    if (paramInteger == null)
      return 0;
    return paramInteger.intValue();
  }

  public static List c(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0))
      return null;
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < paramArrayOfString.length; i++)
      localArrayList.add(paramArrayOfString[i]);
    return localArrayList;
  }

  public static boolean c(Boolean paramBoolean)
  {
    if (paramBoolean == null)
      return false;
    return paramBoolean.booleanValue();
  }

  public static String eQ(int paramInt)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Long.valueOf(paramInt / 60L);
    arrayOfObject[1] = Long.valueOf(paramInt % 60L);
    return String.format("%d:%02d", arrayOfObject);
  }

  public static boolean eR(int paramInt)
  {
    long l1 = 1000L * paramInt;
    long l2 = l1 - System.currentTimeMillis();
    aa.d("MicroMsg.Util", "time " + l1 + "  systime " + System.currentTimeMillis() + " diff " + l2);
    return l2 < 0L;
  }

  public static String hR(String paramString)
  {
    if (paramString != null)
      paramString = paramString.replace("\\[", "[[]").replace("%", "").replace("\\^", "").replace("'", "").replace("\\{", "").replace("\\}", "").replace("\"", "");
    return paramString;
  }

  public static boolean hS(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0));
    while (true)
    {
      return false;
      String str = paramString.trim();
      try
      {
        long l = Long.valueOf(str).longValue();
        if ((l > 0L) && (l <= 4294967295L))
          return true;
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
    }
    return false;
  }

  public static boolean hT(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return false;
    return paramString.trim().matches("^[a-zA-Z0-9][\\w\\.-]*@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$");
  }

  public static boolean hU(String paramString)
  {
    if (paramString == null);
    label101: label105: 
    while (true)
    {
      return false;
      String str = paramString.trim();
      if ((str.length() >= 6) && (str.length() <= 20) && (m(str.charAt(0))))
      {
        int i = 0;
        if (i >= str.length())
          break;
        char c = str.charAt(i);
        if (!m(c))
          if ((c < '0') || (c > '9'))
            break label101;
        for (int j = 1; ; j = 0)
        {
          if ((j == 0) && (c != '-') && (c != '_'))
            break label105;
          i++;
          break;
        }
      }
    }
    return true;
  }

  public static boolean hV(String paramString)
  {
    if (paramString == null);
    while (paramString.length() < 4)
      return false;
    return paramString.length() >= 9;
  }

  public static String hW(String paramString)
  {
    if (paramString == null)
      paramString = "";
    return paramString;
  }

  public static boolean hX(String paramString)
  {
    return (paramString == null) || (paramString.length() <= 0);
  }

  @Deprecated
  public static long hY(String paramString)
  {
    if (paramString == null)
      return 0L;
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return 0L;
  }

  public static String hZ(String paramString)
  {
    if (paramString == null)
      paramString = "";
    if (paramString.length() <= 16)
      return f.h(paramString.getBytes());
    return f.h(paramString.substring(0, 16).getBytes());
  }

  public static boolean i(Context paramContext, Intent paramIntent)
  {
    return paramContext.getPackageManager().queryIntentActivities(paramIntent, 65536).size() > 0;
  }

  public static String ia(String paramString)
  {
    return f.h(paramString.getBytes());
  }

  public static byte[] ib(String paramString)
  {
    byte[] arrayOfByte;
    if ((paramString == null) || (paramString.length() <= 0))
      arrayOfByte = new byte[0];
    while (true)
    {
      return arrayOfByte;
      try
      {
        arrayOfByte = new byte[paramString.length() / 2];
        for (int i = 0; i < arrayOfByte.length; i++)
          arrayOfByte[i] = ((byte)(0xFF & Integer.parseInt(paramString.substring(i * 2, 2 + i * 2), 16)));
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
    }
    return new byte[0];
  }

  public static boolean ic(String paramString)
  {
    if (hX(paramString))
      return false;
    return Pattern.compile("[\\u4e00-\\u9fa5]+").matcher(paramString).find();
  }

  public static boolean l(char paramChar)
  {
    Character.UnicodeBlock localUnicodeBlock = Character.UnicodeBlock.of(paramChar);
    return (localUnicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS) || (localUnicodeBlock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS) || (localUnicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A) || (localUnicodeBlock == Character.UnicodeBlock.GENERAL_PUNCTUATION) || (localUnicodeBlock == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION) || (localUnicodeBlock == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS);
  }

  private static boolean m(char paramChar)
  {
    return ((paramChar >= 'a') && (paramChar <= 'z')) || ((paramChar >= 'A') && (paramChar <= 'Z'));
  }

  public static boolean w(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    if (!i(paramContext, localIntent))
    {
      aa.e("MicroMsg.Util", "jump to url failed, " + paramString);
      return false;
    }
    paramContext.startActivity(localIntent);
    return true;
  }

  public static String z(byte[] paramArrayOfByte)
  {
    int i = 0;
    if (paramArrayOfByte == null)
      return "(null)";
    char[] arrayOfChar1 = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
    char[] arrayOfChar2 = new char[24];
    int j = 0;
    int i1;
    if (j < 8)
    {
      int k = paramArrayOfByte[j];
      int m = i + 1;
      arrayOfChar2[i] = ' ';
      int n = m + 1;
      arrayOfChar2[m] = arrayOfChar1[(0xF & k >>> 4)];
      i1 = n + 1;
      arrayOfChar2[n] = arrayOfChar1[(k & 0xF)];
      if ((j % 16 != 0) || (j <= 0))
        break label227;
      i = i1 + 1;
      arrayOfChar2[i1] = '\n';
    }
    while (true)
    {
      j++;
      break;
      return new String(arrayOfChar2);
      label227: i = i1;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.au
 * JD-Core Version:    0.6.2
 */