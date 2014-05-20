package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.i;
import com.tencent.mm.pluginsdk.ui.EmojiView;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.u;
import com.tencent.mm.storage.y;

final class df extends ce
{
  private ChattingUI gMB;

  public df()
  {
    super(15);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903187);
      paramView.setTag(new ke(this.dws).c(paramView, false));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    int i = 1;
    this.gMB = paramChattingUI;
    ke localke = (ke)paramcf;
    localke.cMS.setVisibility(0);
    c.a(localke.cMS, paramChattingUI.gMi.clp);
    localke.cMS.setTag(new kk(paramChattingUI.gMi.clp));
    localke.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
    localke.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
    y localy1 = h.apj().ja(paramak.ot());
    Object localObject1;
    Object localObject2;
    long l3;
    label277: int n;
    if (localy1 != null)
    {
      u localu = u.uk(paramak.getContent());
      if (!localu.Ev())
        EmojiView.bF(paramak.Bo());
      if ((localy1.apQ()) && (!localu.Ev()))
      {
        EmojiView localEmojiView3 = localke.cZZ;
        long l5 = paramak.Bo();
        int k = i;
        localObject1 = localy1;
        localObject2 = localEmojiView3;
        l3 = l5;
        ((EmojiView)localObject2).a((y)localObject1, l3, k, i);
        if (!localu.Ev())
        {
          localu.Ew();
          paramak.setContent(localu.Eu());
          paramak.setStatus(be.uz().sw().bU(paramak.Bo()).getStatus());
          be.uz().sw().a(paramak.Bo(), paramak);
        }
        if ((localy1.getState() != y.ghw) && (paramak.getStatus() == i))
          break label518;
        ProgressBar localProgressBar = localke.dSt;
        if (i == 0)
          break label524;
        n = 4;
        label292: localProgressBar.setVisibility(n);
      }
    }
    else
    {
      a(paramChattingUI);
      localke.cZZ.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, paramChattingUI.gMi.clp, 0, '\000'));
      localke.cZZ.setOnClickListener(paramChattingUI.gMi.gNw);
      localke.cZZ.setOnLongClickListener(paramChattingUI.gMi.gNy);
      a(paramInt, localke, paramak, paramChattingUI.gMi.clp, paramChattingUI.gJU, paramChattingUI.gMi.gNw);
      return;
    }
    long l1;
    Object localObject3;
    if (localy1.apQ())
    {
      EmojiView localEmojiView2 = localke.cZZ;
      l1 = paramak.Bo();
      localObject3 = localEmojiView2;
    }
    for (y localy2 = localy1; ; localy2 = localy1)
    {
      long l4 = l1;
      localObject1 = localy2;
      localObject2 = localObject3;
      l3 = l4;
      int m = 0;
      break;
      a(paramak, localy1, paramChattingUI);
      EmojiView localEmojiView1 = localke.cZZ;
      l1 = paramak.Bo();
      if ((localy1.getType() == y.gho) || (localy1.getType() == y.ghr))
      {
        m = i;
        long l2 = l1;
        localObject1 = localy1;
        localObject2 = localEmojiView1;
        l3 = l2;
        break;
        label518: int j = 0;
        break label277;
        label524: n = 0;
        break label292;
      }
      localObject3 = localEmojiView1;
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    if ((paramak.aCd()) && (be.uz().isSDCardAvailable()))
    {
      int i = ((kk)paramView.getTag()).position;
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
 * Qualified Name:     com.tencent.mm.ui.chatting.df
 * JD-Core Version:    0.6.2
 */