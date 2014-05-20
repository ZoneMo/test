package com.tencent.mm.pluginsdk.ui.tools.a;

import java.util.HashMap;
import java.util.Map;

public enum f
{
  private static final Map fvM;
  private static final Map fvN;
  private final int[] fvO;
  private final String[] fvP;

  static
  {
    fvA = new f("ISO8859_16", 15, 18, new String[] { "ISO-8859-16" });
    fvB = new f("SJIS", 16, 20, new String[] { "Shift_JIS" });
    fvC = new f("Cp1250", 17, 21, new String[] { "windows-1250" });
    fvD = new f("Cp1251", 18, 22, new String[] { "windows-1251" });
    fvE = new f("Cp1252", 19, 23, new String[] { "windows-1252" });
    fvF = new f("Cp1256", 20, 24, new String[] { "windows-1256" });
    fvG = new f("UnicodeBigUnmarked", 21, 25, new String[] { "UTF-16BE", "UnicodeBig" });
    fvH = new f("UTF8", 22, 26, new String[] { "UTF-8" });
    fvI = new f("ASCII", 23, new int[] { 27, 170 }, new String[] { "US-ASCII" });
    fvJ = new f("Big5");
    fvK = new f("GB18030", 25, 29, new String[] { "GB2312", "EUC_CN", "GBK" });
    fvL = new f("EUC_KR", 26, 30, new String[] { "EUC-KR" });
    f[] arrayOff1 = new f[27];
    arrayOff1[0] = fvl;
    arrayOff1[1] = fvm;
    arrayOff1[2] = fvn;
    arrayOff1[3] = fvo;
    arrayOff1[4] = fvp;
    arrayOff1[5] = fvq;
    arrayOff1[6] = fvr;
    arrayOff1[7] = fvs;
    arrayOff1[8] = fvt;
    arrayOff1[9] = fvu;
    arrayOff1[10] = fvv;
    arrayOff1[11] = fvw;
    arrayOff1[12] = fvx;
    arrayOff1[13] = fvy;
    arrayOff1[14] = fvz;
    arrayOff1[15] = fvA;
    arrayOff1[16] = fvB;
    arrayOff1[17] = fvC;
    arrayOff1[18] = fvD;
    arrayOff1[19] = fvE;
    arrayOff1[20] = fvF;
    arrayOff1[21] = fvG;
    arrayOff1[22] = fvH;
    arrayOff1[23] = fvI;
    arrayOff1[24] = fvJ;
    arrayOff1[25] = fvK;
    arrayOff1[26] = fvL;
    fvQ = arrayOff1;
    fvM = new HashMap();
    fvN = new HashMap();
    for (f localf : values())
    {
      for (int i2 : localf.fvO)
        fvM.put(Integer.valueOf(i2), localf);
      fvN.put(localf.name(), localf);
      for (String str : localf.fvP)
        fvN.put(str, localf);
    }
  }

  private f()
  {
    this(new int[] { 28 }, new String[0]);
  }

  private f(int arg3, String[] arg4)
  {
    int i;
    this.fvO = new int[] { i };
    Object localObject;
    this.fvP = localObject;
  }

  private f(int[] arg3, String[] arg4)
  {
    Object localObject1;
    this.fvO = localObject1;
    Object localObject2;
    this.fvP = localObject2;
  }

  public static f rl(String paramString)
  {
    return (f)fvN.get(paramString);
  }

  public final int getValue()
  {
    return this.fvO[0];
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.a.f
 * JD-Core Version:    0.6.2
 */