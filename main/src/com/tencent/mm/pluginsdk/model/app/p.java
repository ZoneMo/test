package com.tencent.mm.pluginsdk.model.app;

import android.graphics.Bitmap.CompressFormat;
import com.tencent.mm.c.a.hw;
import com.tencent.mm.c.a.hy;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.cc;
import com.tencent.mm.w.ag;

public final class p
  implements com.tencent.mm.n.j
{
  public final com.tencent.mm.n.k a(l paraml)
  {
    aa.e("MicroMsg.AppMessageExtension", "process add app message");
    String str1 = an.a(paraml.fzs);
    String str2 = an.a(paraml.fzt);
    com.tencent.mm.n.k localk;
    if ((cj.hX(str1)) || (cj.hX(str2)))
    {
      aa.e("MicroMsg.AppMessageExtension", "empty fromuser or touser");
      localk = null;
    }
    label306: label607: label624: label757: label889: com.tencent.mm.j.a locala;
    label526: label729: label1138: 
    do
    {
      String str5;
      com.tencent.mm.j.b localb;
      ak localak3;
      do
      {
        return localk;
        String str3 = an.a(paraml.fzv);
        aa.d("MicroMsg.AppMessageExtension", "xml " + str3);
        String str4 = new String(str3);
        if (w.cp(str1))
        {
          int i1 = bv.dw(str4);
          if (i1 != -1)
          {
            str3 = (str4 + " ").substring(i1 + 2).trim();
            str4.substring(0, i1).trim();
          }
        }
        str5 = cj.sT(str3);
        localb = com.tencent.mm.j.b.bR(str5);
        if (localb == null)
        {
          aa.e("MicroMsg.AppMessageExtension", "parse app message failed, insert failed");
          return null;
        }
        k localk1 = ba.HE().qo(localb.appId);
        if ((localk1 == null) || (localk1.field_appVersion < localb.cgH))
          ba.aqh().qn(localb.appId);
        String str6 = an.a(paraml.fzv);
        ap localap = be.uz().sw();
        cc localcc = be.uz().sz();
        String str7 = v.th();
        String str8 = an.a(paraml.fzs);
        String str9 = an.a(paraml.fzt);
        int i;
        String str10;
        ak localak1;
        String str11;
        int k;
        boolean bool;
        int j;
        ak localak2;
        if ((localcc.has(str8)) || (str7.equals(str8)))
        {
          i = 1;
          if (i == 0)
            break label889;
          str10 = str9;
          localak1 = localap.ae(str10, paraml.fzo);
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = Integer.valueOf(paraml.fzo);
          arrayOfObject1[1] = Long.valueOf(localak1.Bo());
          aa.e("MicroMsg.AppMessageExtension", "dkmsgid doInsertMessage svrid:%d localid:%d", arrayOfObject1);
          if ((localak1.Bo() != 0L) && (604800000L + localak1.DL() < bv.b(str8, paraml.fzy)))
          {
            Object[] arrayOfObject3 = new Object[2];
            arrayOfObject3[0] = Integer.valueOf(paraml.fzo);
            arrayOfObject3[1] = Long.valueOf(localak1.Bo());
            aa.c("MicroMsg.AppMessageExtension", "dkmsgid doInsertMessage msg Too Old Remove it. svrid:%d localid:%d", arrayOfObject3);
            bv.q(localak1.Bo());
            localak1.bT(0L);
          }
          if (localak1.Bo() == 0L)
          {
            localak1 = new ak();
            localak1.dA(paraml.fzo);
            localak1.G(bv.b(str8, paraml.fzy));
          }
          localak1.setType(s.p(localb.type, localb.bLY, localb.cgT));
          if (localak1.getType() != 285212721)
            break label896;
          str11 = localb.content;
          localak1.setContent(str11);
          if (localak1.getType() == 285212721)
            localak1.uL(localb.bXF);
          if ((paraml.fzw != 2) || (localak1.Bo() != 0L))
            break label1138;
          switch (localak1.getType())
          {
          default:
            k = 0;
            if (k == 0)
              if (localb.type == 2)
              {
                bool = true;
                byte[] arrayOfByte = an.a(paraml.fzx);
                if (!cj.hX(localb.cgL))
                  break label915;
                String str17 = ag.Ba().a(arrayOfByte, bool, Bitmap.CompressFormat.PNG);
                aa.d("MicroMsg.AppMessageExtension", com.tencent.mm.compatible.g.j.qg() + " thumbData MsgInfo path:" + str17);
                if (!cj.hX(str17))
                {
                  localak1.uN(str17);
                  aa.d("MicroMsg.AppMessageExtension", "new thumbnail saved, path" + str17);
                }
                if (i == 0)
                  break label1290;
                localak1.bZ(1);
                localak1.uK(str9);
                j = paraml.fzr;
                localak2 = localak1;
                localak2.setStatus(j);
                localak1.uM(paraml.fzz);
                if (localak1.Bo() != 0L)
                  break label1334;
                localak1.bT(bv.d(localak1));
                com.tencent.mm.c.a.g localg = new com.tencent.mm.c.a.g();
                localg.bLO.bLP = localak1;
                localg.bLO.bLQ = localb;
                com.tencent.mm.sdk.b.a.ayH().f(localg);
              }
            break;
          case -1879048191:
          case -1879048190:
          case -1879048189:
          }
        }
        for (localk = new com.tencent.mm.n.k(localak1, true); ; localk = new com.tencent.mm.n.k(localak1, false))
        {
          if ((localak1.getType() == 301989937) && (w.cY(localak1.aCl())))
            localak1.bT(0L);
          if (localk.bLP != null)
            break label1360;
          return null;
          i = 0;
          break;
          str10 = str8;
          break label306;
          str11 = str6;
          break label526;
          k = 1;
          break label607;
          bool = false;
          break label624;
          int m = localak1.AH();
          String str14 = localb.cgO;
          String str15 = localb.cgL;
          int n = localb.cgM;
          Object[] arrayOfObject2 = new Object[4];
          arrayOfObject2[0] = Integer.valueOf(localak1.AH());
          arrayOfObject2[1] = str14;
          arrayOfObject2[2] = Integer.valueOf(n);
          arrayOfObject2[3] = str15;
          aa.e("MicroMsg.AppMessageExtension", "cdntra getThumbByCdn msgsvrid:%d aes:%s thumblen:%d url:%s ", arrayOfObject2);
          long l = cj.FD();
          String str16 = ag.Ba().j(cj.FD(), "", "");
          com.tencent.mm.modelcdntran.m localm = new com.tencent.mm.modelcdntran.m();
          localm.field_mediaId = h.a("downappthumb", localak1.DL(), str8, String.valueOf(m));
          localm.field_fullpath = str16;
          localm.field_fileType = CdnTransportEngine.coO;
          localm.field_totalLen = n;
          localm.field_aesKey = str14;
          localm.field_fileId = str15;
          localm.field_priority = CdnTransportEngine.coL;
          localm.cpJ = new q(this, localak1, l, n, str16, bool);
          com.tencent.mm.modelcdntran.j.yy().a(localm);
          break label729;
          if (cj.hX(localb.thumburl))
            break label729;
          aa.d("MicroMsg.AppMessageExtension", "get cdn image " + localb.thumburl);
          f localf = new f();
          localf.url = localb.thumburl;
          String str12 = com.tencent.mm.a.f.h(cj.FD().getBytes());
          localf.fhe = ag.Ba().fU(str12);
          ag.Ba();
          String str13 = com.tencent.mm.w.g.fV(str12);
          new d(localf).start();
          localak1.uN(str13);
          aa.d("MicroMsg.AppMessageExtension", "new thumbnail saved, path " + localf.fhe);
          break label729;
          localak1.bZ(0);
          localak1.uK(str8);
          if (paraml.fzr > 3)
          {
            j = paraml.fzr;
            localak2 = localak1;
            break label757;
          }
          j = 3;
          localak2 = localak1;
          break label757;
          localap.a(paraml.fzo, localak1);
        }
        localak3 = localk.bLP;
      }
      while ((localak3.getType() == 285212721) || (localak3.getType() == 301989937));
      if (localak3.getType() == -1879048190)
      {
        hy localhy = new hy();
        localhy.bRu.bRv = str5;
        localhy.bRu.description = localb.description;
        localhy.bRu.bLP = localak3;
        com.tencent.mm.sdk.b.a.ayH().f(localhy);
      }
      locala = new com.tencent.mm.j.a();
      localb.a(locala);
      locala.field_msgId = localak3.Bo();
    }
    while (ba.HD().b(locala));
    label896: label915: label1334: label1360: return null;
  }

  public final void c(ak paramak)
  {
    aa.d("MicroMsg.AppMessageExtension", "onPreDelMessage " + paramak.ot());
    hw localhw = new hw();
    localhw.bRs.bRt = paramak.ot();
    com.tencent.mm.sdk.b.a.ayH().f(localhw);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.p
 * JD-Core Version:    0.6.2
 */