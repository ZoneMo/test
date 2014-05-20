package com.tencent.mm.sdk.platformtools;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.os.Vibrator;
import android.telephony.TelephonyManager;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;
import com.tencent.mm.a.f;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import junit.framework.Assert;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

public final class cj
{
  private static final TimeZone GMT = TimeZone.getTimeZone("GMT");
  private static final long[] cHR = { 300L, 200L, 300L, 200L };
  private static final char[] gfu = { 60, 62, 34, 39, 38 };
  private static final String[] gfv = { "&lt;", "&gt;", "&quot;", "&apos;", "&amp;" };

  public static boolean A(byte[] paramArrayOfByte)
  {
    return (paramArrayOfByte == null) || (paramArrayOfByte.length <= 0);
  }

  public static boolean Bj()
  {
    if (!Locale.getDefault().equals(Locale.CHINA))
      return true;
    TimeZone localTimeZone1 = TimeZone.getDefault();
    TimeZone localTimeZone2 = TimeZone.getTimeZone("GMT+08:00");
    if (localTimeZone1.getRawOffset() != localTimeZone2.getRawOffset())
      return true;
    TelephonyManager localTelephonyManager = (TelephonyManager)al.getContext().getSystemService("phone");
    if (localTelephonyManager != null)
    {
      String str = localTelephonyManager.getNetworkCountryIso();
      if ((!hX(str)) && (!str.contains("cn")) && (!str.contains("CN")))
        return true;
    }
    return false;
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

  public static String K(long paramLong)
  {
    if (paramLong >> 30 > 0L)
    {
      float f2 = Math.round(10.0F * (float)paramLong / 1.073742E+09F) / 10.0F;
      return f2 + " GB";
    }
    if (paramLong >> 20 > 0L)
      return L(paramLong);
    if (paramLong >> 9 > 0L)
    {
      float f1 = Math.round(10.0F * (float)paramLong / 1024.0F) / 10.0F;
      return f1 + " KB";
    }
    return paramLong + " B";
  }

  public static String L(long paramLong)
  {
    float f = Math.round(10.0F * (float)paramLong / 1048576.0F) / 10.0F;
    return f + " MB";
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

  public static String R(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return paramString2;
    return paramString1;
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

  public static long a(Long paramLong, long paramLong1)
  {
    if (paramLong == null)
      return paramLong1;
    return paramLong.longValue();
  }

  public static String a(LinkedHashMap paramLinkedHashMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<key>");
    Iterator localIterator = paramLinkedHashMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject1 = localEntry.getKey();
      Object localObject2 = localEntry.getValue();
      if (localObject1 == null)
        localObject1 = "unknow";
      if (localObject2 == null)
        localObject2 = "unknow";
      localStringBuilder.append("<" + localObject1 + ">");
      localStringBuilder.append(localObject2);
      localStringBuilder.append("</" + localObject1 + ">");
    }
    localStringBuilder.append("</key>");
    return localStringBuilder.toString();
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

  public static int aP(String paramString1, String paramString2)
  {
    try
    {
      ZipInputStream localZipInputStream = new ZipInputStream(new FileInputStream(paramString1));
      while (true)
      {
        ZipEntry localZipEntry = localZipInputStream.getNextEntry();
        if (localZipEntry == null)
          break;
        String str1 = localZipEntry.getName();
        if (localZipEntry.isDirectory())
        {
          String str2 = str1.substring(0, -1 + str1.length());
          new File(paramString2 + File.separator + str2).mkdirs();
        }
        else
        {
          File localFile = new File(paramString2 + File.separator + str1);
          localFile.createNewFile();
          FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
          byte[] arrayOfByte = new byte[1024];
          while (true)
          {
            int i = localZipInputStream.read(arrayOfByte);
            if (i == -1)
              break;
            localFileOutputStream.write(arrayOfByte, 0, i);
            localFileOutputStream.flush();
          }
          localFileOutputStream.close();
        }
      }
      localZipInputStream.close();
      return 0;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      return -1;
    }
    catch (IOException localIOException)
    {
    }
    return -2;
  }

  public static void af(View paramView)
  {
    try
    {
      InputMethodManager localInputMethodManager = (InputMethodManager)paramView.getContext().getSystemService("input_method");
      if (localInputMethodManager == null)
        return;
      localInputMethodManager.hideSoftInputFromWindow(paramView.getApplicationWindowToken(), 0);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static long ag(Object paramObject)
  {
    if (paramObject == null);
    while (!(paramObject instanceof Long))
      return 0L;
    return ((Long)paramObject).longValue();
  }

  public static boolean ag(Context paramContext)
  {
    String str1 = paramContext.getClass().getName();
    String str2 = ah(paramContext);
    aa.d("MicroMsg.Util", "top activity=" + str2 + ", context=" + str1);
    return str2.equalsIgnoreCase(str1);
  }

  private static String ah(Context paramContext)
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

  public static boolean ai(Context paramContext, String paramString)
  {
    try
    {
      List localList = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
      if (localList == null)
        return false;
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
        if ((localRunningAppProcessInfo != null) && (localRunningAppProcessInfo.processName != null) && (localRunningAppProcessInfo.processName.equals(paramString)))
        {
          aa.w("MicroMsg.Util", "process " + paramString + " is running");
          return true;
        }
      }
      aa.w("MicroMsg.Util", "process " + paramString + " is not running");
      label135: return false;
    }
    catch (Exception localException)
    {
      break label135;
    }
  }

  public static byte[] azP()
  {
    try
    {
      FileInputStream localFileInputStream = new FileInputStream("/dev/urandom");
      byte[] arrayOfByte = new byte[16];
      int i = localFileInputStream.read(arrayOfByte);
      localFileInputStream.close();
      if (i == 16)
        return arrayOfByte;
    }
    catch (Exception localException)
    {
      UUID localUUID = UUID.randomUUID();
      return f.i((localUUID.toString() + System.currentTimeMillis()).getBytes());
    }
  }

  public static boolean azQ()
  {
    int i = new GregorianCalendar().get(11);
    return (i >= 6L) && (i < 18L);
  }

  public static String azR()
  {
    TimeZone localTimeZone = TimeZone.getDefault();
    int i = localTimeZone.getRawOffset() / 1000;
    if ((localTimeZone.useDaylightTime()) && (localTimeZone.inDaylightTime(new java.sql.Date(System.currentTimeMillis()))));
    for (int j = 1; ; j = 0)
    {
      double d = i / 3600.0D + j;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Double.valueOf(d);
      return String.format("%.2f", arrayOfObject);
    }
  }

  public static String azS()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)al.getContext().getSystemService("phone");
    if (localTelephonyManager != null)
    {
      String str = localTelephonyManager.getNetworkCountryIso();
      if (hX(str))
        return null;
      return str.toLowerCase().trim();
    }
    return null;
  }

  public static boolean azT()
  {
    return z.azj().equals("zh_CN");
  }

  public static View.OnTouchListener azU()
  {
    return new ck();
  }

  public static cm azV()
  {
    return new cm();
  }

  public static int azW()
  {
    return new Random().nextInt();
  }

  // ERROR //
  public static String b(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: new 520	java/io/BufferedReader
    //   3: dup
    //   4: new 522	java/io/InputStreamReader
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 523	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   12: invokespecial 526	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   15: astore_1
    //   16: new 140	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 143	java/lang/StringBuilder:<init>	()V
    //   23: astore_2
    //   24: aload_1
    //   25: invokevirtual 529	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   28: astore 7
    //   30: aload 7
    //   32: ifnull +43 -> 75
    //   35: aload_2
    //   36: new 140	java/lang/StringBuilder
    //   39: dup
    //   40: invokespecial 143	java/lang/StringBuilder:<init>	()V
    //   43: aload 7
    //   45: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: ldc_w 531
    //   51: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: pop
    //   61: goto -37 -> 24
    //   64: astore 5
    //   66: aload_0
    //   67: invokevirtual 534	java/io/InputStream:close	()V
    //   70: aload_2
    //   71: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: areturn
    //   75: aload_0
    //   76: invokevirtual 534	java/io/InputStream:close	()V
    //   79: goto -9 -> 70
    //   82: astore 9
    //   84: goto -14 -> 70
    //   87: astore_3
    //   88: aload_0
    //   89: invokevirtual 534	java/io/InputStream:close	()V
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

  public static String bC(Context paramContext)
  {
    if (paramContext == null)
      return null;
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager == null)
        return null;
      String str1 = localTelephonyManager.getDeviceId();
      if (str1 == null)
        return null;
      String str2 = str1.trim();
      return str2;
    }
    catch (SecurityException localSecurityException)
    {
      aa.e("MicroMsg.Util", "getDeviceId failed, security exception");
      return null;
    }
    catch (Exception localException)
    {
      label55: break label55;
    }
  }

  public static long bD(Context paramContext)
  {
    ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
    if (localActivityManager == null)
      return 0L;
    ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    localActivityManager.getMemoryInfo(localMemoryInfo);
    return localMemoryInfo.availMem / 1024L / 1024L;
  }

  public static String bE(Context paramContext)
  {
    if (paramContext == null);
    while (true)
    {
      return null;
      try
      {
        if ((TelephonyManager)paramContext.getSystemService("phone") == null)
        {
          aa.e("MicroMsg.Util", "get line1 number failed, null tm");
          return null;
        }
      }
      catch (SecurityException localSecurityException)
      {
        aa.e("MicroMsg.Util", "getLine1Number failed, security exception");
        return null;
      }
      catch (Exception localException)
      {
      }
    }
    return null;
  }

  public static String bF(Context paramContext)
  {
    if (paramContext == null)
      return null;
    return g(paramContext.getPackageName(), paramContext);
  }

  public static String bP(long paramLong)
  {
    return new SimpleDateFormat("[yy-MM-dd HH:mm:ss]").format(new java.util.Date(1000L * paramLong));
  }

  public static int c(Integer paramInteger)
  {
    if (paramInteger == null)
      return 0;
    return paramInteger.intValue();
  }

  private static int c(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (paramInt2 <= 0)
      return 0;
    if ((paramArrayOfChar[paramInt1] != '#') || ((paramInt2 > 1) && ((paramArrayOfChar[(paramInt1 + 1)] == 'x') || (paramArrayOfChar[(paramInt1 + 1)] == 'X'))));
    try
    {
      int j = Integer.parseInt(new String(paramArrayOfChar, paramInt1 + 2, paramInt2 - 2), 16);
      return j;
      try
      {
        int i = Integer.parseInt(new String(paramArrayOfChar, paramInt1 + 1, paramInt2 - 1), 10);
        return i;
        new String(paramArrayOfChar, paramInt1, paramInt2);
        return 0;
      }
      catch (NumberFormatException localNumberFormatException1)
      {
        return 0;
      }
    }
    catch (NumberFormatException localNumberFormatException2)
    {
    }
    return 0;
  }

  public static String c(Context paramContext, Uri paramUri)
  {
    if ((paramContext == null) || (paramUri == null))
    {
      aa.e("MicroMsg.Util", "context is null or uri is null");
      return null;
    }
    String str1 = paramUri.getScheme();
    if (str1.equalsIgnoreCase("file"))
    {
      aa.i("MicroMsg.Util", "getFilePath : scheme is SCHEME_FILE");
      return paramUri.getPath();
    }
    if (str1.equalsIgnoreCase("content"))
    {
      aa.i("MicroMsg.Util", "getFilePath : scheme is SCHEME_CONTENT: " + paramUri.toString());
      Cursor localCursor = paramContext.getContentResolver().query(paramUri, null, null, null, null);
      if (localCursor == null)
      {
        aa.e("MicroMsg.Util", "getFilePath : fail, cursor is null");
        return null;
      }
      if ((localCursor.getCount() <= 0) || (!localCursor.moveToFirst()))
      {
        localCursor.close();
        aa.e("MicroMsg.Util", "getFilePath : fail, cursor getCount is 0 or moveToFirst fail");
        return null;
      }
      int i = localCursor.getColumnIndex("_data");
      if (i == -1)
      {
        localCursor.close();
        aa.e("MicroMsg.Util", "getFilePath : columnIdx is -1, column with columnName = _data does not exist");
        return null;
      }
      String str2 = localCursor.getString(i);
      localCursor.close();
      return str2;
    }
    aa.e("MicroMsg.Util", "unknown scheme");
    return null;
  }

  // ERROR //
  public static String c(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 659	java/lang/StringBuffer
    //   9: dup
    //   10: invokespecial 660	java/lang/StringBuffer:<init>	()V
    //   13: astore_1
    //   14: sipush 4096
    //   17: newarray byte
    //   19: astore 6
    //   21: aload_0
    //   22: aload 6
    //   24: invokevirtual 661	java/io/InputStream:read	([B)I
    //   27: istore 7
    //   29: iload 7
    //   31: iconst_m1
    //   32: if_icmpeq +34 -> 66
    //   35: aload_1
    //   36: new 38	java/lang/String
    //   39: dup
    //   40: aload 6
    //   42: iconst_0
    //   43: iload 7
    //   45: invokespecial 663	java/lang/String:<init>	([BII)V
    //   48: invokevirtual 666	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   51: pop
    //   52: goto -31 -> 21
    //   55: astore 4
    //   57: aload_0
    //   58: invokevirtual 534	java/io/InputStream:close	()V
    //   61: aload_1
    //   62: invokevirtual 667	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   65: areturn
    //   66: aload_0
    //   67: invokevirtual 534	java/io/InputStream:close	()V
    //   70: goto -9 -> 61
    //   73: astore 9
    //   75: goto -14 -> 61
    //   78: astore_2
    //   79: aload_0
    //   80: invokevirtual 534	java/io/InputStream:close	()V
    //   83: aload_2
    //   84: athrow
    //   85: astore 5
    //   87: goto -26 -> 61
    //   90: astore_3
    //   91: goto -8 -> 83
    //
    // Exception table:
    //   from	to	target	type
    //   14	21	55	java/lang/Exception
    //   21	29	55	java/lang/Exception
    //   35	52	55	java/lang/Exception
    //   66	70	73	java/io/IOException
    //   14	21	78	finally
    //   21	29	78	finally
    //   35	52	78	finally
    //   57	61	85	java/io/IOException
    //   79	83	90	java/io/IOException
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

  public static String cn(byte[] paramArrayOfByte)
  {
    int i = 0;
    if (paramArrayOfByte == null)
      return "(null)";
    char[] arrayOfChar1 = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
    int j = paramArrayOfByte.length;
    char[] arrayOfChar2 = new char[j * 3];
    int k = 0;
    while (i < j)
    {
      int m = paramArrayOfByte[i];
      int n = k + 1;
      arrayOfChar2[k] = ' ';
      int i1 = n + 1;
      arrayOfChar2[n] = arrayOfChar1[(0xF & m >>> 4)];
      k = i1 + 1;
      arrayOfChar2[i1] = arrayOfChar1[(m & 0xF)];
      i++;
    }
    return new String(arrayOfChar2);
  }

  public static int co(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return -1;
    return paramArrayOfByte.length;
  }

  public static String cp(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder("");
    if (paramArrayOfByte != null)
      for (int i = 0; i < paramArrayOfByte.length; i++)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(0xFF & paramArrayOfByte[i]);
        localStringBuilder.append(String.format("%02x", arrayOfObject));
      }
    return localStringBuilder.toString();
  }

  public static boolean deleteFile(String paramString)
  {
    if (hX(paramString));
    File localFile;
    do
    {
      return false;
      localFile = new File(paramString);
      if (!localFile.exists())
        return true;
    }
    while (localFile.isDirectory());
    return localFile.delete();
  }

  public static void e(String paramString1, String paramString2, long paramLong)
  {
    if (hX(paramString1));
    while (true)
    {
      return;
      File localFile1 = new File(paramString1);
      if ((localFile1.exists()) && (localFile1.isDirectory()))
      {
        File[] arrayOfFile = localFile1.listFiles();
        if ((arrayOfFile != null) && (arrayOfFile.length != 0))
        {
          int i = arrayOfFile.length;
          for (int j = 0; j < i; j++)
          {
            File localFile2 = arrayOfFile[j];
            if ((localFile2.isFile()) && (localFile2.getName().startsWith(paramString2)) && (System.currentTimeMillis() - localFile2.lastModified() - paramLong >= 0L))
              localFile2.delete();
          }
        }
      }
    }
  }

  // ERROR //
  public static boolean e(String paramString, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 101	com/tencent/mm/sdk/platformtools/cj:hX	(Ljava/lang/String;)Z
    //   4: ifne +10 -> 14
    //   7: aload_1
    //   8: invokestatic 727	com/tencent/mm/sdk/platformtools/cj:A	([B)Z
    //   11: ifeq +14 -> 25
    //   14: ldc_w 371
    //   17: ldc_w 729
    //   20: invokestatic 425	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   23: iconst_0
    //   24: ireturn
    //   25: new 318	java/io/FileOutputStream
    //   28: dup
    //   29: aload_0
    //   30: invokespecial 730	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   33: astore_2
    //   34: aload_2
    //   35: aload_1
    //   36: invokevirtual 733	java/io/FileOutputStream:write	([B)V
    //   39: aload_2
    //   40: invokevirtual 332	java/io/FileOutputStream:flush	()V
    //   43: aload_2
    //   44: invokevirtual 335	java/io/FileOutputStream:close	()V
    //   47: ldc_w 371
    //   50: ldc_w 735
    //   53: invokestatic 381	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   56: iconst_1
    //   57: ireturn
    //   58: astore 8
    //   60: aconst_null
    //   61: astore_2
    //   62: ldc_w 371
    //   65: ldc_w 737
    //   68: invokestatic 425	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   71: aload_2
    //   72: ifnull -49 -> 23
    //   75: aload_2
    //   76: invokevirtual 335	java/io/FileOutputStream:close	()V
    //   79: iconst_0
    //   80: ireturn
    //   81: astore 6
    //   83: iconst_0
    //   84: ireturn
    //   85: astore 4
    //   87: aconst_null
    //   88: astore_2
    //   89: aload_2
    //   90: ifnull +7 -> 97
    //   93: aload_2
    //   94: invokevirtual 335	java/io/FileOutputStream:close	()V
    //   97: aload 4
    //   99: athrow
    //   100: astore 7
    //   102: goto -55 -> 47
    //   105: astore 5
    //   107: goto -10 -> 97
    //   110: astore 4
    //   112: goto -23 -> 89
    //   115: astore_3
    //   116: goto -54 -> 62
    //
    // Exception table:
    //   from	to	target	type
    //   25	34	58	java/lang/Exception
    //   75	79	81	java/io/IOException
    //   25	34	85	finally
    //   43	47	100	java/io/IOException
    //   93	97	105	java/io/IOException
    //   34	43	110	finally
    //   62	71	110	finally
    //   34	43	115	java/lang/Exception
  }

  public static String eQ(int paramInt)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Long.valueOf(paramInt / 60L);
    arrayOfObject[1] = Long.valueOf(paramInt % 60L);
    return String.format("%d:%02d", arrayOfObject);
  }

