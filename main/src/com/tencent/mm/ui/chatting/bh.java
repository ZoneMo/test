package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bu;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.h;
import java.util.Iterator;
import java.util.List;

public final class bh
{
  private static bl gMc = new bl((byte)0);

  public static void a(Context paramContext, String paramString, Runnable paramRunnable)
  {
    if (paramContext == null)
    {
      aa.w("MicroMsg.ChattingEditModeRetransmitMsg", "do try retransmit fail, context is null");
      return;
    }
    if (au.hX(paramString))
    {
      aa.w("MicroMsg.ChattingEditModeRetransmitMsg", "do try retransmit fail, username is empty");
      return;
    }
    if ((gMc.gMg == null) || (gMc.gMg.isEmpty()))
    {
      aa.w("MicroMsg.ChattingEditModeRetransmitMsg", "do try retransmit fail, select items empty");
      return;
    }
    aa.f("MicroMsg.ChattingEditModeRetransmitMsg", "post to do job, send to %s", new Object[] { paramString });
    fn.gOp.c(new bk(paramContext, paramString, paramRunnable));
  }

  public static void a(Context paramContext, List paramList, boolean paramBoolean, fn paramfn)
  {
    gMc.gMg = null;
    gMc.gJU = false;
    if (paramContext == null)
    {
      aa.w("MicroMsg.ChattingEditModeRetransmitMsg", "do retransmit fail, context is null");
      return;
    }
    if ((paramList == null) || (paramList.isEmpty()))
    {
      aa.w("MicroMsg.ChattingEditModeRetransmitMsg", "do retransmit fail, select item empty");
      return;
    }
    int i;
    if (paramList == null)
    {
      aa.w("MicroMsg.ChattingEditModeLogic", "check contain invalid send to friend msg error, select item empty");
      i = 1;
    }
    while (i != 0)
    {
      h.a(paramContext, paramContext.getString(2131165708), "", new bi(paramList, paramfn, paramContext, paramBoolean), null);
      return;
      Iterator localIterator = paramList.iterator();
      while (true)
        if (localIterator.hasNext())
        {
          ak localak = (ak)localIterator.next();
          if ((localak.aBV()) || (bg.z(localak)) || (bg.A(localak)) || (localak.getType() == -1879048186))
          {
            i = 1;
            break;
          }
        }
      i = 0;
    }
    b(paramContext, paramList, paramBoolean, paramfn);
  }

  private static void b(Context paramContext, List paramList, boolean paramBoolean, fn paramfn)
  {
    if (bg.aC(paramList))
    {
      h.a(paramContext, paramContext.getString(2131165726), "", new bj(paramfn), null);
      return;
    }
    gMc.gMg = paramList;
    gMc.gJU = paramBoolean;
    paramContext.startActivity(new Intent(paramContext, ChatMoreSelectUI.class));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.bh
 * JD-Core Version:    0.6.2
 */