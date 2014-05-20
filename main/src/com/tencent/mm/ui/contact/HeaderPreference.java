package com.tencent.mm.ui.contact;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.tools.fy;

public class HeaderPreference extends Preference
{
  private boolean bRj = false;
  private ImageView cID;
  private TextView dQa;
  private TextView eDL;
  private boolean gIh = false;
  private TextView gUr;
  private cr gUs;

  public HeaderPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public HeaderPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public final void onBindView(View paramView)
  {
    this.cID = ((ImageView)paramView.findViewById(2131361969));
    this.dQa = ((TextView)paramView.findViewById(2131362402));
    this.eDL = ((TextView)paramView.findViewById(2131361970));
    this.gUr = ((TextView)paramView.findViewById(2131361971));
    this.gIh = true;
    if ((!this.gIh) || (this.gUs == null))
      aa.w("MicroMsg.HeaderPreference", "initView : bindView = " + this.gIh);
    while (true)
    {
      super.onBindView(paramView);
      return;
      Bitmap localBitmap = this.gUs.aKN();
      if ((this.cID != null) && (localBitmap != null) && (!localBitmap.isRecycled()))
        this.cID.setImageBitmap(localBitmap);
      String str1 = this.gUs.aKM();
      if ((this.eDL != null) && (str1 != null) && (str1.length() > 0))
        this.eDL.setText(str1);
      String str2 = this.gUs.aKP();
      if (str2 != null)
      {
        this.gUr.setText(str2);
        this.gUr.setVisibility(0);
      }
      String str3;
      while (true)
      {
        boolean bool = this.bRj;
        if (this.dQa == null)
          break;
        str3 = this.gUs.aKO();
        if (!bool)
          break label310;
        if ((str3 == null) || (str3.length() <= 0))
          break label298;
        this.dQa.setTextColor(fy.cf(getContext()));
        this.dQa.setText(str3);
        this.dQa.setCompoundDrawablesWithIntrinsicBounds(2130839485, 0, 0, 0);
        break;
        this.gUr.setVisibility(8);
      }
      label298: this.dQa.setVisibility(8);
      continue;
      label310: if ((str3 != null) && (str3.length() > 0))
      {
        this.dQa.setTextColor(fy.cg(getContext()));
        this.dQa.setText(str3);
        this.dQa.setCompoundDrawablesWithIntrinsicBounds(2130839484, 0, 0, 0);
      }
      else
      {
        this.dQa.setVisibility(8);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.HeaderPreference
 * JD-Core Version:    0.6.2
 */