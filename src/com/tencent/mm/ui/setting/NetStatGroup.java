package com.tencent.mm.ui.setting;

import android.content.Context;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class NetStatGroup extends LinearLayout
{
  private final TextView dYH;
  private LinearLayout hdV;

  public NetStatGroup(Context paramContext)
  {
    this(paramContext, null);
  }

  public NetStatGroup(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    View.inflate(paramContext, 2130903569, this);
    this.hdV = ((LinearLayout)findViewById(2131363219));
    this.dYH = ((TextView)findViewById(2131361826));
  }

  public final void ef(boolean paramBoolean)
  {
    removeAllViews();
    View.inflate(getContext(), 2130903570, this);
    this.hdV = ((LinearLayout)findViewById(2131363219));
    NetStatRuler localNetStatRuler = new NetStatRuler(getContext());
    if (paramBoolean);
    for (String str = "wifi"; ; str = "mobile")
    {
      localNetStatRuler.setTag(str);
      localNetStatRuler.setLayoutParams(new LinearLayout.LayoutParams(-1, -1, 1.0F));
      this.hdV.addView(localNetStatRuler);
      return;
    }
  }

  public final void r(int paramInt, boolean paramBoolean)
  {
    int i = 0;
    String str = DateFormat.format(getContext().getString(2131168210, new Object[] { "" }), 86400000L * paramInt).toString();
    this.dYH.setText(str);
    this.hdV.removeAllViews();
    while (i < 5)
    {
      NetStatUnit localNetStatUnit = new NetStatUnit(getContext());
      localNetStatUnit.r(paramInt + i, paramBoolean);
      localNetStatUnit.setLayoutParams(new LinearLayout.LayoutParams(-1, -1, 1.0F));
      this.hdV.addView(localNetStatUnit);
      i++;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.NetStatGroup
 * JD-Core Version:    0.6.2
 */