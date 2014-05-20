package com.tencent.mm.pluginsdk.ui.applet;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import com.tencent.mm.k;
import com.tencent.mm.ui.base.preference.Preference;

public class ContactListCustomPreference extends Preference
{
  private int background = -1;
  private View.OnClickListener ecN;
  private View fox;
  private final View.OnTouchListener foy = new z(this);

  public ContactListCustomPreference(Context paramContext)
  {
    super(paramContext);
    setLayoutResource(k.aWH);
  }

  public ContactListCustomPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setLayoutResource(k.aWH);
  }

  public ContactListCustomPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(k.aWH);
  }

  public final void kq(int paramInt)
  {
    this.background = paramInt;
  }

  public final void onBindView(View paramView)
  {
    ViewGroup localViewGroup = (ViewGroup)paramView;
    if ((this.fox != null) && (this.fox != null))
    {
      localViewGroup.removeAllViews();
      if (this.fox.getParent() != null)
        ((ViewGroup)this.fox.getParent()).removeAllViews();
      localViewGroup.addView(this.fox);
      if (this.ecN == null)
        break label85;
      localViewGroup.setOnClickListener(this.ecN);
    }
    while (true)
    {
      if (this.background >= 0)
        paramView.setBackgroundResource(this.background);
      return;
      label85: localViewGroup.setOnTouchListener(this.foy);
    }
  }

  public final void setCustomView(View paramView)
  {
    if (paramView == null)
      return;
    this.fox = paramView;
  }

  public final void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.ecN = paramOnClickListener;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.ContactListCustomPreference
 * JD-Core Version:    0.6.2
 */