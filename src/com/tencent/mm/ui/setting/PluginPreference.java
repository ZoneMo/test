package com.tencent.mm.ui.setting;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.m.af;
import com.tencent.mm.m.c;
import com.tencent.mm.m.m;
import com.tencent.mm.m.p;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.preference.Preference;

public final class PluginPreference extends Preference
  implements p
{
  private MMActivity bLH;
  private ImageView cqS = null;
  private String dah = "";
  private int dai = -1;
  private int daj = 8;
  private int fsz = 255;
  private String heb;
  private String hec;

  public PluginPreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public PluginPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public PluginPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.bLH = ((MMActivity)paramContext);
    setLayoutResource(2130903475);
    af.vJ().a(this);
  }

  private void atj()
  {
    Bitmap localBitmap;
    if (this.cqS != null)
    {
      localBitmap = c.a(this.heb, false, -1);
      if (localBitmap == null)
        this.cqS.setImageResource(2130838793);
    }
    else
    {
      return;
    }
    this.cqS.setImageBitmap(localBitmap);
    this.cqS.setBackgroundColor(0);
  }

  public final String aMj()
  {
    return this.hec;
  }

  public final String aMk()
  {
    return this.heb;
  }

  public final void aq(String paramString, int paramInt)
  {
    this.dah = paramString;
    this.dai = paramInt;
  }

  public final void ei(String paramString)
  {
    if ((this.heb != null) && (this.heb.equals(paramString)))
      new Handler(Looper.getMainLooper()).post(new o(this));
  }

  public final void nT(int paramInt)
  {
    this.fsz = paramInt;
  }

  public final void np(int paramInt)
  {
    this.daj = paramInt;
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    this.cqS = ((ImageView)paramView.findViewById(2131362591));
    this.cqS.setAlpha(this.fsz);
    TextView localTextView = (TextView)paramView.findViewById(2131363210);
    if (localTextView != null)
    {
      localTextView.setVisibility(this.daj);
      localTextView.setText(this.dah);
      if (this.dai != -1)
        localTextView.setBackgroundDrawable(a.k(this.bLH, this.dai));
    }
    atj();
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    LayoutInflater localLayoutInflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(2131361916);
    localViewGroup.removeAllViews();
    localLayoutInflater.inflate(2130903497, localViewGroup);
    return localView;
  }

  public final boolean xt(String paramString)
  {
    i locali = be.uz().su().tO(paramString);
    if ((locali == null) || (locali.rj() == 0))
    {
      aa.e("MicroMsg.PluginPreference", "plugin do not exist");
      return false;
    }
    this.heb = locali.getUsername();
    this.hec = locali.rq();
    setKey("settings_plugins_list_#" + this.heb);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.PluginPreference
 * JD-Core Version:    0.6.2
 */