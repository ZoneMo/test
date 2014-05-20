package com.tencent.mm.pluginsdk.model;

import com.tencent.mm.ai.q;
import com.tencent.mm.ai.r;
import com.tencent.mm.c.a.x;
import com.tencent.mm.c.a.y;
import com.tencent.mm.j.d;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.modelvoice.bf;
import com.tencent.mm.modelvoice.bi;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.model.app.a;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.protocal.a.ft;
import com.tencent.mm.protocal.a.fu;
import com.tencent.mm.protocal.a.fw;
import com.tencent.mm.protocal.a.fx;
import com.tencent.mm.protocal.a.fy;
import com.tencent.mm.protocal.a.gb;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.l;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.e;
import com.tencent.mm.w.f;
import com.tencent.mm.w.g;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public final class b
{
  private static ft a(ak paramak, com.tencent.mm.j.b paramb, int paramInt)
  {
    ft localft = new ft();
    localft.rP(String.valueOf(paramak.field_msgSvrId));
    localft.rE(paramb.cgQ);
    localft.rF(paramb.cgR);
    localft.rD(paramb.url);
    localft.axy();
    File localFile = new File(cj.R(ag.Ba().fX(paramak.field_imgPath), ""));
    if (localFile.exists())
      localft.rM(localFile.getAbsolutePath());
    while (true)
    {
      localft.rx(paramb.title);
      localft.ry(paramb.description);
      localft.ln(paramInt);
      return localft;
      localft.axA();
    }
  }

  public static boolean a(x paramx, int paramInt, String paramString)
  {
    if ((paramx == null) || (cj.hX(paramString)))
    {
      aa.w("MicroMsg.GetFavDataSource", "fill favorite event fail, event is null or image path is empty");
      if (paramx != null)
        paramx.bMl.type = n.bkG;
      return false;
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.GetFavDataSource", "do fill event info(fav simple image), path %s sourceType %d", arrayOfObject);
    fx localfx = new fx();
    fy localfy = new fy();
    ft localft = new ft();
    localft.ln(2);
    localft.rL(paramString);
    localft.axA();
    localfy.sa(com.tencent.mm.model.v.th());
    localfy.sb(com.tencent.mm.model.v.th());
    localfy.ls(paramInt);
    localfy.bM(cj.FD());
    localfx.a(localfy);
    localfx.fHP.add(localft);
    paramx.bMl.title = localft.getTitle();
    paramx.bMl.bMn = localfx;
    paramx.bMl.type = 2;
    return true;
  }

  public static boolean a(x paramx, long paramLong)
  {
    return a(paramx, be.uz().sw().bU(paramLong));
  }

  public static boolean a(x paramx, ak paramak)
  {
    if ((paramx == null) || (paramak == null))
    {
      aa.w("MicroMsg.GetFavDataSource", "fill favorite event fail, event or msg is null");
      if (paramx != null)
        paramx.bMl.type = n.bkG;
      return false;
    }
    ak localak = ak.u(paramak);
    boolean bool1;
    if (localak.aCc())
    {
      fx localfx1 = new fx();
      localfx1.a(r(localak));
      paramx.bMl.bMn = localfx1;
      paramx.bMl.desc = localak.field_content;
      paramx.bMl.type = 1;
      bool1 = true;
    }
    while (true)
    {
      paramx.bMl.bMo = localak.field_content;
      return bool1;
      if (localak.aBV())
      {
        fx localfx2 = new fx();
        localfx2.a(r(localak));
        ft localft1 = new ft();
        localft1.rP(String.valueOf(localak.field_msgSvrId));
        String str3;
        if (w.cQ(localak.field_talker))
        {
          String str2 = localak.ot();
          str3 = l.a(be.uz().sH(), "recbiz_", str2, ".rec", 2);
          if (cj.hX(str3))
          {
            str3 = null;
            label199: localft1.rL(str3);
          }
        }
        com.tencent.mm.modelvoice.b localb;
        boolean bool2;
        while (true)
        {
          localft1.ln(3);
          localft1.axA();
          localb = bi.hq(localak.ot());
          if (localb != null)
            break label276;
          bool2 = false;
          bool1 = bool2;
          break;
          new File(str3).exists();
          break label199;
          localft1.rL(bi.fU(localak.ot()));
        }
        label276: if (localb.getFormat() == 1);
        for (String str1 = "speex"; ; str1 = "amr")
        {
          localft1.rH(str1);
          localft1.lm((int)new bf(localak.getContent()).getTime());
          LinkedList localLinkedList1 = new LinkedList();
          localLinkedList1.add(localft1);
          localfx2.S(localLinkedList1);
          paramx.bMl.bMn = localfx2;
          paramx.bMl.type = 3;
          bool2 = true;
          break;
        }
      }
      if (localak.aCb())
      {
        bool1 = b(paramx, localak);
      }
      else if (localak.aBY())
      {
        boolean bool3 = localak.field_msgId < 0L;
        e locale = null;
        if (bool3)
          locale = ag.Ba().dG((int)localak.field_msgId);
        if (((locale == null) || (locale.AG() <= 0L)) && (localak.field_msgSvrId > 0))
          locale = ag.Ba().dF(localak.field_msgSvrId);
        if (locale == null)
        {
          aa.w("MicroMsg.GetFavDataSource", "getImgDataPath: try get imgInfo fail");
          paramx.bMl.type = n.bkJ;
          bool1 = false;
        }
        else
        {
          fx localfx5 = new fx();
          localfx5.a(r(localak));
          ft localft8 = new ft();
          localft8.rP(String.valueOf(localak.field_msgSvrId));
          localft8.ln(2);
          localft8.rL(ag.Ba().j(f.c(locale), "", ""));
          localft8.rM(ag.Ba().fX(localak.ot()));
          LinkedList localLinkedList3 = new LinkedList();
          localLinkedList3.add(localft8);
          localfx5.S(localLinkedList3);
          paramx.bMl.bMn = localfx5;
          paramx.bMl.type = 2;
          bool1 = true;
        }
      }
      else if (localak.MP())
      {
        fx localfx3 = new fx();
        localfx3.a(r(localak));
        ft localft2 = new ft();
        localft2.rP(String.valueOf(localak.field_msgSvrId));
        localft2.rL(com.tencent.mm.ai.m.DE().gZ(localak.ot()));
        localft2.rM(com.tencent.mm.ai.m.DE().ha(localak.ot()));
        localft2.ln(4);
        q localq = com.tencent.mm.ai.v.hh(localak.ot());
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(localq.vR());
        aa.d("MicroMsg.GetFavDataSource", "video length is %d", arrayOfObject);
        if (localq.vR() > 26214400)
        {
          paramx.bMl.type = n.blK;
          bool1 = false;
        }
        else
        {
          localft2.lm(localq.DO());
          LinkedList localLinkedList2 = new LinkedList();
          localLinkedList2.add(localft2);
          localfx3.S(localLinkedList2);
          paramx.bMl.bMn = localfx3;
          paramx.bMl.type = 4;
          bool1 = true;
        }
      }
      else if (localak.aBT())
      {
        fx localfx4 = new fx();
        localfx4.a(r(localak));
        String str4 = localak.getContent();
        if (str4 == null)
        {
          paramx.bMl.type = n.bkL;
          bool1 = false;
        }
        else
        {
          com.tencent.mm.j.b localb1 = com.tencent.mm.j.b.bR(str4);
          if (localb1 == null)
          {
            paramx.bMl.type = n.bkL;
            bool1 = false;
          }
          else
          {
            paramx.bMl.bMn = localfx4;
            fy localfy = localfx4.axI();
            localfy.sg(localb1.appId);
            localfy.si(localb1.bQs);
            switch (localb1.type)
            {
            case 8:
            case 9:
            case 11:
            case 12:
            default:
              paramx.bMl.type = n.bkK;
              bool1 = false;
              break;
            case 1:
              paramx.bMl.bMn = localfx4;
              paramx.bMl.desc = localb1.title;
              paramx.bMl.type = 1;
              bool1 = true;
              break;
            case 2:
              if (!be.uz().isSDCardAvailable())
              {
                paramx.bMl.type = n.bkM;
                bool1 = false;
                continue;
              }
              a locala2 = ba.HF().qk(localb1.cgE);
              ft localft7 = new ft();
              localft7.rP(String.valueOf(localak.field_msgSvrId));
              if (locala2 != null)
                localft7.rL(locala2.field_fileFullPath);
              String str6 = ag.Ba().fX(localak.field_imgPath);
              if (com.tencent.mm.a.c.as(str6))
                localft7.rM(str6);
              localft7.ln(2);
              localft7.rx(localb1.title);
              localft7.ry(localb1.description);
              localfx4.fHP.add(localft7);
              paramx.bMl.type = 2;
              bool1 = true;
              break;
            case 3:
              ft localft6 = a(localak, localb1, 7);
              localfx4.fHP.add(localft6);
              paramx.bMl.type = 7;
              bool1 = true;
              break;
            case 4:
              ft localft5 = a(localak, localb1, 4);
              localfx4.rY(localft5.getTitle());
              localfx4.rZ(localft5.getDesc());
              localfx4.fHP.add(localft5);
              paramx.bMl.type = 4;
              bool1 = true;
              break;
            case 5:
              if ((localb1.url != null) && (!localb1.url.equals("")))
              {
                localfx4.axI().sh(localb1.url);
                ft localft4 = a(localak, localb1, 5);
                localfx4.fHP.add(localft4);
                localfx4.rY(localft4.getTitle());
                localfx4.rZ(localft4.getDesc());
                paramx.bMl.type = 5;
                bool1 = true;
                continue;
              }
              paramx.bMl.type = n.bkI;
              bool1 = false;
              break;
            case 6:
              if (!be.uz().isSDCardAvailable())
              {
                paramx.bMl.type = n.bkM;
                bool1 = false;
                continue;
              }
              a locala1 = ba.HF().qk(localb1.cgE);
              ft localft3 = new ft();
              if (locala1 != null)
              {
                localft3.rL(locala1.field_fileFullPath);
                if (new File(locala1.field_fileFullPath).length() > 26214400L)
                {
                  paramx.bMl.type = n.blK;
                  bool1 = false;
                  continue;
                }
              }
              localft3.rP(String.valueOf(localak.field_msgSvrId));
              localft3.ln(8);
              localft3.rH(localb1.cgD);
              String str5 = ag.Ba().fX(localak.field_imgPath);
              if (cj.hX(str5))
                localft3.axA();
              if (com.tencent.mm.a.c.as(str5))
                localft3.rM(str5);
              localft3.rx(localb1.title);
              localft3.ry(localb1.description);
              localfx4.fHP.add(localft3);
              paramx.bMl.desc = localb1.title;
              paramx.bMl.type = 8;
              bool1 = true;
              break;
            case 7:
              if ((localb1.cgE == null) || (localb1.cgE.length() == 0))
                paramx.bMl.type = n.bkH;
              while (be.uz().isSDCardAvailable())
              {
                paramx.bMl.type = n.bkK;
                bool1 = false;
                break;
              }
              paramx.bMl.type = n.bkM;
              bool1 = false;
              break;
            case 10:
              fw localfw2 = new fw();
              localfw2.rT(localb1.title);
              localfw2.rU(localb1.description);
              localfw2.lq(localb1.cgU);
              localfw2.rW(localb1.cgV);
              localfw2.rV(localb1.thumburl);
              paramx.bMl.title = localb1.title;
              paramx.bMl.desc = localb1.description;
              paramx.bMl.type = 10;
              localfx4.a(localfw2);
              bool1 = true;
              break;
            case 14:
              gb localgb = new gb();
              localgb.title = localb1.title;
              localgb.desc = localb1.description;
              localgb.info = localb1.cgY;
              localgb.dqp = localb1.thumburl;
              paramx.bMl.title = localb1.title;
              paramx.bMl.desc = localb1.description;
              paramx.bMl.type = 12;
              localfx4.a(localgb);
              bool1 = true;
              break;
            case 13:
              fw localfw1 = new fw();
              localfw1.rT(localb1.title);
              localfw1.rU(localb1.description);
              localfw1.lq(localb1.cgZ);
              localfw1.rW(localb1.cha);
              localfw1.rV(localb1.thumburl);
              paramx.bMl.title = localb1.title;
              paramx.bMl.desc = localb1.description;
              paramx.bMl.type = 11;
              localfx4.a(localfw1);
              bool1 = true;
              break;
            }
          }
        }
      }
      else if (localak.aBU())
      {
        bool1 = c(paramx, localak);
      }
      else
      {
        paramx.bMl.type = n.bkK;
        bool1 = false;
      }
    }
  }

  private static boolean b(x paramx, ak paramak)
  {
    fx localfx = new fx();
    localfx.a(r(paramak));
    Map localMap = u.aL(paramak.field_content, "msg");
    if (localMap != null)
      try
      {
        fu localfu = new fu();
        localfu.rR((String)localMap.get(".msg.location.$label"));
        localfu.g(Double.parseDouble((String)localMap.get(".msg.location.$x")));
        localfu.f(Double.parseDouble((String)localMap.get(".msg.location.$y")));
        localfu.lp(Integer.valueOf((String)localMap.get(".msg.location.$scale")).intValue());
        localfu.rS((String)localMap.get(".msg.location.$poiname"));
        localfx.a(localfu);
        paramx.bMl.type = 6;
        paramx.bMl.bMn = localfx;
        return true;
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localException.getStackTrace().toString();
        aa.b("MicroMsg.GetFavDataSource", "parse failed, %s", arrayOfObject);
      }
    paramx.bMl.type = n.bkL;
    return false;
  }

  private static boolean c(x paramx, ak paramak)
  {
    fx localfx = new fx();
    fy localfy = r(paramak);
    localfx.a(localfy);
    while (true)
    {
      try
      {
        com.tencent.mm.j.c localc = com.tencent.mm.j.b.bU(paramak.getContent());
        LinkedList localLinkedList = localc.che;
        localfy.si(localc.bQs);
        if ((localLinkedList != null) && (localLinkedList.size() > paramx.bMl.bMp))
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Integer.valueOf(paramx.bMl.bMp);
          aa.d("MicroMsg.GetFavDataSource", "favorite biz msg, index is %d", arrayOfObject2);
          d locald = (d)localLinkedList.get(paramx.bMl.bMp);
          localfy.sh(locald.url);
          if (paramx.bMl.bMp > 0)
            localfy.sc("");
          ft localft = new ft();
          localft.rx(locald.title);
          localft.ry(locald.chj);
          localft.rP(localfy.axU());
          if (!cj.hX(locald.chh))
          {
            String str1 = locald.chh;
            int i = paramak.getType();
            if (paramx.bMl.bMp <= 0)
              break label339;
            str2 = "@S";
            localft.rM(m.h(str1, i, str2));
            localft.axy();
            localft.ln(5);
            localfx.fHP.add(localft);
            paramx.bMl.bMn = localfx;
            paramx.bMl.desc = locald.title;
            paramx.bMl.type = 5;
            return true;
          }
          localft.axA();
          continue;
        }
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = localException.getLocalizedMessage();
        aa.b("MicroMsg.GetFavDataSource", "retransmit app msg error : %s", arrayOfObject1);
        paramx.bMl.type = n.bkL;
        return false;
      }
      label339: String str2 = "@T";
    }
  }

  private static fy r(ak paramak)
  {
    fy localfy = new fy();
    if (paramak.field_isSend == 1)
    {
      localfy.sa(com.tencent.mm.model.v.th());
      localfy.sb(paramak.field_talker);
      if (w.cp(paramak.field_talker))
        localfy.sd(localfy.Xe());
    }
    do
    {
      localfy.ls(1);
      localfy.bM(paramak.field_createTime);
      localfy.se(paramak.field_msgSvrId);
      if (paramak.field_msgSvrId > 0)
        localfy.sc(paramak.field_msgSvrId);
      return localfy;
      localfy.sa(paramak.field_talker);
      localfy.sb(com.tencent.mm.model.v.th());
    }
    while (!w.cp(paramak.field_talker));
    if (paramak.field_content != null);
    for (String str = paramak.field_content.substring(0, Math.max(0, paramak.field_content.indexOf(':'))); ; str = "")
    {
      localfy.sd(str);
      if ((cj.hX(localfy.axV())) || (paramak.aBV()))
        break;
      paramak.field_content = paramak.field_content.substring(1 + localfy.axV().length());
      if ((paramak.field_content.length() <= 0) || ('\n' != paramak.field_content.charAt(0)))
        break;
      paramak.field_content = paramak.field_content.substring(1);
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.b
 * JD-Core Version:    0.6.2
 */