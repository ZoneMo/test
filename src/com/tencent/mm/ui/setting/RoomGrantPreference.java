package com.tencent.mm.ui.setting;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.mm.ui.base.preference.Preference;

public class RoomGrantPreference extends Preference
{
  private TextView cVm = null;
  private String faQ = "";

  public RoomGrantPreference(Context paramContext)
  {
    super(paramContext);
  }

  public RoomGrantPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public RoomGrantPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(2130903475);
    setWidgetLayoutResource(2130903528);
  }

  public final void onBindView(View paramView)
  {
    if (this.cVm == null)
      this.cVm = ((TextView)paramView.findViewById(2131363235));
    this.cVm.setText(this.faQ);
    super.onBindView(paramView);
  }

  public final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(2131361916);
    localViewGroup.removeAllViews();
    View.inflate(getContext(), 2130903501, localViewGroup);
    return localView;
  }

  public final void setText(String paramString)
  {
    this.faQ = paramString;
    if (this.cVm != null)
      this.cVm.setText(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.RoomGrantPreference
 * JD-Core Version:    0.6.2
 */