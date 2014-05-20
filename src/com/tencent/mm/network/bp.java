package com.tencent.mm.network;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.SystemClock;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.storage.h;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public final class bp
{
  public static final String cFH = h.cfD + "/tencent/noop.dat";
  private static long cFI = Fj() / 1000L;
  private static long lastUpdateTime = 0L;

  public static long Fj()
  {
    SharedPreferences localSharedPreferences = al.getContext().getSharedPreferences("noop_prefs", 0);
    int i = localSharedPreferences.getInt("noop_strategy", 1);
    if (1 == i)
    {
      cFI = 270L;
      new StringBuilder("getNoopIntervalInMs use hard code noop:").append(cFI).toString();
      return 1000L * cFI;
    }
    if (3 == i)
    {
      long l2 = localSharedPreferences.getLong("noop_min_interval", 270L);
      if ((l2 >= 180L) && (l2 <= 3600L))
      {
        cFI = l2;
        return l2 * 1000L;
      }
      cFI = 270L;
      new StringBuilder("getNoopIntervalInMs use wx noop:").append(cFI).toString();
      return 1000L * cFI;
    }
    long l1 = System.currentTimeMillis() / 1000L;
    long[] arrayOfLong;
    if (l1 - lastUpdateTime > 3600L)
    {
      arrayOfLong = Fm();
      if ((arrayOfLong[0] < 180L) || (arrayOfLong[0] > 3600L))
        break label224;
    }
    label224: for (cFI = arrayOfLong[0]; ; cFI = 270L)
    {
      lastUpdateTime = l1;
      new StringBuilder("getNoopIntervalInMs use sync noop:").append(cFI).toString();
      return 1000L * cFI;
    }
  }

  public static long Fk()
  {
    return Fm()[1];
  }

  public static long Fl()
  {
    SharedPreferences localSharedPreferences = al.getContext().getSharedPreferences("noop_prefs", 0);
    int i = localSharedPreferences.getInt("noop_strategy", 1);
    if (1 == i);
    long l;
    do
    {
      return 270000L;
      if (3 != i)
        break;
      l = localSharedPreferences.getLong("noop_min_interval", 270L);
    }
    while ((l < 180L) || (l > 3600L));
    return l * 1000L;
    return 200L + 1000L * (cFI - SystemClock.elapsedRealtime() / 1000L % cFI);
  }

  private static long[] Fm()
  {
    long[] arrayOfLong = { 0L, 0L };
    File localFile = new File(cFH);
    if (!localFile.exists())
      return arrayOfLong;
    DataInputStream localDataInputStream;
    int i;
    try
    {
      localDataInputStream = new DataInputStream(new FileInputStream(localFile));
      i = localDataInputStream.readInt();
      if ((i < 180L) || (i > 3600L))
      {
        localDataInputStream.close();
        return arrayOfLong;
      }
    }
    catch (Exception localException)
    {
      new StringBuilder("getFromFile Exception:").append(localException.getStackTrace()).toString();
      return arrayOfLong;
    }
    long l = i;
    arrayOfLong[0] = l;
    int j = localDataInputStream.readInt();
    if (j > System.currentTimeMillis() / 1000L)
    {
      localDataInputStream.close();
      return arrayOfLong;
    }
    arrayOfLong[1] = j;
    localDataInputStream.close();
    return arrayOfLong;
  }

  public static void a(long paramLong1, long paramLong2)
  {
    new StringBuilder("setNoopInterval interval:").append(paramLong1).append(", svr:").append(paramLong2).toString();
    if (paramLong2 <= 0L)
    {
      if (paramLong1 <= 0L)
      {
        al.getContext().getSharedPreferences("noop_prefs", 0).edit().putInt("noop_strategy", 1).commit();
        return;
      }
      if ((paramLong1 >= 180L) && (paramLong1 <= 3600L))
      {
        al.getContext().getSharedPreferences("noop_prefs", 0).edit().putInt("noop_strategy", 3).putLong("noop_min_interval", paramLong1).commit();
        return;
      }
      new StringBuilder("setNoopInterval value invalid interval:").append(paramLong1).append(", _svrTime:").append(paramLong2).toString();
      return;
    }
    al.getContext().getSharedPreferences("noop_prefs", 0).edit().putInt("noop_strategy", 2).commit();
    if ((paramLong1 < 180L) || (paramLong1 > 3600L))
    {
      new StringBuilder("setNoopInterval _interval invalid, value = ").append(paramLong1).toString();
      return;
    }
    if (System.currentTimeMillis() / 1000L < paramLong2)
    {
      new StringBuilder("setNoopInterval _svrTime invalid, value = ").append(paramLong2).toString();
      return;
    }
    boolean bool;
    do
    {
      File localFile1;
      try
      {
        while (true)
        {
          localFile1 = new File(cFH);
          if (localFile1.exists())
          {
            long[] arrayOfLong = Fm();
            if (arrayOfLong[1] > 0L)
            {
              long l = arrayOfLong[1];
              if (l >= paramLong2)
                break;
            }
            try
            {
              File localFile2 = new File(cFH);
              if ((!localFile2.exists()) && (!localFile2.createNewFile()))
                break;
              DataOutputStream localDataOutputStream = new DataOutputStream(new FileOutputStream(localFile2));
              localDataOutputStream.writeInt((int)paramLong1);
              localDataOutputStream.writeInt((int)paramLong2);
              localDataOutputStream.flush();
              localDataOutputStream.close();
              return;
            }
            catch (Exception localException2)
            {
              new StringBuilder("writeFile Exception:").append(localException2.getStackTrace()).toString();
              return;
            }
          }
        }
      }
      catch (Exception localException1)
      {
        new StringBuilder("setNoopInterval Exception:").append(localException1.getStackTrace()).toString();
        return;
      }
      bool = localFile1.createNewFile();
    }
    while (bool);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.bp
 * JD-Core Version:    0.6.2
 */