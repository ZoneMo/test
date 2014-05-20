package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.an;
import com.tencent.mm.storage.ap;

final class dl extends ce
{
  private ChattingUI gMB;

  public dl()
  {
    super(8);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = paramLayoutInflater.inflate(2130903171, null);
      kt localkt = new kt(this.dws);
      localkt.dkq = ((TextView)paramView.findViewById(2131361841));
      localkt.gMy = ((TextView)paramView.findViewById(2131361934));
      localkt.gKd = ((ImageView)paramView.findViewById(2131362310));
      localkt.gQR = ((TextView)paramView.findViewById(2131362311));
      localkt.gMU = ((TextView)paramView.findViewById(2131361935));
      localkt.gki = paramView.findViewById(2131362277);
      paramView.setTag(localkt);
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    this.gMB = paramChattingUI;
    kt localkt = (kt)paramcf;
    an localan = be.uz().sw().vh(paramak.getContent());
    localkt.gQR.setText(localan.getTitle());
    localkt.gMU.setText(localan.getContent());
    localkt.gMy.setText(localan.Ch());
    ImageView localImageView = localkt.gKd;
    if (localan.aCI());
    for (int i = 0; ; i = 8)
    {
      localImageView.setVisibility(i);
      localkt.gki.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000'));
      localkt.gki.setOnClickListener(paramChattingUI.gMi.gNw);
      localkt.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
      return;
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    int i = ((kk)paramView.getTag()).position;
    if (!this.gMB.aJJ())
      paramContextMenu.add(i, 100, 0, paramView.getContext().getString(2131165658));
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
 * Qualified Name:     com.tencent.mm.ui.chatting.dl
 * JD-Core Version:    0.6.2
 */