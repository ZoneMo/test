package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.tencent.mm.p.e;
import com.tencent.mm.p.u;
import com.tencent.mm.p.w;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.MaskLayout;
import com.tencent.mm.ui.base.preference.Preference;
import java.util.List;

public class FavorBrandPreference extends Preference
  implements w
{
  private i cQI;
  private boolean fsg;
  private MaskLayout[] gWP = new MaskLayout[4];
  private List gWQ = null;
  private Bitmap gWR = null;

  public FavorBrandPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public FavorBrandPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setLayoutResource(2130903475);
    setWidgetLayoutResource(2130903528);
    init();
  }

  private void FR()
  {
    if ((this.cQI == null) || (!this.fsg))
    {
      aa.d("MicroMsg.FavorBrandPreference", "initView : contact = " + this.cQI + " bindView = " + this.fsg);
      return;
    }
    int i = 0;
    label53: e locale;
    ImageView localImageView;
    if ((this.gWQ != null) && (i < this.gWQ.size()) && (i < 4))
    {
      locale = (e)this.gWQ.get(i);
      this.gWP[i].setVisibility(0);
      localImageView = (ImageView)this.gWP[i].getContentView();
      Bitmap localBitmap = u.b(locale.username, locale.cnh, 2130838945);
      if (localBitmap == null)
      {
        if ((this.gWR == null) || (this.gWR.isRecycled()))
          this.gWR = BitmapFactory.decodeResource(getContext().getResources(), 2130837772);
        localBitmap = this.gWR;
      }
      if ((localBitmap == null) || (localBitmap.isRecycled()))
        break label212;
      localImageView.setImageBitmap(localBitmap);
    }
    while (true)
    {
      this.gWP[i].setTag(locale.username);
      i++;
      break label53;
      break;
      label212: localImageView.setImageBitmap(null);
    }
  }

  private void init()
  {
    this.fsg = false;
    this.cQI = null;
  }

  public final void eP(String paramString)
  {
    FR();
  }

  public final void onBindView(View paramView)
  {
    this.gWP[0] = ((MaskLayout)paramView.findViewById(2131363215));
    this.gWP[1] = ((MaskLayout)paramView.findViewById(2131363216));
    this.gWP[2] = ((MaskLayout)paramView.findViewById(2131363217));
    this.gWP[3] = ((MaskLayout)paramView.findViewById(2131363218));
    this.fsg = true;
    FR();
    super.onBindView(paramView);
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(2131361916);
    localViewGroup.removeAllViews();
    View.inflate(getContext(), 2130903485, localViewGroup);
    return localView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.FavorBrandPreference
 * JD-Core Version:    0.6.2
 */