package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.al;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.d.c.m;

final class ex
  implements View.OnClickListener
{
  ex(es parames)
  {
  }

  private static boolean cf(long paramLong)
  {
    al localal = be.nS();
    boolean bool1 = false;
    if (localal != null)
    {
      String str = be.nS().op();
      bool1 = false;
      if (str != null)
      {
        int i = be.nS().oo();
        bool1 = false;
        if (i != 0);
      }
    }
    try
    {
      long l = Long.parseLong(be.nS().op());
      boolean bool2 = paramLong < l;
      bool1 = false;
      if (!bool2)
        bool1 = true;
      return bool1;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public final void onClick(View paramView)
  {
    ey localey;
    if ((paramView.getTag() instanceof ey))
    {
      localey = (ey)paramView.getTag();
      if (!cf(localey.bMS))
        break label67;
      m.dZN.j(10231, "1");
      if (be.nS() != null)
        be.nS().release();
    }
    while (true)
    {
      this.gNZ.gKH.gMi.notifyDataSetChanged();
      return;
      label67: com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(localey.bRv);
      if (localb != null)
      {
        m.dZN.j(10090, "0,1");
        if (be.nS() != null)
        {
          be.nS().release();
          be.nS().a(be.uz().sX(), String.valueOf(localey.bMS), localb, localey.clm);
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ex
 * JD-Core Version:    0.6.2
 */