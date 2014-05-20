package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CheckBox;
import com.tencent.mm.h;
import com.tencent.mm.k;

public class CheckBoxPreference extends Preference
{
  private boolean gFK = false;

  public CheckBoxPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public CheckBoxPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setWidgetLayoutResource(k.aWG);
  }

  public final boolean isChecked()
  {
    return this.gFK;
  }

  public final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    CheckBox localCheckBox = (CheckBox)paramView.findViewById(16908289);
    localCheckBox.setBackgroundResource(h.afJ);
    localCheckBox.setChecked(this.gFK);
  }

  public final void setChecked(boolean paramBoolean)
  {
    this.gFK = paramBoolean;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.CheckBoxPreference
 * JD-Core Version:    0.6.2
 */