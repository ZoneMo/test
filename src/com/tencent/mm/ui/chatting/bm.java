package com.tencent.mm.ui.chatting;

import android.content.Context;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.tools.dg;
import java.util.Iterator;
import java.util.List;

public final class bm
{
  private static ch gLG = null;

  private static void a(Context paramContext, List paramList, boolean paramBoolean)
  {
    dg localdg = new dg(paramContext);
    localdg.a(new bo());
    localdg.a(new bp(paramContext));
    localdg.a(new bq());
    localdg.b(new br(paramContext, paramList, paramBoolean));
    if (bg.aC(paramList))
    {
      h.a(paramContext, paramContext.getString(2131165726), "", new bs(), null);
      return;
    }
    localdg.aNy();
  }

  public static void d(Context paramContext, List paramList, boolean paramBoolean, fn paramfn)
  {
    if (paramContext == null)
    {
      aa.w("MicroMsg.ChattingEditModeSendToBrand", "do send to brand fail, context is null");
      return;
    }
    if ((paramList == null) || (paramList.isEmpty()))
    {
      aa.w("MicroMsg.ChattingEditModeSendToBrand", "do send to brand fail, select item empty");
      return;
    }
    if (bg.aIY().size() == 0)
    {
      h.p(paramContext, paramContext.getString(2131165705), "");
      return;
    }
    int i;
    if ((paramList == null) || (paramList.isEmpty()))
    {
      aa.w("MicroMsg.ChattingEditModeLogic", "check contain invalid send to brand msg error, selected item empty");
      i = 1;
    }
    while (i != 0)
    {
      h.a(paramContext, paramContext.getString(2131165707), "", new bn(paramList, paramfn, paramContext, paramBoolean), null);
      return;
      Iterator localIterator = paramList.iterator();
      while (true)
        if (localIterator.hasNext())
        {
          ak localak = (ak)localIterator.next();
          if ((localak.aBV()) || (bg.z(localak)) || (localak.aCa()) || (bg.A(localak)) || (localak.getType() == -1879048186))
          {
            i = 1;
            break;
          }
        }
      i = 0;
    }
    a(paramContext, paramList, paramBoolean);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.bm
 * JD-Core Version:    0.6.2
 */