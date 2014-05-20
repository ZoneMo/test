package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.tencent.mm.k;
import com.tencent.mm.ui.tools.fy;

public class SwitchKeyValuePreference extends Preference
{
  private boolean cQJ = true;
  private TextView ecB;

  public SwitchKeyValuePreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public SwitchKeyValuePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public SwitchKeyValuePreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(k.aWC);
  }

  private void LP()
  {
    if (this.ecB == null)
      return;
    if (this.cQJ)
    {
      this.ecB.setTextColor(fy.cf(getContext()));
      return;
    }
    this.ecB.setTextColor(fy.cg(getContext()));
  }

  public final void dD(boolean paramBoolean)
  {
    this.cQJ = paramBoolean;
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
 * Qualified Name:     com.tencent.mm.ui.base.preference.SwitchKeyValuePreference
 * JD-Core Version:    0.6.2
 */