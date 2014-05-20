package com.tencent.mm.kvcomm;

import android.os.Build;
import android.os.Build.VERSION;
import com.tencent.mm.sdk.platformtools.z;

public class KVReportJni$KVReportC2Java
{
  public static KVReportJni.KVCommBaseInfo getKVCommReqBaseInfo()
  {
    KVReportJni.KVCommBaseInfo localKVCommBaseInfo = new KVReportJni.KVCommBaseInfo();
    localKVCommBaseInfo.deviceModel = (Build.MODEL + Build.CPU_ABI);
    localKVCommBaseInfo.deviceBrand = Build.BRAND;
    localKVCommBaseInfo.osName = ("android-" + Build.MANUFACTURER);
    localKVCommBaseInfo.osVersion = Build.VERSION.SDK_INT;
    localKVCommBaseInfo.languageVer = z.azj();
    return localKVCommBaseInfo;
  }

  public static int getSingleReportBufSizeB()
  {
    return 300;
  }

  public static void onReportKVDataReady(byte[] paramArrayOfByte)
  {
    try
    {
      if ((KVReportJni.kvReportNotify != null) && (paramArrayOfByte != null) && (paramArrayOfByte.length > 0))
        KVReportJni.kvReportNotify.onReportKVDataReady(paramArrayOfByte);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.kvcomm.KVReportJni.KVReportC2Java
 * JD-Core Version:    0.6.2
 */