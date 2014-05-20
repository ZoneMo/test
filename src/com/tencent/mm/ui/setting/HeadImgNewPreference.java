package com.tencent.mm.ui.setting;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.ui.base.preference.Preference;

public final class HeadImgNewPreference extends Preference
{
  private View.OnClickListener cGR;
  private ImageView dZa;
  private View flY;
  private TextView hdN;
  private String hdO;
  private boolean hdP = false;
  private boolean hdQ = false;
  private int height = -1;

  public HeadImgNewPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public HeadImgNewPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public HeadImgNewPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(2130903475);
  }

  public final void j(View.OnClickListener paramOnClickListener)
  {
    this.cGR = paramOnClickListener;
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    if (this.dZa == null)
      this.dZa = ((ImageView)paramView.findViewById(2131363224));
    if (this.hdN == null)
      this.hdN = ((TextView)paramView.findViewById(2131363225));
    if (this.flY == null)
      this.flY = paramView.findViewById(2131363226);
    if (this.cGR != null)
      this.flY.setOnClickListener(this.cGR);
    if (this.hdO != null)
    {
      c.a(this.dZa, this.hdO);
      this.hdO = null;
    }
    if (!this.hdP)
    {
      this.flY.setVisibility(8);
      this.hdN.setVisibility(0);
    }
    while (true)
    {
      RelativeLayout localRelativeLayout = (RelativeLayout)paramView.findViewById(2131363223);
      if (this.height != -1)
        localRelativeLayout.setMinimumHeight(this.height);
      return;
      this.hdN.setVisibility(8);
      this.flY.setVisibility(0);
    }
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(2131361916);
    localViewGroup.removeAllViews();
    if (this.hdQ)
      View.inflate(getContext(), 2130903555, localViewGroup);
    while (true)
    {
      this.dZa = ((ImageView)localView.findViewById(2131363224));
      this.hdN = ((TextView)localView.findViewById(2131363225));
      this.flY = localView.findViewById(2131363226);
      return localView;
      View.inflate(getContext(), 2130903490, localViewGroup);
    }
  }

  public final void xr(String paramString)
  {
    this.hdO = null;
    if (this.dZa != null)
      c.a(this.dZa, paramString);
    while (paramString == null)
    {
      this.hdP = false;
      return;
      this.hdO = paramString;
    }
    this.hdP = true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.HeadImgNewPreference
 * JD-Core Version:    0.6.2
 */