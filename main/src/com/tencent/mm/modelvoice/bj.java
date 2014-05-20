package com.tencent.mm.modelvoice;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.n.j;
import com.tencent.mm.n.k;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class bj
  implements j
{
  private static Set cDf = new HashSet();

  public static void b(c paramc)
  {
    cDf.remove(paramc);
  }

  public static void c(c paramc)
  {
    if (!cDf.contains(paramc))
      cDf.add(paramc);
  }

  public final k a(l paraml)
  {
    if (paraml == null)
    {
      aa.e("MicroMsg.VoiceMessageExtension", "onPreAddMessage cmdAM is null , give up.");
      return null;
    }
    aa.v("MicroMsg.VoiceMessageExtension", "parseVoiceMsg srvId:" + paraml.fzo);
    String str1 = com.tencent.mm.platformtools.an.a(paraml.fzs);
    if (str1.equals(v.th()));
    for (String str2 = com.tencent.mm.platformtools.an.a(paraml.fzt); ; str2 = str1)
    {
      bh localbh1;
      int i;
      String str4;
      while (true)
      {
        ak localak1 = be.uz().sw().ae(str2, paraml.fzo);
        if ((localak1 != null) && (localak1.Bo() != 0L) && (604800000L + localak1.DL() < bv.b(str2, paraml.fzy)))
        {
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Integer.valueOf(paraml.fzo);
          aa.c("MicroMsg.VoiceMessageExtension", "dkmsgid prepareMsgInfo msg Too Old Remove it. svrid:%d", arrayOfObject);
          bv.q(paraml.fzo);
          bh localbh3 = bc.Er().eE(paraml.fzo);
          if ((localbh3 != null) && (!cj.hX(localbh3.getFileName())))
            bi.hw(localbh3.getFileName());
        }
        localbh1 = new bh();
        localbh1.setUser(str2);
        localbh1.G(paraml.fzy);
        localbh1.dA(paraml.fzo);
        String str3 = com.tencent.mm.platformtools.an.a(paraml.fzv);
        if (w.cp(str1))
        {
          str3 = bv.dz(str3);
          aa.v("MicroMsg.VoiceMessageExtension", "chatroom voicemsg, new content=" + str3);
        }
        Map localMap = u.aL(str3, "msg");
        if (localMap == null)
          break;
        try
        {
          localbh1.ev(Integer.valueOf((String)localMap.get(".msg.voicemsg.$length")).intValue());
          localbh1.hn((String)localMap.get(".msg.voicemsg.$clientmsgid"));
          i = Integer.valueOf((String)localMap.get(".msg.voicemsg.$endflag")).intValue();
          int j = Integer.valueOf((String)localMap.get(".msg.voicemsg.$cancelflag")).intValue();
          localbh1.eD(Integer.valueOf((String)localMap.get(".msg.voicemsg.$voicelength")).intValue());
          localbh1.gS((String)localMap.get(".msg.voicemsg.$fromusername"));
          str4 = (String)localMap.get(".msg.commenturl");
          localbh1.eC(Integer.valueOf(cj.R((String)localMap.get(".msg.voicemsg.$forwardflag"), "0")).intValue());
          if (j == 1)
          {
            aa.v("MicroMsg.VoiceMessageExtension", "cancelFlag = 1 srvId:" + paraml.fzo);
            bh localbh2 = bc.Er().eE(localbh1.AH());
            if (localbh2 == null)
              break;
            bi.hu(localbh2.getFileName());
            return null;
          }
        }
        catch (Exception localException)
        {
          aa.e("MicroMsg.VoiceMessageExtension", "parsing voice msg xml failed");
          return null;
        }
      }
      if (i == 1)
      {
        aa.v("MicroMsg.VoiceMessageExtension", "endFlag = 1 srvId:" + paraml.fzo);
        localbh1.cJ(localbh1.DH());
      }
      localbh1.cL(5806);
      byte[] arrayOfByte = com.tencent.mm.platformtools.an.a(paraml.fzx);
      if (arrayOfByte != null)
        aa.d("MicroMsg.VoiceMessageExtension", "Voice Buf Len:" + arrayOfByte.length + " srvId:" + paraml.fzo);
      ak localak3;
      if (bi.a(localbh1, arrayOfByte, paraml.fzr, str4) > 0)
      {
        localak3 = be.uz().sw().ae(localbh1.getUser(), localbh1.AH());
        localak3.mi(0);
        Iterator localIterator = cDf.iterator();
        while (localIterator.hasNext())
          com.tencent.mm.sdk.platformtools.an.i(new bk(this, (c)localIterator.next(), localbh1));
      }
      for (ak localak2 = localak3; ; localak2 = null)
      {
        if ((localak2 != null) && (localak2.Bo() > 0L));
        for (boolean bool = true; ; bool = false)
          return new k(localak2, bool);
      }
    }
  }

  public final void c(ak paramak)
  {
    aa.d("MicroMsg.VoiceMessageExtension", "onPreDelMessage " + paramak.ot() + " " + paramak.aCl());
    if (!w.cQ(paramak.aCl()))
      bi.hw(paramak.ot());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.bj
 * JD-Core Version:    0.6.2
 */