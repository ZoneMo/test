package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.tencent.mm.ai.m;
import com.tencent.mm.ai.q;
import com.tencent.mm.ai.r;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.p.p;
import com.tencent.mm.storage.ak;

final class ds extends ce
{
  private ChattingUI gMB;

  public ds()
  {
    super(10);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903173);
      paramView.setTag(new ly(this.dws).c(paramView, true));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    this.gMB = paramChattingUI;
    ly locally = (ly)paramcf;
    ly.a(locally, paramak, true, paramInt, paramChattingUI);
    String str = paramak.aCm();
    if ((str == null) || (str.length() == 0))
    {
      locally.gKg.setVisibility(8);
      return;
    }
    locally.gKg.setVisibility(0);
    b(paramChattingUI, locally.gKg, kk.wG(str));
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    if (be.uz().isSDCardAvailable())
    {
      int i = ((kk)paramView.getTag()).position;
      if (a.qc("favorite"))
        paramContextMenu.add(i, 116, 0, paramView.getContext().getString(2131167820));
      q localq = m.DE().gW(paramak.ot());
      if ((localq != null) && ((localq.getStatus() == 199) || (localq.getStatus() == 199)))
      {
        paramContextMenu.add(i, 106, 0, paramView.getContext().getString(2131165662));
        paramContextMenu.add(i, 107, 0, paramView.getContext().getString(2131165626));
        if ((p.xM()) && (!this.gMB.aJJ()))
          paramContextMenu.add(i, 114, 0, paramView.getContext().getString(2131165798));
      }
      if (!this.gMB.aJJ())
        paramContextMenu.add(i, 100, 0, paramView.getContext().getString(2131165661));
    }
    return true;
  }

  public final boolean a(MenuItem paramMenuItem, ChattingUI paramChattingUI, ak paramak)
  {
    return false;
  }

  public final boolean a(View paramView, ChattingUI paramChattingUI, ak paramak)
  {
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ds
 * JD-Core Version:    0.6.2
 */