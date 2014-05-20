package com.tencent.mm.ui.chatting;

import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.tencent.mm.storage.ak;

final class do extends ce
{
  public do()
  {
    super(5);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = paramLayoutInflater.inflate(2130903179, null);
      dp localdp = new dp(this, this.dws);
      localdp.dkq = ((TextView)paramView.findViewById(2131361841));
      localdp.gMU = ((TextView)paramView.findViewById(2131361935));
      paramView.setTag(localdp);
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    dp localdp = (dp)paramcf;
    localdp.gMU.setText(paramak.getContent());
    paramChattingUI.gMi.gNr.f(localdp.gMU);
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
 * Qualified Name:     com.tencent.mm.ui.chatting.do
 * JD-Core Version:    0.6.2
 */