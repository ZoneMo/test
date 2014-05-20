package com.tencent.mm.plugin.voicereminder.a;

import com.tencent.mm.a.d;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.Map;

public final class k
{
  private static final d chd = new d(100);
  public int cgC;
  public String cgD;
  public String cgE;
  public int ePe;
  public int ePf;
  public String ePg;
  public int ePh;
  public int ePi;
  public int ePj;
  public int ePk;

  public static k pl(String paramString)
  {
    k localk1;
    if (cj.hX(paramString))
      localk1 = null;
    int j;
    do
    {
      return localk1;
      int i = paramString.indexOf('<');
      if (i > 0)
        paramString = paramString.substring(i);
      j = paramString.hashCode();
      localk1 = (k)chd.get(Integer.valueOf(j));
    }
    while (localk1 != null);
    Map localMap = u.aL(paramString, "msg");
    if (localMap == null)
    {
      aa.e("MicroMsg.VoiceRemindAppMsgExInfo", "parse msg failed");
      return null;
    }
    try
    {
      k localk2 = new k();
      localk2.cgC = cj.getInt((String)localMap.get(".msg.appmsg.appattach.totallen"), 0);
      localk2.cgE = ((String)localMap.get(".msg.appmsg.appattach.attachid"));
      localk2.cgD = ((String)localMap.get(".msg.appmsg.appattach.fileext"));
      localk2.ePe = cj.getInt((String)localMap.get(".msg.appmsg.voicecmd.reminder.$remindtime"), 0);
      localk2.ePf = cj.getInt((String)localMap.get(".msg.appmsg.voicecmd.reminder.$remindid"), 0);
      localk2.ePg = ((String)localMap.get(".msg.appmsg.voicecmd.reminder.$remindattachid"));
      localk2.ePh = cj.getInt((String)localMap.get(".msg.appmsg.voicecmd.reminder.$remindattachtotallen"), 0);
      localk2.ePi = cj.getInt((String)localMap.get(".msg.appmsg.voicecmd.reminder.$remindformat"), 0);
      localk2.ePj = cj.getInt((String)localMap.get(".msg.appmsg.voicecmd.reminder.$originformat"), 0);
      localk2.ePk = cj.getInt((String)localMap.get(".msg.appmsg.voicecmd.reminder.$msgsvrid"), 0);
      chd.f(Integer.valueOf(j), localk2);
      return localk2;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.VoiceRemindAppMsgExInfo", "parse amessage xml failed");
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.k
 * JD-Core Version:    0.6.2
 */