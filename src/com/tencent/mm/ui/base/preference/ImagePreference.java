package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.p;

public final class ImagePreference extends Preference
{
  private ImageView eFr = null;
  private j gGb = new j();

  public ImagePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ImagePreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(k.aWY);
    setWidgetLayoutResource(k.aXe);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bJj);
    int i = localTypedArray.getResourceId(0, 0);
    if (i > 0)
    {
      this.gGb.setImageResource(i);
      this.gGb.d(this.eFr);
    }
    localTypedArray.recycle();
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    this.eFr = ((ImageView)paramView.findViewById(i.aww));
    this.gGb.d(this.eFr);
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(i.aqG);
    localViewGroup.removeAllViews();
    View.inflate(getContext(), k.aWY, localViewGroup);
    return localView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.ImagePreference
 * JD-Core Version:    0.6.2
 */