  public static String formatNumber(String paramString)
  {
    String str;
    if (hX(paramString))
      str = "";
    do
    {
      return str;
      str = paramString.replaceAll(",", "");
    }
    while (str.length() <= 3);
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = -1 + str.length(); i >= 0; i--)
    {
      localStringBuffer.append(str.charAt(i));
      if (((str.length() - i) % 3 == 0) && (i != 0))
        localStringBuffer.append(",");
    }
    return localStringBuffer.reverse().toString();
  }

  public static String g(String paramString, Context paramContext)
  {
    if ((paramContext == null) || (hX(paramString)))
      return null;
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      byte[] arrayOfByte = localPackageManager.getPackageInfo(paramString, 64).signatures[0].toByteArray();
      return f.h(arrayOfByte);
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static int getInt(String paramString, int paramInt)
  {
    if (paramString != null)
      try
      {
        if (paramString.length() <= 0)
          return paramInt;
        int i = Integer.parseInt(paramString);
        return i;
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
    return paramInt;
  }

  public static long getLong(String paramString, long paramLong)
  {
    if (paramString == null)
      return paramLong;
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return paramLong;
  }

  public static int h(Object paramObject, int paramInt)
  {
    if (paramObject == null);
    do
    {
      return paramInt;
      if ((paramObject instanceof Integer))
        return ((Integer)paramObject).intValue();
    }
    while (!(paramObject instanceof Long));
    return ((Long)paramObject).intValue();
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
    return paramString.trim().matches("^[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$");
  }

  public static boolean hU(String paramString)
  {
    if (paramString == null);
    String str;
    do
    {
      return false;
      str = paramString.trim();
    }
    while ((str.length() < 6) || (str.length() > 20) || (!m(str.charAt(0))));
    for (int i = 0; ; i++)
    {
      if (i >= str.length())
        break label88;
      char c = str.charAt(i);
      if ((!m(c)) && (!n(c)) && (c != '-') && (c != '_'))
        break;
    }
    label88: return true;
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

  // ERROR //
  public static byte[] lF(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 101	com/tencent/mm/sdk/platformtools/cj:hX	(Ljava/lang/String;)Z
    //   4: ifeq +14 -> 18
    //   7: ldc_w 371
    //   10: ldc_w 898
    //   13: invokestatic 425	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   16: aconst_null
    //   17: areturn
    //   18: new 305	java/io/File
    //   21: dup
    //   22: aload_0
    //   23: invokespecial 310	java/io/File:<init>	(Ljava/lang/String;)V
    //   26: astore_1
    //   27: aload_1
    //   28: invokevirtual 705	java/io/File:exists	()Z
    //   31: ifne +22 -> 53
    //   34: ldc_w 371
    //   37: ldc_w 900
    //   40: iconst_1
    //   41: anewarray 4	java/lang/Object
    //   44: dup
    //   45: iconst_0
    //   46: aload_0
    //   47: aastore
    //   48: invokestatic 903	com/tencent/mm/sdk/platformtools/aa:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   51: aconst_null
    //   52: areturn
    //   53: aload_1
    //   54: invokevirtual 905	java/io/File:length	()J
    //   57: l2i
    //   58: istore 9
    //   60: new 280	java/io/FileInputStream
    //   63: dup
    //   64: aload_1
    //   65: invokespecial 906	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   68: astore_3
    //   69: iload 9
    //   71: newarray byte
    //   73: astore 11
    //   75: aload_3
    //   76: aload 11
    //   78: invokevirtual 432	java/io/FileInputStream:read	([B)I
    //   81: istore 12
    //   83: iload 12
    //   85: iload 9
    //   87: if_icmpeq +53 -> 140
    //   90: iconst_3
    //   91: anewarray 4	java/lang/Object
    //   94: astore 13
    //   96: aload 13
    //   98: iconst_0
    //   99: aload_0
    //   100: aastore
    //   101: aload 13
    //   103: iconst_1
    //   104: iload 9
    //   106: invokestatic 699	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   109: aastore
    //   110: aload 13
    //   112: iconst_2
    //   113: iload 12
    //   115: invokestatic 699	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   118: aastore
    //   119: ldc_w 371
    //   122: ldc_w 908
    //   125: aload 13
    //   127: invokestatic 903	com/tencent/mm/sdk/platformtools/aa:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   130: aload_3
    //   131: invokevirtual 433	java/io/FileInputStream:close	()V
    //   134: aconst_null
    //   135: areturn
    //   136: astore 14
    //   138: aconst_null
    //   139: areturn
    //   140: ldc_w 371
    //   143: ldc_w 910
    //   146: invokestatic 381	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   149: aload_3
    //   150: invokevirtual 433	java/io/FileInputStream:close	()V
    //   153: aload 11
    //   155: areturn
    //   156: astore 6
    //   158: aconst_null
    //   159: astore 7
    //   161: aload 7
    //   163: ifnull -147 -> 16
    //   166: aload 7
    //   168: invokevirtual 433	java/io/FileInputStream:close	()V
    //   171: aconst_null
    //   172: areturn
    //   173: astore 8
    //   175: aconst_null
    //   176: areturn
    //   177: astore_2
    //   178: aconst_null
    //   179: astore_3
    //   180: aload_2
    //   181: astore 4
    //   183: aload_3
    //   184: ifnull +7 -> 191
    //   187: aload_3
    //   188: invokevirtual 433	java/io/FileInputStream:close	()V
    //   191: aload 4
    //   193: athrow
    //   194: astore 15
    //   196: goto -43 -> 153
    //   199: astore 5
    //   201: goto -10 -> 191
    //   204: astore 4
    //   206: goto -23 -> 183
    //   209: astore 10
    //   211: aload_3
    //   212: astore 7
    //   214: goto -53 -> 161
    //
    // Exception table:
    //   from	to	target	type
    //   130	134	136	java/io/IOException
    //   53	69	156	java/lang/Exception
    //   166	171	173	java/io/IOException
    //   53	69	177	finally
    //   149	153	194	java/io/IOException
    //   187	191	199	java/io/IOException
    //   69	83	204	finally
    //   90	130	204	finally
    //   140	149	204	finally
    //   69	83	209	java/lang/Exception
    //   90	130	209	java/lang/Exception
    //   140	149	209	java/lang/Exception
  }

  public static int lM(int paramInt)
  {
    if (paramInt > 0);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      return 0 + new Random(System.currentTimeMillis()).nextInt(1 + (paramInt + 0));
    }
  }

  public static long lN(int paramInt)
  {
    return 1000L * paramInt;
  }

  public static boolean m(char paramChar)
  {
    return ((paramChar >= 'a') && (paramChar <= 'z')) || ((paramChar >= 'A') && (paramChar <= 'Z'));
  }

  public static CharSequence n(CharSequence paramCharSequence)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; i < paramCharSequence.length(); i++)
    {
      char c = paramCharSequence.charAt(i);
      if ((c >= '0') && (c <= '9'))
        localStringBuffer.append(c);
    }
    return localStringBuffer.toString();
  }

  public static boolean n(char paramChar)
  {
    return (paramChar >= '0') && (paramChar <= '9');
  }

  public static byte[] n(Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localByteArrayOutputStream);
    paramBitmap.recycle();
    byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
    try
    {
      localByteArrayOutputStream.close();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
    }
    return arrayOfByte;
  }

  public static boolean q(int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool;
    if (paramInt2 > paramInt3)
      if (paramInt1 < paramInt2)
      {
        bool = false;
        if (paramInt1 > paramInt3);
      }
      else
      {
        bool = true;
      }
    do
    {
      do
      {
        return bool;
        if (paramInt2 >= paramInt3)
          break;
        bool = false;
      }
      while (paramInt1 > paramInt3);
      bool = false;
    }
    while (paramInt1 < paramInt2);
    return true;
    return true;
  }

  public static String r(Context paramContext, int paramInt)
  {
    if ((paramContext == null) || (paramInt <= 0))
      return "";
    byte[] arrayOfByte;
    try
    {
      Iterator localIterator = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses().iterator();
      while (localIterator.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
        if ((localRunningAppProcessInfo.pid == paramInt) && (!hX(localRunningAppProcessInfo.processName)))
        {
          String str2 = localRunningAppProcessInfo.processName;
          return str2;
        }
      }
    }
    catch (Exception localException1)
    {
      arrayOfByte = new byte[''];
    }
    while (true)
    {
      int j;
      try
      {
        FileInputStream localFileInputStream = new FileInputStream("/proc/" + paramInt + "/cmdline");
        i = localFileInputStream.read(arrayOfByte);
        localFileInputStream.close();
        if (i > 0)
        {
          j = 0;
          if (j < i)
          {
            if (arrayOfByte[j] > 128)
              break label197;
            if (arrayOfByte[j] > 0)
              break label191;
            break label197;
          }
          String str1 = new String(arrayOfByte, 0, i);
          return str1;
        }
      }
      catch (Exception localException2)
      {
      }
      return "";
      label191: j++;
      continue;
      label197: int i = j;
    }
  }

  public static Intent sN(String paramString)
  {
    if ((paramString != null) && (!paramString.equals("")));
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.addFlags(268435456);
      localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/vnd.android.package-archive");
      return localIntent;
    }
  }

  public static int sO(String paramString)
  {
    try
    {
      long l = new SimpleDateFormat("yyyy-MM-dd").parse(paramString).getTime() / 1000L;
      return (int)l;
    }
    catch (Exception localException)
    {
    }
    return 0;
  }

  public static double sP(String paramString)
  {
    if (paramString == null)
      return 0.0D;
    try
    {
      double d = Double.parseDouble(paramString);
      return d;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return 0.0D;
  }

  public static int sQ(String paramString)
  {
    if (paramString == null)
      return 0;
    try
    {
      long l = Long.decode(paramString).longValue();
      return (int)(l & 0xFFFFFFFF);
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return 0;
  }

  public static int[] sR(String paramString)
  {
    if (paramString == null)
      return null;
    String[] arrayOfString = paramString.split(":");
    ArrayList localArrayList = new ArrayList();
    int i = arrayOfString.length;
    int j = 0;
    while (true)
      if (j < i)
      {
        String str = arrayOfString[j];
        if ((str != null) && (str.length() > 0));
        try
        {
          localArrayList.add(Integer.valueOf(Integer.valueOf(str).intValue()));
          j++;
        }
        catch (Exception localException)
        {
          while (true)
            aa.e("MicroMsg.Util", "invalid port num, ignore");
        }
      }
    int[] arrayOfInt = new int[localArrayList.size()];
    for (int k = 0; k < arrayOfInt.length; k++)
      arrayOfInt[k] = ((Integer)localArrayList.get(k)).intValue();
    return arrayOfInt;
  }

  public static String sS(String paramString)
  {
    if (paramString == null)
      return "";
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramString.length();
    int j = 0;
    if (j < i)
    {
      char c = paramString.charAt(j);
      int k = 1;
      for (int m = -1 + gfu.length; ; m--)
        if (m >= 0)
        {
          if (gfu[m] == c)
          {
            localStringBuffer.append(gfv[m]);
            k = 0;
          }
        }
        else
        {
          if (k != 0)
            localStringBuffer.append(c);
          j++;
          break;
        }
    }
    return localStringBuffer.toString();
  }

  public static String sT(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0));
    while (Build.VERSION.SDK_INT >= 8)
      return paramString;
    int i = paramString.length();
    char[] arrayOfChar = new char[i];
    int j = 0;
    int k = 0;
    int m = -1;
    int n;
    int i1;
    if (j < i)
    {
      char c = paramString.charAt(j);
      n = k + 1;
      arrayOfChar[k] = c;
      if ((c == '&') && (m == -1))
        m = n;
      while ((m == -1) || (Character.isLetter(c)) || (Character.isDigit(c)) || (c == '#'))
      {
        j++;
        k = n;
        break;
      }
      if (c == ';')
      {
        i1 = c(arrayOfChar, m, -1 + (n - m));
        if (i1 > 65535)
        {
          int i2 = i1 - 65536;
          arrayOfChar[(m - 1)] = ((char)(55296 + (i2 >> 10)));
          arrayOfChar[m] = ((char)(56320 + (i2 & 0x3FF)));
          m++;
        }
      }
    }
    while (true)
    {
      n = m;
      m = -1;
      break;
      if (i1 != 0)
      {
        arrayOfChar[(m - 1)] = ((char)i1);
        continue;
        m = -1;
        break;
        return new String(arrayOfChar, 0, k);
      }
      m = n;
    }
  }

  public static boolean sU(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      aa.e("MicroMsg.Util", "isImgFile, invalid argument");
    BitmapFactory.Options localOptions;
    do
    {
      do
        return false;
      while ((paramString.length() < 3) || (!new File(paramString).exists()));
      localOptions = new BitmapFactory.Options();
      localOptions.inJustDecodeBounds = true;
      BitmapFactory.decodeFile(paramString, localOptions);
    }
    while ((localOptions.outWidth <= 0) || (localOptions.outHeight <= 0));
    return true;
  }

  public static int sV(String paramString)
  {
    try
    {
      int j = Integer.parseInt(paramString);
      i = j;
      return i;
    }
    catch (Exception localException)
    {
      do
        int i = 0;
      while (paramString == null);
      aa.e("MicroMsg.Util", "parserInt error " + paramString);
    }
    return 0;
  }

  public static double sW(String paramString)
  {
    double d1 = 0.0D;
    try
    {
      double d2 = Double.parseDouble(paramString);
      d1 = d2;
      return d1;
    }
    catch (Exception localException)
    {
      while (paramString == null);
      aa.e("MicroMsg.Util", "parseDouble error " + paramString);
    }
    return d1;
  }

  public static byte[] sX(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.Util", "httpGet, url is null");
      return null;
    }
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    HttpResponse localHttpResponse;
    try
    {
      localHttpResponse = localDefaultHttpClient.execute(new HttpGet(paramString));
      if (localHttpResponse.getStatusLine().getStatusCode() != 200)
      {
        aa.e("MicroMsg.Util", "httpGet fail, status code = " + localHttpResponse.getStatusLine().getStatusCode());
        return null;
      }
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.Util", "httpGet exception, e = " + localException.getMessage());
      return null;
    }
    byte[] arrayOfByte = EntityUtils.toByteArray(localHttpResponse.getEntity());
    return arrayOfByte;
  }

  public static String sY(String paramString)
  {
    return paramString.replaceAll("[\\.\\-]", "").trim();
  }

  public static String sZ(String paramString)
  {
    int i = 0;
    if ((hX(paramString)) || (paramString.startsWith("+")))
      paramString = "";
    while (paramString.length() <= 5)
      return paramString;
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(paramString.subSequence(0, 3));
    if (i < -5 + paramString.length())
    {
      char c = paramString.charAt(i + 3);
      if ((c >= '0') && (c <= '9'))
        localStringBuffer.append('*');
      while (true)
      {
        i++;
        break;
        localStringBuffer.append(c);
      }
    }
    localStringBuffer.append(paramString.charAt(-2 + paramString.length()));
    localStringBuffer.append(paramString.charAt(-1 + paramString.length()));
    return localStringBuffer.toString();
  }

  public static Boolean ta(String paramString)
  {
    Matcher localMatcher1 = Pattern.compile("^[+][0-9]{10,13}$").matcher(paramString);
    Matcher localMatcher2 = Pattern.compile("^1[0-9]{10}$").matcher(paramString);
    if ((localMatcher1.matches()) || (localMatcher2.matches()));
    for (boolean bool = true; ; bool = false)
      return Boolean.valueOf(bool);
  }

  public static String tb(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
    {
      int i = paramString.lastIndexOf("@");
      if (i != -1)
        paramString = paramString.substring(0, i);
    }
    return paramString;
  }

  public static long tc(String paramString)
  {
    if (hX(paramString))
      return 0L;
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    try
    {
      long l1 = localSimpleDateFormat.parse(paramString).getTime();
      long l2 = System.currentTimeMillis();
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Long.valueOf(l1);
      arrayOfObject[1] = Long.valueOf(l2);
      aa.d("MicroMsg.Util", "todate:[%d], now date:[%d]", arrayOfObject);
      return l2 - l1;
    }
    catch (ParseException localParseException)
    {
    }
    return 0L;
  }

  public static boolean td(String paramString)
  {
    if (hX(paramString));
    int i;
    do
    {
      return false;
      i = paramString.lastIndexOf(".");
    }
    while (i == -1);
    return te(paramString.substring(i + 1));
  }

  public static boolean te(String paramString)
  {
    String str = paramString.toLowerCase();
    return (str.equals("jpg")) || (str.equals("gif")) || (str.equals("bmp")) || (str.equals("jpeg")) || (str.equals("png"));
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
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.cj
 * JD-Core Version:    0.6.2
 */