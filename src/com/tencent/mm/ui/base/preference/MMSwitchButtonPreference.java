package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.ui.base.MMSwitchButton;

public class MMSwitchButtonPreference extends Preference
{
  private boolean gBE = false;
  private boolean gGO = true;
  private MMSwitchButton gGP;

  public MMSwitchButtonPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public MMSwitchButtonPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setWidgetLayoutResource(k.aXf);
  }

  private void b(View paramView, boolean paramBoolean)
  {
    paramView.setEnabled(paramBoolean);
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      for (int i = -1 + localViewGroup.getChildCount(); i >= 0; i--)
        b(localViewGroup.getChildAt(i), paramBoolean);
    }
  }

  public final boolean isChecked()
  {
    return this.gBE;
  }

  public final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    if (this.gGO)
      b(paramView, isEnabled());
    if (this.gGP != null)
      this.gGP.setChecked(this.gBE);
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView1 = super.onCreateView(paramViewGroup);
    if (this.gGP == null)
    {
      View localView2 = localView1.findViewById(i.aMD);
      if ((localView2 != null) && ((localView2 instanceof MMSwitchButton)))
      {
        this.gGP = ((MMSwitchButton)localView2);
        this.gGP.setOnCheckedChangeListener(new af(this));
      }
    }
    return localView1;
  }

  public final void setChecked(boolean paramBoolean)
  {
    if (this.gBE == paramBoolean);
    do
    {
      return;
      this.gBE = paramBoolean;
    }
    while (this.gGP == null);
    this.gGP.performClick();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.MMSwitchButtonPreference
 * JD-Core Version:    0.6.2
 */