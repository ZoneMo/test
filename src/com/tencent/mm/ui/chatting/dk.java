package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import com.tencent.mm.ak.a;
import com.tencent.mm.p.p;
import com.tencent.mm.storage.ak;

final class dk extends ce
{
  private ChattingUI gMB;

  public dk()
  {
    super(17);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903189);
      paramView.setTag(new kl(this.dws).c(paramView, false));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    this.gMB = paramChattingUI;
    kl.a((kl)paramcf, paramak, false, paramInt, paramChattingUI);
    a(paramInt, paramcf, paramak, paramChattingUI.gMi.clp, paramChattingUI.gJU, paramChattingUI.gMi.gNw);
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    if (paramak.getType() == 48)
    {
      int i = ((kk)paramView.getTag()).position;
      if (paramak.getStatus() == 5)
        paramContextMenu.add(i, 103, 0, paramView.getContext().getString(2131165775));
      if ((p.xO()) && (!this.gMB.aJJ()))
        paramContextMenu.add(i, 114, 0, paramView.getContext().getString(2131165798));
      if (a.qc("favorite"))
        paramContextMenu.add(i, 116, 0, paramView.getContext().getString(2131167820));
      if (!this.gMB.aJJ())
        paramContextMenu.add(i, 100, 0, paramView.getContext().getString(2131165658));
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
 * Qualified Name:     com.tencent.mm.ui.chatting.dk
 * JD-Core Version:    0.6.2
 */