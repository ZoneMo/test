package com.tencent.tmassistantsdk.util;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;

public class TMLog
{
  private static boolean mDebugFlagForSDK = false;
  private static String mDebugFlagForSDKTag = "";
  private static boolean mHardDebugFlag = false;
  private static HashMap mUseTimeLongList;
  private static HashMap mUseTimeStringList = new HashMap();

  static
  {
    mUseTimeLongList = new HashMap();
  }

  public static void d(String paramString1, String paramString2)
  {
    isForDebug();
  }

  public static void debugE(String paramString)
  {
    if ((mDebugFlagForSDK) && (!TextUtils.isEmpty(mDebugFlagForSDKTag)));
  }

  public static void debugV(String paramString)
  {
    if ((mDebugFlagForSDK) && (!TextUtils.isEmpty(mDebugFlagForSDKTag)));
  }

  public static void e(String paramString1, String paramString2)
  {
    isForDebug();
  }

  public static void i(String paramString1, String paramString2)
  {
    isForDebug();
  }

  public static boolean isForDebug()
  {
    return mHardDebugFlag;
  }

  public static void setDebugLog(boolean paramBoolean, String paramString)
  {
    mDebugFlagForSDK = paramBoolean;
    mDebugFlagForSDKTag = paramString;
  }

  public static void time(String paramString)
  {
    time("UseTime", paramString, false);
  }

  public static void time(String paramString1, String paramString2)
  {
    time(paramString1, paramString2, false);
  }

  public static void time(String paramString1, String paramString2, boolean paramBoolean)
  {
    int i = 0;
    if (!isForDebug())
      return;
    ArrayList localArrayList1 = (ArrayList)mUseTimeStringList.get(paramString1);
    ArrayList localArrayList2;
    if (localArrayList1 == null)
    {
      localArrayList2 = new ArrayList();
      mUseTimeStringList.put(paramString1, localArrayList2);
    }
    for (ArrayList localArrayList3 = localArrayList2; ; localArrayList3 = localArrayList1)
    {
      localArrayList3.add(paramString2);
      ArrayList localArrayList4 = (ArrayList)mUseTimeLongList.get(paramString1);
      ArrayList localArrayList5;
      if (localArrayList4 == null)
      {
        localArrayList5 = new ArrayList();
        mUseTimeLongList.put(paramString1, localArrayList5);
      }
      for (ArrayList localArrayList6 = localArrayList5; ; localArrayList6 = localArrayList4)
      {
        localArrayList6.add(Long.valueOf(System.currentTimeMillis()));
        if (!paramBoolean)
          break;
        StringBuffer localStringBuffer = new StringBuffer();
        long l = ((Long)localArrayList6.get(0)).longValue();
        localStringBuffer.append("total time:");
        localStringBuffer.append(((Long)localArrayList6.get(-1 + localArrayList6.size())).longValue() - l);
        localStringBuffer.append(" ");
        while (i < localArrayList3.size())
        {
          localStringBuffer.append(((Long)localArrayList6.get(i)).longValue() - l);
          l = ((Long)localArrayList6.get(i)).longValue();
          localStringBuffer.append(" ");
          localStringBuffer.append((String)localArrayList3.get(i));
          localStringBuffer.append(" ");
          i++;
        }
        localStringBuffer.toString();
        localArrayList3.clear();
        localArrayList6.clear();
        return;
      }
    }
  }

  public static void time(String paramString, boolean paramBoolean)
  {
    time("UseTime", paramString, paramBoolean);
  }

  public static void v(String paramString1, String paramString2)
  {
    isForDebug();
  }

  public static void w(String paramString1, String paramString2)
  {
    isForDebug();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.util.TMLog
 * JD-Core Version:    0.6.2
 */