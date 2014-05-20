package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.EmojiView;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.u;
import com.tencent.mm.storage.y;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.g;

final class cg extends ce
{
  private ChattingUI gMB;

  public cg()
  {
    super(22);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903162);
      paramView.setTag(new i(this.dws).c(paramView, true));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    this.gMB = paramChattingUI;
    i locali = (i)paramcf;
    locali.gMy.setVisibility(8);
    u localu = u.uk(paramak.getContent());
    String str3;
    if (!localu.Ev())
    {
      EmojiView.bF(paramak.Bo());
      str3 = paramak.getContent();
      if (str3 == null)
        break label651;
    }
    label651: for (com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(str3); ; localb = null)
    {
      if ((localb != null) && (localb.cgF != null));
      for (y localy1 = com.tencent.mm.pluginsdk.h.apj().ja(localb.cgF); ; localy1 = null)
      {
        if ((localu.yK() != null) && (!localu.yK().equals("-1")) && (localy1 == null));
        for (y localy2 = com.tencent.mm.pluginsdk.h.apj().ja(localu.yK()); ; localy2 = localy1)
        {
          boolean bool;
          if (localy2 != null)
          {
            EmojiView localEmojiView = locali.cZZ;
            long l = paramak.Bo();
            if (localy2.getType() == y.ghr)
            {
              bool = true;
              localEmojiView.a(localy2, l, bool, true);
              locali.gKe.setVisibility(8);
              if (!localu.Ev())
              {
                localu.Ew();
                localu.eX(localy2.yK());
                paramak.setContent(localu.uj(au.R(paramak.getContent(), "")));
                be.uz().sw().a(paramak.Bo(), paramak);
              }
            }
          }
          Object localObject1;
          while (true)
          {
            locali.cMS.setVisibility(0);
            if (!paramChattingUI.gJU)
              break label588;
            int i = bv.dw(paramak.getContent());
            Object localObject2 = null;
            if (i != -1)
            {
              String str2 = paramak.getContent().substring(0, i).trim();
              localObject2 = null;
              if (str2 != null)
              {
                int j = str2.length();
                localObject2 = null;
                if (j > 0)
                {
                  c.a(locali.cMS, str2);
                  a(paramChattingUI);
                  localObject2 = str2;
                }
              }
              if (paramChattingUI.gOY)
              {
                locali.gMy.setText(paramChattingUI.cu(str2));
                locali.gMy.setVisibility(0);
              }
            }
            localObject1 = localObject2;
            locali.cZZ.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, (String)localObject1, 0, '\000'));
            locali.cZZ.setOnClickListener(paramChattingUI.gMi.gNw);
            locali.cZZ.setOnLongClickListener(paramChattingUI.gMi.gNy);
            locali.gKe.setOnClickListener(paramChattingUI.gMi.gNw);
            locali.gKe.setTag(locali.cZZ.getTag());
            locali.cMS.setTag(new kk((String)localObject1));
            locali.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
            locali.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
            return;
            bool = false;
            break;
            if (com.tencent.mm.ak.a.qc("emoji"))
            {
              Bitmap localBitmap = ag.Ba().a(paramak.ot(), com.tencent.mm.an.a.getDensity(paramChattingUI), true);
              if (localBitmap == null)
                localBitmap = com.tencent.mm.sdk.platformtools.h.e(this.gMB.getResources().getDrawable(2130837673));
              locali.cZZ.i(localBitmap);
              locali.gKe.setVisibility(0);
            }
          }
          label588: String str1 = paramChattingUI.gMi.bNl;
          if (w.db(str1))
            locali.cMS.setVisibility(8);
          while (true)
          {
            localObject1 = paramak.aCl();
            break;
            c.a(locali.cMS, str1);
          }
        }
      }
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    int i = ((kk)paramView.getTag()).position;
    u localu = u.uk(paramak.getContent());
    if ((localu.yK() != null) && (!localu.yK().equals("-1")))
    {
      y localy = com.tencent.mm.pluginsdk.h.apj().ja(localu.yK());
      if (localy != null)
      {
        paramContextMenu.add(i, 113, 0, paramView.getContext().getString(2131165626));
        if (localy.aBG() == y.ggZ)
          paramContextMenu.add(i, 104, 1, paramView.getContext().getString(2131165667));
      }
    }
    if (!this.gMB.aJJ())
      paramContextMenu.add(i, 100, 0, paramView.getContext().getString(2131165666));
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
 * Qualified Name:     com.tencent.mm.ui.chatting.cg
 * JD-Core Version:    0.6.2
 */