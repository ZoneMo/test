package com.tencent.mm.ui.setting;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.tencent.mm.ui.base.preference.Preference;

public class SettingsAboutMMHeaderPreference extends Preference
{
  private String hes = "";

  public SettingsAboutMMHeaderPreference(Context paramContext)
  {
    super(paramContext);
  }

  public SettingsAboutMMHeaderPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public SettingsAboutMMHeaderPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    TextView localTextView = (TextView)paramView.findViewById(2131363660);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramView.getResources().getString(2131167461);
    arrayOfObject[1] = this.hes;
    localTextView.setText(String.format("%s %s", arrayOfObject));
  }

  public final void setVersion(String paramString)
  {
    this.hes = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsAboutMMHeaderPreference
 * JD-Core Version:    0.6.2
 */