package com.tencent.mm.pluginsdk.ui;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;

public class EmojiBarView extends EmojiView
{
  private boolean fkv = false;
  private Handler mHandler = new Handler();

  public EmojiBarView(Context paramContext)
  {
    super(paramContext);
  }

  public EmojiBarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected final boolean arg()
  {
    return true;
  }

  protected final void arh()
  {
    if (this.fkv)
      return;
    this.mHandler.postDelayed(new k(this), 10L);
  }

  protected final boolean ari()
  {
    return false;
  }

  protected final boolean arj()
  {
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.EmojiBarView
 * JD-Core Version:    0.6.2
 */