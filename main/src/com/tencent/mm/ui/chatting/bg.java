package com.tencent.mm.ui.chatting;

import android.content.Context;
import com.tencent.mm.ai.q;
import com.tencent.mm.j.b;
import com.tencent.mm.model.bv;
import com.tencent.mm.p.ab;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.i;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.u;
import com.tencent.mm.storage.y;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.e;
import com.tencent.mm.w.f;
import com.tencent.mm.w.g;
import java.util.Iterator;
import java.util.List;

public final class bg
{
  public static boolean A(ak paramak)
  {
    if (paramak == null)
    {
      aa.w("MicroMsg.ChattingEditModeLogic", "check is game msg error, msg is null");
      return true;
    }
    if (paramak.rO() == 0);
    b localb;
    for (String str = bv.dz(paramak.getContent()); ; str = paramak.getContent())
    {
      localb = b.bR(str);
      if (localb != null)
        break;
      aa.w("MicroMsg.ChattingEditModeLogic", "parse app message content fail");
      return false;
    }
    com.tencent.mm.pluginsdk.model.app.k localk = l.F(localb.appId, false);
    return (localk != null) && (localk.apQ());
  }

  public static void a(Context paramContext, String paramString, ak paramak)
  {
    if (!a(paramContext, paramString, paramak, "emoji"))
      return;
    String str = u.uk(paramak.getContent()).yK();
    if ((str == null) || (str.endsWith("-1")))
      str = paramak.ot();
    if (str == null)
    {
      aa.w("MicroMsg.ChattingEditModeLogic", "showAcceptEmojiConnector: filePath is null");
      return;
    }
    h.apj().f(paramContext, paramString, str);
  }

  public static void a(Context paramContext, String paramString, ak paramak, boolean paramBoolean)
  {
    if (!a(paramContext, paramString, paramak, "text"))
      return;
    String str = c(paramak.field_content, paramak.rO(), paramBoolean);
    if ((str == null) || (str.equals("")))
    {
      aa.e("MicroMsg.ChattingEditModeLogic", "Transfer text erro: content null");
      return;
    }
    h.apr().i(paramString, str, com.tencent.mm.model.w.dd(paramString));
  }

  private static boolean a(Context paramContext, String paramString1, ak paramak, String paramString2)
  {
    if (paramContext == null)
    {
      aa.c("MicroMsg.ChattingEditModeLogic", "send %s fail, context is null", new Object[] { paramString2 });
      return false;
    }
    if (cj.hX(paramString1))
    {
      aa.c("MicroMsg.ChattingEditModeLogic", "send %s fail, username is null", new Object[] { paramString2 });
      return false;
    }
    if (paramak == null)
    {
      aa.c("MicroMsg.ChattingEditModeLogic", "send %s fail, msg is null", new Object[] { paramString2 });
      return false;
    }
    return true;
  }

  public static boolean aC(List paramList)
  {
    if (paramList == null)
    {
      aa.w("MicroMsg.ChattingEditModeLogic", "check contain undownload image or video error, select item empty");
      return false;
    }
    Iterator localIterator = paramList.iterator();
    label193: label198: 
    while (true)
    {
      ak localak;
      e locale1;
      if (localIterator.hasNext())
      {
        localak = (ak)localIterator.next();
        if (localak.rO() == 1)
          return false;
        if (localak.aBY())
        {
          boolean bool = localak.field_msgId < 0L;
          locale1 = null;
          if (bool)
            locale1 = ag.Ba().dG((int)localak.field_msgId);
          if (((locale1 != null) && (locale1.AG() > 0L)) || (localak.field_msgSvrId <= 0))
            break label193;
        }
      }
      for (e locale2 = ag.Ba().dF(localak.field_msgSvrId); ; locale2 = locale1)
      {
        if ((locale2 == null) || ((locale2.getOffset() >= locale2.vR()) && (locale2.vR() != 0)))
          break label198;
        return true;
        if (!localak.MP())
          break;
        q localq = com.tencent.mm.ai.m.DE().gW(localak.ot());
        if ((localq == null) || (localq.getStatus() == 199) || (localq.getStatus() == 199))
          break;
        return true;
        return false;
      }
    }
  }

  public static List aIY()
  {
    List localList = ab.ye().cT(25);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(localList.size());
    aa.e("MicroMsg.ChattingEditModeLogic", "get selected accept list, size %d", arrayOfObject);
    return localList;
  }

