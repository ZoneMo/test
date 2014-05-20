package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.text.format.DateFormat;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.tencent.mm.n;
import com.tencent.mm.storage.ak;

final class eo extends ce
{
  public eo()
  {
    super(25);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = paramLayoutInflater.inflate(2130903198, null);
      paramView.setTag(new mb(this.dws).au(paramView));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    paramcf.dkq.setVisibility(0);
    TextView localTextView = paramcf.dkq;
    long l = paramak.DL();
    localTextView.setText(paramChattingUI.getString(n.bnt) + DateFormat.format(paramChattingUI.getString(n.bns), l));
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    return false;
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
 * Qualified Name:     com.tencent.mm.ui.chatting.eo
 * JD-Core Version:    0.6.2
 */