package com.tencent.mm.network;

import java.util.List;

class Java2C
{
  public static int c(String paramString, List paramList)
  {
    long l1 = System.currentTimeMillis();
    Java2C.GetDnsReturn localGetDnsReturn = new Java2C.GetDnsReturn(null);
    getHostIps(paramString, localGetDnsReturn);
    for (int i = 0; i < localGetDnsReturn.length; i++)
      paramList.add(localGetDnsReturn.aryIps[i]);
    long l2 = System.currentTimeMillis();
    if (localGetDnsReturn.length > 0);
    for (String str = localGetDnsReturn.aryIps[0]; ; str = "0.0.0.0")
    {
      C2Java.reportStat(11L, 0L, l1, l2, paramString, str, 0, false, 0, 0, 0L, 0L, 0, 0, 0, 0L, 0L, 0L);
      return localGetDnsReturn.type;
    }
  }

  public static native void clearTask();

  private static native void getHostIps(String paramString, Java2C.GetDnsReturn paramGetDnsReturn);

  public static native String[] getIPsString(boolean paramBoolean);

  public static native String getNetworkServerIp();

  public static native void onCreate();

  public static native void onDestroy();

  public static native void onForeground(boolean paramBoolean);

  public static native void onIDCChange(boolean paramBoolean, String paramString1, String paramString2);

  public static native void onIPxx(String paramString);

  public static native void onNetworkChange();

  public static native void reportFailIp(String paramString);

  public static native void reset();

  public static native void saveAuthIPs(String[] paramArrayOfString1, int[] paramArrayOfInt1, int paramInt1, String[] paramArrayOfString2, int[] paramArrayOfInt2, int paramInt2);

  public static native void setDebugIP(String paramString1, String paramString2, String paramString3, String paramString4);

  public static native void setHostInfo(String[] paramArrayOfString1, String[] paramArrayOfString2);

  public static native void startTask(int paramInt1, MMNativeNetComm.NetCmd paramNetCmd, int paramInt2);

  public static native void stopTask(int paramInt);

  public static native void uploadFile(String paramString, int paramInt);
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.Java2C
 * JD-Core Version:    0.6.2
 */