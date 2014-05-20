package com.tencent.mm.pluginsdk.ui.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.mm.c.a.ez;
import com.tencent.mm.c.a.fb;
import com.tencent.mm.h;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.protocal.a.nk;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.o;
import com.tencent.mm.ui.widget.QImageView;
import java.util.LinkedList;
import java.util.List;

public final class SnsPreference extends Preference
  implements o
{
  private MMActivity bLH;
  private List dtu = new LinkedList();
  private w fsA = new w();
  private QImageView fsw = null;
  private QImageView fsx = null;
  private QImageView fsy = null;
  private int fsz = 255;
  private String mTitle = "";

  public SnsPreference(Context paramContext)
  {
    this(paramContext, null);
    this.bLH = ((MMActivity)paramContext);
  }

  public SnsPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
    this.bLH = ((MMActivity)paramContext);
  }

  public SnsPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.bLH = ((MMActivity)paramContext);
    this.mTitle = paramContext.getString(n.biy);
    setLayoutResource(k.aWC);
  }

  private void atp()
  {
    if (this.fsw != null)
    {
      this.fsw.setImageResource(com.tencent.mm.f.white);
      this.fsw.setVisibility(4);
    }
    if (this.fsx != null)
    {
      this.fsx.setImageResource(com.tencent.mm.f.white);
      this.fsx.setVisibility(4);
    }
    if (this.fsy != null)
    {
      this.fsy.setImageResource(com.tencent.mm.f.white);
      this.fsy.setVisibility(4);
    }
    if ((this.fsw != null) && (this.dtu.size() > 0))
    {
      this.fsw.setVisibility(0);
      if (!com.tencent.mm.compatible.g.i.qd())
        this.fsw.setImageResource(h.agl);
    }
    else if ((this.fsx != null) && (this.dtu.size() >= 2))
    {
      this.fsx.setVisibility(0);
      if (com.tencent.mm.compatible.g.i.qd())
        break label242;
      this.fsx.setImageResource(h.agl);
    }
    while (true)
    {
      if ((this.fsy != null) && (this.dtu.size() >= 3))
      {
        this.fsy.setVisibility(0);
        if (com.tencent.mm.compatible.g.i.qd())
          break label277;
        this.fsy.setImageResource(h.agl);
      }
      return;
      aq.apy().b((nk)this.dtu.get(0), this.fsw, this.bLH.hashCode());
      break;
      label242: aq.apy().b((nk)this.dtu.get(1), this.fsx, this.bLH.hashCode());
    }
    label277: aq.apy().b((nk)this.dtu.get(2), this.fsy, this.bLH.hashCode());
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    this.fsw = ((QImageView)paramView.findViewById(com.tencent.mm.i.awx));
    this.fsw.setAlpha(this.fsz);
    this.fsw.setImageDrawable(this.fsA);
    this.fsx = ((QImageView)paramView.findViewById(com.tencent.mm.i.awy));
    this.fsx.setAlpha(this.fsz);
    this.fsx.setImageDrawable(this.fsA);
    this.fsy = ((QImageView)paramView.findViewById(com.tencent.mm.i.awz));
    this.fsy.setAlpha(this.fsz);
    this.fsy.setImageDrawable(this.fsA);
    ((TextView)paramView.findViewById(com.tencent.mm.i.amb)).setText(this.mTitle);
    atp();
  }

  protected final View onCreateView(ViewGroup paramViewGroup)
  {
    View localView = super.onCreateView(paramViewGroup);
    LayoutInflater localLayoutInflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(com.tencent.mm.i.content);
    localViewGroup.removeAllViews();
    localLayoutInflater.inflate(k.aWJ, localViewGroup);
    return localView;
  }

  public final void qS(String paramString)
  {
    if (paramString == null)
      return;
    this.dtu.clear();
    ez localez = new ez();
    localez.bPL.bPN = paramString;
    a.ayH().f(localez);
    if (localez.bPM.bPO != null)
      this.dtu.add(localez.bPM.bPO);
    if (localez.bPM.bPP != null)
      this.dtu.add(localez.bPM.bPP);
    if (localez.bPM.bPQ != null)
      this.dtu.add(localez.bPM.bPQ);
    atp();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.preference.SnsPreference
 * JD-Core Version:    0.6.2
 */