package com.tencent.mm.pluginsdk.ui.preference;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.ui.base.preference.Preference;

public final class HeadImgPreference extends Preference
{
  private View.OnClickListener cGR;
  private ImageView dZa;
  private Bitmap frI;
  private int height = -1;

  public HeadImgPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public HeadImgPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public HeadImgPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(k.aWC);
  }

  public final void j(View.OnClickListener paramOnClickListener)
  {
    this.cGR = paramOnClickListener;
  }

  public final void k(Bitmap paramBitmap)
  {
    this.frI = null;
    if (this.dZa != null)
    {
      this.dZa.setImageBitmap(paramBitmap);
      return;
    }
    this.frI = paramBitmap;
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    if (this.dZa == null)
      this.dZa = ((ImageView)paramView.findViewById(i.awt));
    if (this.cGR != null)
      this.dZa.setOnClickListener(this.cGR);
    if (this.frI != null)
    {
      this.dZa.setImageBitmap(this.frI);
      this.frI = null;
    }
    LinearLayout localLinearLayout = (LinearLayout)paramView.findViewById(i.aBw);
    if (this.height != -1)
      localLinearLayout.setMinimumHeight(this.height);
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(i.content);
    localViewGroup.removeAllViews();
    View.inflate(getContext(), k.aWL, localViewGroup);
    this.dZa = ((ImageView)localView.findViewById(i.awt));
    return localView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.preference.HeadImgPreference
 * JD-Core Version:    0.6.2
 */