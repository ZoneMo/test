package com.tencent.mm.ui.setting;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.mm.ui.base.preference.Preference;

public final class PluginEmptyTextPreference extends Preference
{
  private TextView cVm = null;
  private Context context;
  private String text;

  public PluginEmptyTextPreference(Context paramContext)
  {
    this(paramContext, null, 0);
    this.text = paramContext.getString(2131165867);
  }

  public PluginEmptyTextPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.context = paramContext;
    setLayoutResource(2130903579);
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    this.cVm = ((TextView)paramView.findViewById(2131361967));
    this.cVm.setText(this.text);
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    View.inflate(this.context, 2130903579, null);
    return localView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.PluginEmptyTextPreference
 * JD-Core Version:    0.6.2
 */