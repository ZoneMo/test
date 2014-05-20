package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.q.a;
import com.tencent.mm.q.b;
import com.tencent.mm.storage.ak;

final class dm extends dq
{
  private ChattingUI gMB;

  public dm()
  {
    super(36);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903178);
      paramView.setTag(new kv(this.dws).au(paramView));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    this.gMB = paramChattingUI;
    kv localkv = (kv)paramcf;
    b localb = b.eS(paramak.getContent());
    String str = localb.cgI;
    if (w.db(str))
      localkv.cMS.setVisibility(8);
    while (true)
    {
      localkv.gMy.setText(localb.coz);
      localkv.gMU.setText(a.a(localb));
      paramChattingUI.gMi.gNr.e(localkv.gMU);
      localkv.cMS.setTag(new kk(paramak, str));
      localkv.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
      localkv.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
      localkv.gMU.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000'));
      localkv.gMU.setOnClickListener(paramChattingUI.gMi.gNw);
      localkv.gMU.setOnLongClickListener(paramChattingUI.gMi.gNy);
      return;
      localkv.cMS.setVisibility(0);
      c.a(localkv.cMS, str);
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
 * Qualified Name:     com.tencent.mm.ui.chatting.dm
 * JD-Core Version:    0.6.2
 */