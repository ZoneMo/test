package com.tencent.tmassistantsdk.util;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.DisplayMetrics;

public class QUASetting
{
  private static final String APP_VERSION = "100";
  private static final String BUILD_NO = "100";
  public static final String KEY_ROOT = "root";
  private static final String UN_DEFINED = "NA";
  private static String mChannelId = "NA";
  private Context mContext = null;

  public QUASetting(Context paramContext)
  {
    this.mContext = paramContext;
  }

  private StringBuffer filter(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (TextUtils.isEmpty(paramString))
    {
      localStringBuffer.append("NA");
      return localStringBuffer;
    }
    char[] arrayOfChar = paramString.toCharArray();
    for (int i = 0; i < arrayOfChar.length; i++)
      if ((arrayOfChar[i] > ' ') && (arrayOfChar[i] != '/') && (arrayOfChar[i] != '_') && (arrayOfChar[i] != '&') && (arrayOfChar[i] != '|') && (arrayOfChar[i] != '-'))
        localStringBuffer.append(arrayOfChar[i]);
    return localStringBuffer;
  }

  private String getAndroidVersion()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str = Build.VERSION.RELEASE;
    if (TextUtils.isEmpty(str))
      localStringBuffer.append("NA");
    while (true)
    {
      localStringBuffer.append("_");
      localStringBuffer.append(Build.VERSION.SDK_INT);
      return localStringBuffer.toString();
      localStringBuffer.append(str);
    }
  }

  public static String getBuildNo()
  {
    if ("100".contains("BuildNo"))
      return "0000";
    return "100";
  }

  private int getDeviceHeight()
  {
    return this.mContext.getResources().getDisplayMetrics().heightPixels;
  }

  private int getDeviceWidth()
  {
    return this.mContext.getResources().getDisplayMetrics().widthPixels;
  }

  private QUASetting.ROOT_STATUS getRootStatus()
  {
    return QUASetting.ROOT_STATUS.UNKNOWN;
  }

  private String getUA()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(filter(Build.BRAND));
    localStringBuffer.append("_");
    localStringBuffer.append(filter(Build.MODEL));
    return localStringBuffer.toString();
  }

  public String buildQUA()
  {
    QUABuilder localQUABuilder = new QUABuilder();
    localQUABuilder.setBuildNo(getBuildNo());
    localQUABuilder.setChannel("");
    localQUABuilder.setChannelId(mChannelId);
    localQUABuilder.setAdrRelease(getAndroidVersion());
    localQUABuilder.setDeviceHeight(getDeviceHeight());
    localQUABuilder.setDeviceWidth(getDeviceWidth());
    localQUABuilder.setRootStatus(getRootStatus().ordinal());
    localQUABuilder.setUA(getUA());
    localQUABuilder.setVersionName("100");
    return localQUABuilder.get();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.util.QUASetting
 * JD-Core Version:    0.6.2
 */