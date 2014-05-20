package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.ui.EmojiView;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.u;
import com.tencent.mm.storage.y;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.g;

final class ch extends ce
{
  private ChattingUI gMB;

  public ch()
  {
    super(23);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903182);
      paramView.setTag(new i(this.dws).c(paramView, false));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    int i = 1;
    this.gMB = paramChattingUI;
    i locali = (i)paramcf;
    locali.cMS.setVisibility(0);
    c.a(locali.cMS, paramChattingUI.gMi.clp);
    locali.cMS.setTag(new kk(paramChattingUI.gMi.clp));
    locali.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
    locali.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
    locali.gKe.setOnClickListener(paramChattingUI.gMi.gNw);
    locali.gKe.setTag(locali.cZZ.getTag());
    String str = paramak.getContent();
    u localu = u.uk(paramak.getContent());
    a(paramChattingUI);
    boolean bool2 = localu.Ev();
    y localy1 = null;
    if (!bool2)
    {
      EmojiView.bF(paramak.Bo());
      if (str == null)
        break label618;
    }
    label317: label332: label618: for (com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(str); ; localb = null)
    {
      localy1 = null;
      if (localb != null)
        localy1 = h.apj().ja(localb.cgF);
      if ((localu.yK() != null) && (!localu.yK().equals("-1")) && (localy1 == null));
      for (y localy2 = h.apj().ja(localu.yK()); ; localy2 = localy1)
      {
        int m;
        if (localy2 != null)
        {
          EmojiView localEmojiView = locali.cZZ;
          long l = paramak.Bo();
          if (localy2.getType() == y.ghr)
          {
            int j = i;
            localEmojiView.a(localy2, l, j, i);
            if ((localy2.getState() != y.ghw) && (paramak.getStatus() == i))
              break label535;
            ProgressBar localProgressBar = locali.dSt;
            if (i == 0)
              break label541;
            m = 4;
            localProgressBar.setVisibility(m);
            locali.gKe.setVisibility(8);
            if ((!localu.Ev()) && (i != 0))
            {
              localu.Ew();
              localu.eX(localy2.yK());
              paramak.setContent(localu.Eu());
              paramak.setStatus(be.uz().sw().bU(paramak.Bo()).getStatus());
              be.uz().sw().a(paramak.Bo(), paramak);
            }
          }
        }
        while (true)
        {
          locali.cZZ.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, paramChattingUI.gMi.clp, 0, '\000'));
          locali.cZZ.setOnClickListener(paramChattingUI.gMi.gNw);
          locali.cZZ.setOnLongClickListener(paramChattingUI.gMi.gNy);
          locali.gKe.setTag(locali.cZZ.getTag());
          a(paramInt, locali, paramak, paramChattingUI.gMi.clp, paramChattingUI.gJU, paramChattingUI.gMi.gNw);
          return;
          int k = 0;
          break;
          boolean bool1 = false;
          break label317;
          m = 0;
          break label332;
          if (com.tencent.mm.ak.a.qc("emoji"))
          {
            Bitmap localBitmap = ag.Ba().a(paramak.ot(), com.tencent.mm.an.a.getDensity(paramChattingUI), bool1);
            if (localBitmap != null)
            {
              locali.cZZ.i(localBitmap);
              locali.gKe.setVisibility(0);
            }
          }
          locali.dSt.setVisibility(8);
        }
      }
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    if (be.uz().isSDCardAvailable())
    {
      int i = ((kk)paramView.getTag()).position;
      paramContextMenu.add(i, 113, 0, paramView.getContext().getString(2131165626));
      if (paramak.getStatus() == 5)
        paramContextMenu.add(i, 103, 0, paramView.getContext().getString(2131165775));
      if (!this.gMB.aJJ())
        paramContextMenu.add(i, 100, 0, paramView.getContext().getString(2131165666));
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
 * Qualified Name:     com.tencent.mm.ui.chatting.ch
 * JD-Core Version:    0.6.2
 */