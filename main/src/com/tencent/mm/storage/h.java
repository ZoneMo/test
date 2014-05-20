package com.tencent.mm.storage;

import com.tencent.mm.a.c;
import com.tencent.mm.compatible.g.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.z;
import java.io.File;

public final class h
{
  public static String cfC;
  public static final String cfD;
  public static final String cfE;
  public static final String cfF;
  public static final String cfG;
  public static final String ggA;
  public static final String ggB;
  public static String ggu = "/data/data/com.tencent.mm/";
  public static final String ggv;
  public static final String ggw;
  public static final String ggx;
  public static final String ggy;
  public static final String ggz;

  static
  {
    cfC = ggu + "MicroMsg/";
    cfD = l.getExternalStorageDirectory().getAbsolutePath();
    cfE = cfD + "/tencent/MicroMsg/";
    cfF = cfD + "/tencent/MicroMsg/Download/";
    ggv = cfD + "/tencent/MicroMsg/vusericon/";
    ggw = cfD + "/tencent/MicroMsg/Game/";
    ggx = cfD + "/tencent/MicroMsg/Download/VoiceRemind";
    ggy = cfE + "watchdog/";
    ggz = cfE + "xlog";
    ggA = cfE + "crash/";
    ggB = cfE + "avatar/";
    String str1 = cfD + "/tencent/MicroMsg/WeChat/";
    String str2 = cfD + "/tencent/MicroMsg/WeiXin/";
    if (!c.as(str1))
      if (!c.as(str2));
    while (true)
    {
      cfG = str2;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = cfG;
      aa.f("MicroMsg.ConstantsStorage", "my camera path %s", arrayOfObject);
      return;
      if (!z.azj().equals("zh_CN"))
        str2 = str1;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.h
 * JD-Core Version:    0.6.2
 */