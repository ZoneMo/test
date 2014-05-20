package com.tencent.mm.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class LauncherUIBottomTabView extends LauncherUITabView
{
  public LauncherUIBottomTabView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public LauncherUIBottomTabView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected final az a(int paramInt, ViewGroup paramViewGroup)
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(getContext());
    az localaz = new az(this);
    localaz.elC = localLayoutInflater.inflate(2130903382, paramViewGroup, false);
    localaz.elC.setTag(Integer.valueOf(paramInt));
    localaz.elC.setOnClickListener(this.gmC);
    localaz.daV = ((TextView)localaz.elC.findViewById(2131362888));
    localaz.gkk = ((TextView)localaz.elC.findViewById(2131362890));
    localaz.gmI = localaz.elC.findViewById(2131362889);
    localaz.daU = ((ImageView)localaz.elC.findViewById(2131362892));
    return localaz;
  }

  protected final void aEH()
  {
  }

  protected final void aZ(int paramInt1, int paramInt2)
  {
    mu(this.fiI);
  }

  public final void b(int paramInt, float paramFloat)
  {
  }

  protected final az c(LinearLayout paramLinearLayout)
  {
    az localaz = a(0, paramLinearLayout);
    localaz.daV.setText(2131165582);
    localaz.daU.setImageResource(2130838922);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, getResources().getDimensionPixelSize(2131558435));
    localLayoutParams.weight = 1.0F;
    paramLinearLayout.addView(localaz.elC, localLayoutParams);
    return localaz;
  }

  protected final az d(LinearLayout paramLinearLayout)
  {
    az localaz = a(1, paramLinearLayout);
    localaz.daV.setText(2131165583);
    localaz.daU.setImageResource(2130838920);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, getResources().getDimensionPixelSize(2131558435));
    localLayoutParams.weight = 1.0F;
    paramLinearLayout.addView(localaz.elC, localLayoutParams);
    return localaz;
  }

  protected final az e(LinearLayout paramLinearLayout)
  {
    az localaz = a(2, paramLinearLayout);
    localaz.daV.setText(2131165584);
    localaz.daU.setImageResource(2130838924);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, getResources().getDimensionPixelSize(2131558435));
    localLayoutParams.weight = 1.0F;
    paramLinearLayout.addView(localaz.elC, localLayoutParams);
    return localaz;
  }

  protected final az f(LinearLayout paramLinearLayout)
  {
    az localaz = a(3, paramLinearLayout);
    localaz.daV.setText(2131165585);
    localaz.daU.setImageResource(2130838926);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, getResources().getDimensionPixelSize(2131558435));
    localLayoutParams.weight = 1.0F;
    paramLinearLayout.addView(localaz.elC, localLayoutParams);
    return localaz;
  }

  public final void mu(int paramInt)
  {
    this.fiI = paramInt;
    if (paramInt == 0)
    {
      this.gmy.daV.setTextColor(getResources().getColor(2131492913));
      this.gmy.daU.setImageResource(2130838921);
      if (paramInt != 1)
        break label183;
      this.gmz.daV.setTextColor(getResources().getColor(2131492913));
      this.gmz.daU.setImageResource(2130838919);
      label76: if (paramInt != 2)
        break label217;
      this.gmA.daV.setTextColor(getResources().getColor(2131492913));
      this.gmA.daU.setImageResource(2130838923);
    }
    while (true)
    {
      if (paramInt != 3)
        break label251;
      this.gmB.daV.setTextColor(getResources().getColor(2131492913));
      this.gmB.daU.setImageResource(2130838925);
      return;
      this.gmy.daV.setTextColor(getResources().getColor(2131492914));
      this.gmy.daU.setImageResource(2130838922);
      break;
      label183: this.gmz.daV.setTextColor(getResources().getColor(2131492914));
      this.gmz.daU.setImageResource(2130838920);
      break label76;
      label217: this.gmA.daV.setTextColor(getResources().getColor(2131492914));
      this.gmA.daU.setImageResource(2130838924);
    }
    label251: this.gmB.daV.setTextColor(getResources().getColor(2131492914));
    this.gmB.daU.setImageResource(2130838926);
  }

  protected final void mv(int paramInt)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.LauncherUIBottomTabView
 * JD-Core Version:    0.6.2
 */