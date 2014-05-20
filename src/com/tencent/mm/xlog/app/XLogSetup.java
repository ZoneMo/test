package com.tencent.mm.xlog.app;

import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.jni.platformcomm.PlatformComm;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.xlog.LogLogicJni;
import com.tencent.mm.xlog.Xlog;

public class XLogSetup
{
  private static final String TAG = "MicroMsg.XLogSetup";

  public static void keep_setupXLog(Integer paramInteger1, String paramString1, Integer paramInteger2, Boolean paramBoolean1, Boolean paramBoolean2, String paramString2, boolean paramBoolean)
  {
    int i = 2;
    int j = 1;
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = paramInteger1;
    arrayOfObject[j] = paramString1;
    arrayOfObject[i] = paramInteger2;
    arrayOfObject[3] = paramBoolean1;
    arrayOfObject[4] = paramBoolean2;
    arrayOfObject[5] = paramString2;
    aa.d("MicroMsg.XLogSetup", "keep_setupXLog version:%d, path:%s, toolLevel:%d, isSync:%b, isLocatOn:%b, nameprefix:%s", arrayOfObject);
    aa.a(new Xlog());
    PlatformComm.a(al.getContext(), new Handler(Looper.getMainLooper()));
    int k;
    if (paramBoolean1.booleanValue())
    {
      if (paramInteger2 != null)
        LogLogicJni.setIPxxLogML(paramInteger2.intValue(), j);
      LogLogicJni.setConsoleLogOpen(paramBoolean2.booleanValue());
      LogLogicJni.setIsAlphaVersion(paramBoolean);
      k = LogLogicJni.getLogLevelFromCfg(paramInteger1.intValue());
      if ((paramInteger2 != null) || (6 != k))
        break label160;
    }
    while (true)
    {
      Xlog.setLogLevel(i);
      Xlog.appenderOpen(LogLogicJni.getAppenderModeFromCfg(paramInteger1.intValue()), paramString1, paramString2);
      return;
      j = 0;
      break;
      label160: i = k;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.xlog.app.XLogSetup
 * JD-Core Version:    0.6.2
 */