package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.mm.k;

public class TextPreference extends Preference
{
  private Context context;
  private int dL;
  private String eBS;
  private TextView px;

  public TextPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
    setLayoutResource(k.aWZ);
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    this.px = ((TextView)paramView.findViewById(16908310));
    if (this.px != null)
    {
      this.px.setText(this.eBS);
      this.px.setGravity(this.dL);
    }
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    return super.onCreateView(paramViewGroup);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.TextPreference
 * JD-Core Version:    0.6.2
 */