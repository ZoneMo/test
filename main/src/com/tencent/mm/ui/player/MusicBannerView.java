package com.tencent.mm.ui.player;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class MusicBannerView extends LinearLayout
{
  private Context context;
  private boolean gZY = false;
  private ScrollAlwaysTextView hcW;

  public MusicBannerView(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
  }

  public MusicBannerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
  }

  public void onFinishInflate()
  {
    super.onFinishInflate();
    if (!this.gZY)
    {
      this.hcW = ((ScrollAlwaysTextView)findViewById(2131363294));
      setOnClickListener(new b(this));
      int i = getResources().getDimensionPixelSize(2131558431);
      setPadding(i, 0, i, 0);
    }
  }

  public final void xp(String paramString)
  {
    if (this.hcW != null)
      this.hcW.setText(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.player.MusicBannerView
 * JD-Core Version:    0.6.2
 */