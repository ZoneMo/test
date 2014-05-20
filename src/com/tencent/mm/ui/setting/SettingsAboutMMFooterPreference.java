package com.tencent.mm.ui.setting;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.mm.ui.base.preference.Preference;

public class SettingsAboutMMFooterPreference extends Preference
{
  public SettingsAboutMMFooterPreference(Context paramContext)
  {
    super(paramContext);
  }

  public SettingsAboutMMFooterPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public SettingsAboutMMFooterPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected final void onBindView(View paramView)
  {
    TextView localTextView = (TextView)paramView.findViewById(2131363659);
    Resources localResources = paramView.getResources();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(2013);
    localTextView.setText(localResources.getString(2131165272, arrayOfObject));
    super.onBindView(paramView);
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    localView.findViewById(2131363658).setOnClickListener(new al(this, localView));
    return localView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsAboutMMFooterPreference
 * JD-Core Version:    0.6.2
 */