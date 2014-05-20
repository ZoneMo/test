package com.tencent.mm.ui.setting;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.p.e;
import com.tencent.mm.p.u;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.preference.Preference;
import java.util.List;

public final class BizPreference extends Preference
{
  private LinearLayout dUe;
  private Bitmap gWR = null;
  private ViewGroup hdH;
  private TextView hdI;
  private List hdJ;
  private boolean hdK = false;
  private int height = -1;

  public BizPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public BizPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(2130903475);
    setWidgetLayoutResource(2130903528);
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    if (this.hdH != null)
    {
      this.hdH.removeAllViews();
      if ((this.hdJ != null) && (this.hdH.getChildCount() <= 0))
      {
        int i = this.hdJ.size();
        for (int j = 0; (j < i) && (j < 4); j++)
        {
          View localView = View.inflate(getContext(), 2130903707, null);
          e locale = (e)this.hdJ.get(j);
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = ((e)this.hdJ.get(j)).username;
          aa.e("MicroMsg.BizPreference", "biz username=%s", arrayOfObject1);
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = ((e)this.hdJ.get(j)).cnh;
          aa.e("MicroMsg.BizPreference", "biz iconUrl=%s", arrayOfObject2);
          ImageView localImageView = (ImageView)localView.findViewById(2131363737);
          Bitmap localBitmap = u.b(locale.username, locale.cnh, 2130838945);
          if (localBitmap == null)
          {
            if ((this.gWR == null) || (this.gWR.isRecycled()))
              this.gWR = BitmapFactory.decodeResource(getContext().getResources(), 2130837772);
            localBitmap = this.gWR;
          }
          if ((localBitmap != null) && (!localBitmap.isRecycled()))
            localImageView.setImageBitmap(localBitmap);
          this.hdH.addView(localView);
        }
        this.hdH.setVisibility(0);
        this.hdI.setVisibility(8);
      }
      if (this.hdK)
      {
        this.hdH.setVisibility(8);
        this.hdI.setVisibility(0);
      }
      if (this.height != -1)
        this.dUe.setMinimumHeight(this.height);
    }
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(2131361916);
    localViewGroup.removeAllViews();
    View.inflate(getContext(), 2130903481, localViewGroup);
    this.dUe = ((LinearLayout)localView.findViewById(2131363212));
    this.hdH = ((ViewGroup)localView.findViewById(2131363213));
    this.hdI = ((TextView)localView.findViewById(2131363214));
    return localView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.BizPreference
 * JD-Core Version:    0.6.2
 */