package com.tencent.mm.pluginsdk.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.tencent.mm.pluginsdk.ui.chat.ar;

public abstract class ChatFooterPanel extends LinearLayout
{
  protected h fki;
  protected ar fkj;
  protected int fkk;

  public ChatFooterPanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public final void a(ar paramar)
  {
    this.fkj = paramar;
  }

  public final void a(h paramh)
  {
    this.fki = paramh;
  }

  public abstract void aqY();

  public abstract void aqZ();

  public abstract void ara();

  public abstract void arb();

  public abstract void ch(boolean paramBoolean);

  public abstract void ci(boolean paramBoolean);

  public abstract void cj(boolean paramBoolean);

  public void destroy()
  {
  }

  public final void kf(int paramInt)
  {
    this.fkk = paramInt;
  }

  public abstract void onPause();

  public abstract void onResume();

  public abstract void reset();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.ChatFooterPanel
 * JD-Core Version:    0.6.2
 */