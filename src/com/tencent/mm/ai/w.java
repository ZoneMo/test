package com.tencent.mm.ai;

import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.n.f;
import com.tencent.mm.n.k;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import java.io.File;
import java.util.Map;

public final class w
  implements com.tencent.mm.n.j
{
  public final k a(l paraml)
  {
    if (paraml == null)
    {
      aa.e("MicroMsg.VideoMsgExtension", "onPreAddMessage cmdAM is null , give up.");
      return null;
    }
    String str1 = an.a(paraml.fzs);
    if (str1.equals(f.c(2, "")))
      return null;
    ak localak1 = be.uz().sw().ae(str1, paraml.fzo);
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paraml.fzo);
    arrayOfObject1[1] = Long.valueOf(localak1.Bo());
    aa.e("MicroMsg.VideoMsgExtension", "dkmsgid prepareMsgInfo svrid:%d localid:%d", arrayOfObject1);
    if ((localak1 != null) && (localak1.Bo() != 0L) && (604800000L + localak1.DL() < bv.b(str1, paraml.fzy)))
    {
      Object[] arrayOfObject4 = new Object[2];
      arrayOfObject4[0] = Integer.valueOf(paraml.fzo);
      arrayOfObject4[1] = Long.valueOf(localak1.Bo());
      aa.c("MicroMsg.VideoMsgExtension", "dkmsgid prepareMsgInfo msg Too Old Remove it. svrid:%d localid:%d", arrayOfObject4);
      bv.q(localak1.Bo());
      localak1.bT(0L);
    }
    if ((localak1 != null) && (localak1.Bo() != 0L))
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(paraml.fzo);
      aa.e("MicroMsg.VideoMsgExtension", "Msgid:%d duplicate give up ", arrayOfObject3);
      return null;
    }
    String str2 = an.a(paraml.fzv);
    q localq = new q();
    localq.setUser(str1);
    localq.G(paraml.fzy);
    localq.dA(paraml.fzo);
    localq.gU(paraml.fzv.getString());
    aa.d("MicroMsg.VideoMsgExtension", "parseVideoMsgXML content:" + str2);
    Map localMap = u.aL(str2, "msg");
    if (localMap == null)
      return null;
    while (true)
    {
      String str3;
      String str4;
      int i;
      String str6;
      ak localak2;
      long l1;
      try
      {
        localq.cJ(cj.getInt((String)localMap.get(".msg.videomsg.$length"), 0));
        localq.ez(cj.getInt((String)localMap.get(".msg.videomsg.$playlength"), 0));
        localq.gS((String)localMap.get(".msg.videomsg.$fromusername"));
        str3 = (String)localMap.get(".msg.videomsg.$cdnthumbaeskey");
        str4 = (String)localMap.get(".msg.videomsg.$cdnthumburl");
        i = cj.getInt((String)localMap.get(".msg.videomsg.$cdnthumblength"), 0);
        int j = cj.getInt((String)localMap.get(".msg.videomsg.$type"), 0);
        aa.d("MicroMsg.VideoMsgExtension", "video msg exportType :" + j);
        if (j != 44)
          break label1047;
        k = 1;
        localq.eA(k);
        if (localq.DG().equals(f.c(2, "")))
          return null;
        String str5 = (String)localMap.get(".msg.commenturl");
        str6 = r.gY(localq.DG());
        localq.gR(str6);
        localak2 = new ak();
        localak2.dA(localq.AH());
        localak2.uN(localq.getFileName());
        localak2.setStatus(paraml.fzr);
        localak2.G(bv.b(localq.getUser(), localq.DL()));
        localak2.uK(localq.getUser());
        localak2.setType(43);
        localak2.setContent(o.a(localq.DG(), 0L, false));
        localak2.uL(str5);
        localak2.uM(paraml.fzz);
        l1 = bv.d(localak2);
        if (l1 <= 0L)
        {
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Long.valueOf(l1);
          arrayOfObject2[1] = Integer.valueOf(localq.AH());
          aa.b("MicroMsg.VideoMsgExtension", "onPreAddMessage insert msg failed local:%d svrid:%d", arrayOfObject2);
          return null;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.VideoMsgExtension", "parsing voice msg xml failed");
        return null;
      }
      localq.dy((int)l1);
      localq.H(cj.FC());
      localq.dw(0);
      localq.setStatus(111);
      aa.d("MicroMsg.VideoMsgExtension", "Insert fileName[" + localq.getFileName() + "] size:" + localq.vR() + " svrid:" + localq.AH() + " timelen:" + localq.DO() + " user:" + localq.getUser() + " human:" + localq.DG());
      if (!m.DE().a(localq))
      {
        aa.d("MicroMsg.VideoMsgExtension", "Insert Error fileName:" + localq.getFileName());
        return null;
      }
      String str7 = m.DE().ha(str6);
      byte[] arrayOfByte = an.a(paraml.fzx);
      if (!cj.A(arrayOfByte))
        r.a(str7, 0, arrayOfByte);
      while (true)
      {
        return new k(localak2, true);
        int m = localq.AH();
        long l2 = cj.FD();
        String str8 = str7 + ".tmp";
        com.tencent.mm.modelcdntran.m localm = new com.tencent.mm.modelcdntran.m();
        localm.field_mediaId = h.a("downvideothumb", localq.DL(), localq.getUser(), String.valueOf(m));
        localm.field_fullpath = str8;
        localm.field_fileType = CdnTransportEngine.coO;
        localm.field_totalLen = i;
        localm.field_aesKey = str3;
        localm.field_fileId = str4;
        localm.field_priority = CdnTransportEngine.coL;
        localm.cpJ = new x(this, localq, l2, i, str7, str8);
        com.tencent.mm.modelcdntran.j.yy().a(localm);
      }
      label1047: int k = 0;
    }
  }

  public final void c(ak paramak)
  {
    if (paramak == null);
    String str;
    do
    {
      return;
      str = paramak.ot();
    }
    while ((cj.hX(str)) || (!m.DE().gX(str)));
    try
    {
      new File(m.DE().ha(str)).delete();
      new File(m.DE().gZ(str)).delete();
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.VideoLogic", "ERR: Delete file Failed" + com.tencent.mm.compatible.g.j.qg() + " file:" + str + " msg:" + localException.getMessage());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.w
 * JD-Core Version:    0.6.2
 */