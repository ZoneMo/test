package com.tencent.mm.ui.setting;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.tencent.mm.p;
import com.tencent.mm.ui.base.preference.Preference;

public class NetStatPreference extends Preference
{
  private boolean hdW = false;

  public NetStatPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public NetStatPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public NetStatPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bJu, paramInt, 0);
    if (localTypedArray.getInt(0, 0) == 1);
    for (boolean bool = true; ; bool = false)
    {
      this.hdW = bool;
      localTypedArray.recycle();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(15);
      setSummary(paramContext.getString(2131166153, arrayOfObject));
      return;
    }
  }

  public final void eg(boolean paramBoolean)
  {
    this.hdW = paramBoolean;
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    LinearLayout localLinearLayout1 = (LinearLayout)paramView.findViewById(2131363219);
    localLinearLayout1.removeAllViews();
    int i = (int)(System.currentTimeMillis() / 86400000L);
    for (int j = 15; j > 0; j -= 5)
    {
      NetStatGroup localNetStatGroup1 = new NetStatGroup(getContext());
      localNetStatGroup1.r(1 + (i - j), this.hdW);
      localLinearLayout1.addView(localNetStatGroup1, -2, -1);
    }
    LinearLayout localLinearLayout2 = (LinearLayout)paramView.findViewById(2131363233);
    localLinearLayout2.removeAllViews();
    NetStatGroup localNetStatGroup2 = new NetStatGroup(getContext());
    localNetStatGroup2.ef(this.hdW);
    localLinearLayout2.addView(localNetStatGroup2);
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(2131361916);
    localViewGroup.removeAllViews();
    View.inflate(getContext(), 2130903495, localViewGroup);
    return localView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.NetStatPreference
 * JD-Core Version:    0.6.2
 */