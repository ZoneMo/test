package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.sdk.platformtools.e;
import com.tencent.mm.ui.tools.fy;

public class IconSwitchKeyValuePreference extends Preference
{
  private TextView ecB;
  private int status = 0;

  public IconSwitchKeyValuePreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public IconSwitchKeyValuePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public IconSwitchKeyValuePreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void LP()
  {
    if (this.ecB == null)
      return;
    int i = e.a(getContext(), 2.0F);
    this.ecB.setTextColor(fy.cg(getContext()));
    if (this.status == 0)
    {
      this.ecB.setCompoundDrawablesWithIntrinsicBounds(h.aiW, 0, 0, 0);
      this.ecB.setCompoundDrawablePadding(i);
      return;
    }
    if (this.status == 1)
    {
      this.ecB.setCompoundDrawablesWithIntrinsicBounds(h.aiU, 0, 0, 0);
      this.ecB.setCompoundDrawablePadding(i);
      return;
    }
    if (this.status == 2)
    {
      this.ecB.setCompoundDrawablesWithIntrinsicBounds(h.aiV, 0, 0, 0);
      this.ecB.setCompoundDrawablePadding(i);
      return;
    }
    this.ecB.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
  }

  public final void ns(int paramInt)
  {
    this.status = paramInt;
    LP();
  }

  public final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    this.ecB = ((TextView)paramView.findViewById(16908304));
    LP();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.IconSwitchKeyValuePreference
 * JD-Core Version:    0.6.2
 */