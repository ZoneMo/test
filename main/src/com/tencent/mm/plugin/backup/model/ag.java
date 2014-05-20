package com.tencent.mm.plugin.backup.model;

import android.graphics.Bitmap.CompressFormat;
import com.tencent.mm.a.c;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.o;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.protocal.a.ae;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.m;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.h;
import com.tencent.mm.storage.u;
import com.tencent.mm.w.g;
import java.util.LinkedList;

public final class ag
  implements y
{
  public final int a(ae paramae, boolean paramBoolean, ak paramak, LinkedList paramLinkedList)
  {
    int k;
    String str8;
    switch (paramak.getType())
    {
    default:
      if (cj.hX(paramak.getContent()))
      {
        k = 0;
        String str7 = paramak.getContent();
        if ((paramak.rO() != 1) && (com.tencent.mm.plugin.backup.c.a.cp(paramak.aCl())))
        {
          int m = paramak.getContent().indexOf(':');
          if (m != -1)
            str7 = paramak.getContent().substring(m + 1);
        }
        str8 = cj.sT(str7);
        if (str8 == null)
          break label803;
      }
      break;
    case 285212721:
    case 1048625:
    }
    label803: for (com.tencent.mm.j.b localb2 = com.tencent.mm.j.b.bR(str8); ; localb2 = null)
    {
      if (localb2 == null)
      {
        aa.e("MicroMsg.MMBakItemAppMsg", "content is null");
        int j;
        String str6;
        do
        {
          return 0;
          if (cj.hX(paramak.getContent()));
          for (j = 0; paramBoolean; j = paramak.getContent().getBytes().length)
            return j;
          str6 = a.ii(paramak.getContent());
        }
        while (cj.hX(str6));
        rw localrw2 = new rw();
        localrw2.sn(cj.R(str6, ""));
        paramae.fzv = localrw2;
        return j;
        if (cj.hX(paramak.getContent()));
        for (int i = 0; paramak.getContent() == null; i = paramak.getContent().getBytes().length)
          return -1;
        String str1 = u.uk(paramak.getContent()).aAU().trim();
        if (!r.iq(str1))
        {
          str1 = paramak.getContent();
          if (!r.iq(str1))
          {
            aa.e("MicroMsg.MMBakItemAppMsg", "get xml error " + str1);
            return 0;
          }
        }
        String str2 = str1;
        if (!cj.hX(str2))
        {
          rw localrw1 = new rw();
          localrw1.sn(cj.R(str2, ""));
          paramae.fzv = localrw1;
          com.tencent.mm.j.b localb1 = com.tencent.mm.j.b.bR(str2);
          String str3 = d.Gj().sJ();
          String str4 = d.Gj().Ba().fX(paramak.ot());
          String str5 = str3 + localb1.cgF;
          if (c.ar(str4) <= 0)
            return -1;
          i = i + r.a(str4, paramae, paramLinkedList, 6, paramBoolean) + r.a(str5, paramae, paramLinkedList, 5, paramBoolean);
        }
        return i;
        k = paramak.getContent().getBytes().length;
        break;
      }
      aa.d("MicroMsg.MMBakItemAppMsg", "content type " + localb2.type);
      String str9 = d.Gj().Ba().fX(paramak.ot());
      if (c.as(str9))
      {
        k += r.a(str9, paramae, paramLinkedList, 6, paramBoolean);
        switch (localb2.type)
        {
        case 3:
        case 4:
        case 5:
        default:
        case 2:
        case 6:
        case 7:
        }
      }
      while (true)
      {
        return k;
        if (localb2.type != 2)
          break;
        return -1;
        if (!cj.hX(localb2.cgE))
        {
          com.tencent.mm.pluginsdk.model.app.a locala2 = d.Gj().HF().qk(localb2.cgE);
          if (((locala2 != null) && (locala2.vN())) || ((paramak.rO() == 1) && (locala2 != null) && (locala2.field_isUpload)))
          {
            String str10 = locala2.field_fileFullPath;
            if (c.as(str10))
            {
              aa.d("MicroMsg.MMBakItemAppMsg", "image " + str10);
              k += r.a(str10, paramae, paramLinkedList, 8, paramBoolean);
              continue;
              com.tencent.mm.pluginsdk.model.app.a locala1 = d.Gj().HF().qk(localb2.cgE);
              if (((locala1 != null) && (locala1.vN())) || ((paramak.rO() == 1) && (locala1 != null) && (locala1.field_isUpload)))
              {
                aa.d("MicroMsg.MMBakItemAppMsg", "full path " + locala1.field_fileFullPath);
                if (c.as(locala1.field_fileFullPath))
                  k += r.a(locala1.field_fileFullPath, paramae, paramLinkedList, 7, paramBoolean);
              }
            }
          }
        }
      }
    }
  }

  public final int a(String paramString, ae paramae, ak paramak)
  {
    String str1 = paramae.fzs.getString();
    String str2 = paramae.fzv.getString();
    String str3 = d.Gr() + "mmbakMeida/";
    if (str2 == null)
      return 0;
    paramak.setContent(str2);
    if ((paramak.rO() != 1) && (com.tencent.mm.plugin.backup.c.a.cp(str1)))
    {
      int m = com.tencent.mm.plugin.backup.c.a.dw(paramae.fzv.getString());
      if (m != -1)
        str2 = (paramae.fzv.getString() + " ").substring(m + 2).trim();
    }
    String str4 = cj.sT(str2);
    com.tencent.mm.j.b localb1 = com.tencent.mm.j.b.bR(str4);
    if (localb1 == null)
    {
      aa.e("MicroMsg.MMBakItemAppMsg", "parse app message failed, insert failed");
      return 0;
    }
    k localk = new k();
    localk.field_appId = localb1.appId;
    if ((d.Gj().HE().c(localk, new String[0])) && (localk.field_appVersion < localb1.cgH))
      d.Gn().d(1, localb1.appId);
    paramak.setType(s.p(localb1.type, localb1.bLY, localb1.cgT));
    byte[] arrayOfByte = r.c(paramae, 6);
    boolean bool;
    if ((arrayOfByte != null) && (paramak.Bo() == 0L))
    {
      if (localb1.type != 2)
        break label821;
      bool = true;
      String str11 = d.Gj().Ba().a(arrayOfByte, bool, Bitmap.CompressFormat.PNG);
      aa.d("MicroMsg.MMBakItemAppMsg", j.qg() + " thumbData MsgInfo path:" + str11);
      if (!cj.hX(str11))
      {
        paramak.uN(str11);
        aa.d("MicroMsg.MMBakItemAppMsg", "new thumbnail saved, path" + str11);
      }
    }
    String str5 = r.a(paramae, 8);
    int i = r.b(paramae, 8);
    if (cj.hX(str5))
    {
      str5 = r.a(paramae, 7);
      i = r.b(paramae, 7);
    }
    String str6 = str3 + str5;
    com.tencent.mm.plugin.backup.c.a.d(paramak);
    com.tencent.mm.j.a locala = new com.tencent.mm.j.a();
    localb1.a(locala);
    locala.field_msgId = paramak.Bo();
    d.Gj().HD().b(locala);
    ap localap;
    if (!cj.hX(str5))
    {
      localap = d.Gj().sw();
      if (!paramString.equals(paramae.fzs.getString()))
        break label827;
    }
    label821: label827: for (String str7 = paramae.fzt.getString(); ; str7 = paramae.fzs.getString())
    {
      ak localak = localap.ae(str7, paramae.fzo);
      com.tencent.mm.pluginsdk.model.app.a locala1 = d.Gj().HF().qk(localb1.cgE);
      if (locala1 == null)
      {
        long l2 = localak.Bo();
        com.tencent.mm.j.b localb2 = com.tencent.mm.j.b.bR(str4);
        if (localb2 != null)
        {
          String str8 = h.cfF + "da_" + au.FD();
          if (!au.hX(localb2.cgD))
            str8 = str8 + "." + localb2.cgD;
          int j = localb2.sdkVer;
          String str9 = localb2.appId;
          String str10 = localb2.cgE;
          int k = localb2.cgC;
          com.tencent.mm.pluginsdk.model.app.a locala2 = new com.tencent.mm.pluginsdk.model.app.a();
          locala2.field_fileFullPath = str8;
          locala2.field_appId = str9;
          locala2.field_sdkVer = j;
          locala2.field_mediaSvrId = str10;
          locala2.field_totalLen = k;
          locala2.field_status = 101L;
          locala2.field_isUpload = false;
          locala2.field_createTime = au.FD();
          locala2.field_lastModifyTime = au.FC();
          locala2.field_msgInfoId = l2;
          locala2.field_netTimes = 0L;
          d.Gj().HF().b(locala2);
        }
        locala1 = d.Gj().HF().qk(localb1.cgE);
      }
      long l1 = i;
      locala1.field_offset = l1;
      locala1.field_totalLen = l1;
      m.f(str6, locala1.field_fileFullPath, false);
      d.Gj().HF().a(locala1, new String[0]);
      return 0;
      bool = false;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.ag
 * JD-Core Version:    0.6.2
 */