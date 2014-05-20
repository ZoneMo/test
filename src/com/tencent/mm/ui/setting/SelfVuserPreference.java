package com.tencent.mm.ui.setting;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.preference.Preference;

public class SelfVuserPreference extends Preference
{
  private Drawable drawable;
  private String text;

  public SelfVuserPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public SelfVuserPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public SelfVuserPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(2130903475);
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    ImageView localImageView = (ImageView)paramView.findViewById(2131362591);
    if (localImageView != null)
    {
      localImageView.setImageDrawable(this.drawable);
      aa.d("MicroMsg.SelfVuserPreference", "onBindView set icon=" + this.drawable);
    }
    TextView localTextView = (TextView)paramView.findViewById(2131361976);
    if (localTextView != null)
    {
      localTextView.setVisibility(0);
      localTextView.setText(this.text);
    }
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(2131361916);
    localViewGroup.removeAllViews();
    View.inflate(getContext(), 2130903527, localViewGroup);
    return localView;
  }

  public final void setIconDrawable(Drawable paramDrawable)
  {
    this.drawable = paramDrawable;
  }

  public final void setText(String paramString)
  {
    this.text = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SelfVuserPreference
 * JD-Core Version:    0.6.2
 */