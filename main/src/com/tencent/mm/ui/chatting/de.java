package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.i;
import com.tencent.mm.pluginsdk.ui.EmojiView;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.u;
import com.tencent.mm.storage.y;

final class de extends ce
{
  private ChattingUI gMB;

  public de()
  {
    super(14);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903167);
      paramView.setTag(new ke(this.dws).c(paramView, true));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    this.gMB = paramChattingUI;
    y localy1 = h.apj().ja(paramak.ot());
    ke localke = (ke)paramcf;
    u localu;
    boolean bool;
    y localy2;
    Object localObject3;
    long l3;
    if (localy1 != null)
    {
      localu = u.uk(paramak.getContent());
      if (!localu.Ev())
        EmojiView.bF(paramak.Bo());
      if ((!localy1.apQ()) || (localu.Ev()))
        break label406;
      EmojiView localEmojiView2 = localke.cZZ;
      long l5 = paramak.Bo();
      bool = true;
      localy2 = localy1;
      localObject3 = localEmojiView2;
      l3 = l5;
    }
    Object localObject1;
    while (true)
    {
      ((EmojiView)localObject3).a(localy2, l3, bool, false);
      if (!localu.Ev())
      {
        localu.Ew();
        paramak.setContent(localu.Eu());
        be.uz().sw().a(paramak.Bo(), paramak);
      }
      localke.cMS.setVisibility(0);
      localke.gMy.setVisibility(8);
      if (!paramChattingUI.gJU)
        break;
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
            c.a(localke.cMS, str2);
            localke.gMy.setText(com.tencent.mm.model.w.cu(str2));
            a(paramChattingUI);
            localObject2 = str2;
          }
        }
        if (paramChattingUI.gOY)
        {
          localke.gMy.setText(paramChattingUI.cu(str2));
          localke.gMy.setVisibility(0);
        }
      }
      localObject1 = localObject2;
      localke.cZZ.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, (String)localObject1, 0, '\000'));
      localke.cZZ.setOnClickListener(paramChattingUI.gMi.gNw);
      localke.cZZ.setOnLongClickListener(paramChattingUI.gMi.gNy);
      localke.cMS.setTag(new kk((String)localObject1));
      localke.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
      localke.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
      return;
      label406: EmojiView localEmojiView1;
      long l1;
      if (localy1.apQ())
      {
        localEmojiView1 = localke.cZZ;
        l1 = paramak.Bo();
      }
      do
      {
        long l4 = l1;
        localy2 = localy1;
        localObject3 = localEmojiView1;
        l3 = l4;
        bool = false;
        break;
        a(paramak, localy1, paramChattingUI);
        localEmojiView1 = localke.cZZ;
        l1 = paramak.Bo();
      }
      while ((localy1.getType() != y.gho) && (localy1.getType() != y.ghr));
      bool = true;
      long l2 = l1;
      localy2 = localy1;
      localObject3 = localEmojiView1;
      l3 = l2;
    }
    String str1 = paramChattingUI.gMi.bNl;
    if (com.tencent.mm.model.w.db(str1))
      localke.cMS.setVisibility(8);
    while (true)
    {
      localke.gMy.setText(com.tencent.mm.model.w.cu(str1));
      localObject1 = paramak.aCl();
      break;
      c.a(localke.cMS, str1);
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    int i;
    y localy;
    if ((paramak.aCd()) && (be.uz().isSDCardAvailable()))
    {
      i = ((kk)paramView.getTag()).position;
      localy = h.apj().ja(paramak.ot());
      if ((localy == null) || (localy.aBG() != y.ggZ) || (!TextUtils.isEmpty(localy.aBK())))
        break label182;
      paramContextMenu.add(i, 104, 0, paramView.getContext().getString(2131165667));
      paramContextMenu.add(i, 113, 0, paramView.getContext().getString(2131165626));
    }
    while (true)
    {
      if ((localy != null) && (paramak.getStatus() == 5))
        paramContextMenu.add(i, 103, 0, paramView.getContext().getString(2131165775));
      if (!this.gMB.aJJ())
        paramContextMenu.add(i, 100, 0, paramView.getContext().getString(2131165666));
      return true;
      label182: if ((localy != null) && (localy.aBG() != com.tencent.mm.storage.w.ggY) && (localy.aBG() != com.tencent.mm.storage.w.ggX) && (localy.aBG() != com.tencent.mm.storage.w.ggW) && (localy.aBG() != y.ghl) && (localy.aBG() != y.ghk) && (!TextUtils.isEmpty(localy.aBK())))
        paramContextMenu.add(i, 117, 0, paramView.getContext().getString(2131167329));
    }
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
 * Qualified Name:     com.tencent.mm.ui.chatting.de
 * JD-Core Version:    0.6.2
 */