  public static void b(Context paramContext, String paramString, ak paramak)
  {
    if (!a(paramContext, paramString, paramak, "image"));
    label190: 
    while (true)
    {
      return;
      boolean bool1 = paramak.field_msgId < 0L;
      e locale1 = null;
      if (bool1)
        locale1 = ag.Ba().dG((int)paramak.field_msgId);
      if (((locale1 == null) || (locale1.AG() <= 0L)) && (paramak.field_msgSvrId > 0));
      for (e locale2 = ag.Ba().dF(paramak.field_msgSvrId); ; locale2 = locale1)
      {
        if (locale2 == null)
          break label190;
        boolean bool2 = locale2.AM();
        int i = 0;
        if (bool2)
        {
          boolean bool3 = f.a(locale2).AI().startsWith("SERVERID://");
          i = 0;
          if (!bool3)
            i = 1;
        }
        String str1 = ag.Ba().j(f.c(locale2), "", "");
        String str2 = ag.Ba().j(locale2.AJ(), "th_", "");
        if (cj.hX(str1))
          break;
        h.apr().a(paramContext, paramString, str1, i, locale2.AN(), str2);
        return;
      }
    }
  }

  public static void b(Context paramContext, String paramString, ak paramak, boolean paramBoolean)
  {
    if (!a(paramContext, paramString, paramak, "appmsg"))
      return;
    String str = c(paramak.field_content, paramak.rO(), paramBoolean);
    h.apr().a(paramString, null, cj.sT(str));
  }

  private static String c(String paramString, int paramInt, boolean paramBoolean)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = Boolean.valueOf(paramBoolean);
    arrayOfObject[2] = paramString;
    aa.e("MicroMsg.ChattingEditModeLogic", "isSend %d groupChat %B content %s", arrayOfObject);
    if ((paramBoolean) && (paramString != null) && (paramInt == 0))
      paramString = bv.dz(paramString);
    return paramString;
  }

  public static void c(Context paramContext, String paramString, ak paramak)
  {
    if (!a(paramContext, paramString, paramak, "video"))
      return;
    q localq = com.tencent.mm.ai.v.hh(paramak.ot());
    String str1 = paramak.ot();
    int i = localq.DQ();
    int j = localq.DO();
    String str2 = localq.DT();
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = str1;
    arrayOfObject[1] = paramString;
    arrayOfObject[2] = Integer.valueOf(i);
    arrayOfObject[3] = Integer.valueOf(j);
    aa.e("MicroMsg.ChattingEditModeLogic", "copy video fileName %s userName %s export %d videoLength", arrayOfObject);
    String str3 = com.tencent.mm.ai.r.gY(com.tencent.mm.model.v.th());
    com.tencent.mm.ai.r localr = com.tencent.mm.ai.m.DE();
    String str4 = localr.gZ(str1);
    String str5 = localr.gZ(str3);
    String str6 = localr.ha(str1);
    String str7 = localr.ha(str3);
    aa.e("MicroMsg.ChattingEditModeLogic", "copy video: srcFullPath[%s] destFullPath[%s] srcThumbPath[%s] destThumbPath[%s]", new Object[] { str4, str5, str6, str7 });
    com.tencent.mm.sdk.platformtools.m.f(str4, str5, false);
    com.tencent.mm.sdk.platformtools.m.f(str6, str7, false);
    com.tencent.mm.ai.v.a(str3, j, paramString, null, i, str2);
    com.tencent.mm.ai.v.hf(str3);
  }

  public static void c(Context paramContext, String paramString, ak paramak, boolean paramBoolean)
  {
    if (!a(paramContext, paramString, paramak, "friendcard"))
      return;
    String str = c(paramak.field_content, paramak.rO(), paramBoolean);
    h.apr().i(paramString, str, 42);
  }

  public static void d(Context paramContext, String paramString, ak paramak)
  {
    if (!a(paramContext, paramString, paramak, "location"))
      return;
    String str = paramak.field_content;
    h.apr().i(paramString, str, 48);
  }

  public static boolean z(ak paramak)
  {
    if (paramak == null)
      aa.w("MicroMsg.ChattingEditModeLogic", "check is store emoji error, msg is null");
    y localy;
    do
    {
      return true;
      localy = h.apj().ja(paramak.ot());
    }
    while ((localy != null) && (localy.aBG() != com.tencent.mm.storage.w.ggY) && (localy.aBG() != com.tencent.mm.storage.w.ggX) && (localy.aBG() != com.tencent.mm.storage.w.ggW) && (localy.aBG() != y.ghl) && (localy.aBG() != y.ghk));
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.bg
 * JD-Core Version:    0.6.2
 */