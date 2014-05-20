package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.view.ContextMenu;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.q.a;
import com.tencent.mm.q.b;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.MMTextView;

final class dn extends dr
{
  private ChattingUI gMB;

  public dn()
  {
    super(37);
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    this.gMB = paramChattingUI;
    lx locallx = (lx)paramcf;
    b localb = b.eS(paramak.getContent());
    locallx.cMS.setVisibility(0);
    c.a(locallx.cMS, paramChattingUI.gMi.clp);
    locallx.gRC.setText(a.a(localb));
    if (paramak.getStatus() >= 2)
      locallx.dSt.setVisibility(8);
    while (true)
    {
      paramChattingUI.gMi.gNr.e(locallx.gRC);
      locallx.cMS.setTag(new kk(paramChattingUI.gMi.clp));
      locallx.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
      locallx.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
      locallx.gRC.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000'));
      locallx.gRC.setOnClickListener(paramChattingUI.gMi.gNw);
      locallx.gRC.setOnLongClickListener(paramChattingUI.gMi.gNy);
      a(paramInt, locallx, paramak, paramChattingUI.gMi.clp, paramChattingUI.gJU, paramChattingUI.gMi.gNw);
      return;
      locallx.dSt.setVisibility(0);
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    if (paramak.aCk())
    {
      int i = ((kk)paramView.getTag()).position;
      if (paramak.getStatus() == 5)
        paramContextMenu.add(i, 103, 0, paramView.getContext().getString(2131165775));
      if (!this.gMB.aJJ())
        paramContextMenu.add(i, 100, 0, paramView.getContext().getString(2131165658));
    }
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.dn
 * JD-Core Version:    0.6.2
 */