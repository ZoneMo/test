package com.tencent.mm.plugin.backup.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.plugin.backup.model.ar;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.plugin.backup.model.l;
import com.tencent.mm.plugin.backup.model.z;
import com.tencent.mm.sdk.platformtools.al;

public class BakchatBannerView extends LinearLayout
  implements z
{
  private static String TAG = "MicroMsg.BakchatBannerView";
  private static boolean cNJ = false;
  private boolean cNd = false;
  private Context context;
  private boolean cxO = false;

  public BakchatBannerView(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
  }

  public BakchatBannerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
  }

  @TargetApi(11)
  public BakchatBannerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.context = paramContext;
  }

  public final void Hn()
  {
    refresh();
  }

  public final void Ho()
  {
    refresh();
  }

  public final void Iq()
  {
    d.Gk().b(this);
    d.Gl().b(this);
  }

  public final void V(int paramInt1, int paramInt2)
  {
    refresh();
  }

  public final void b(long paramLong1, long paramLong2)
  {
    refresh();
  }

  public final void c(long paramLong1, long paramLong2)
  {
  }

  public void onFinishInflate()
  {
    super.onFinishInflate();
    super.setOnClickListener(new bl(this));
    refresh();
  }

  public final void refresh()
  {
    this.cxO = d.Gk().GG();
    if (!this.cxO)
      this.cNd = d.Gl().GG();
    if (this.cxO)
      d.Gl().GI();
    if (this.cNd)
      d.Gk().GI();
    boolean bool1 = this.cxO;
    boolean bool2;
    boolean bool3;
    if (d.Gk().GH() == 1)
    {
      bool2 = true;
      this.cxO = (bool2 | bool1);
      bool3 = this.cNd;
      if (d.Gl().GH() != 1)
        break label129;
    }
    label129: for (boolean bool4 = true; ; bool4 = false)
    {
      this.cNd = (bool4 | bool3);
      if ((this.cxO) || (this.cNd))
        break label135;
      super.setVisibility(8);
      return;
      bool2 = false;
      break;
    }
    label135: super.setVisibility(0);
    if (this.cxO)
    {
      d.Gk().a(this);
      ((ImageView)findViewById(2131362055)).setImageResource(2130837848);
      int n = d.Gk().getOffset();
      int i1 = d.Gk().vR();
      if (i1 == 0);
      int i3;
      for (int i2 = 0; ; i2 = (int)(100L * n / i1))
      {
        i3 = d.Gk().GH();
        if (i3 != 1)
          break;
        ((ImageView)findViewById(2131362055)).setImageResource(2130837839);
        ((TextView)findViewById(2131362056)).setText(al.getContext().getString(2131166069));
        return;
      }
      if (i3 == 2)
      {
        TextView localTextView5 = (TextView)findViewById(2131362056);
        Context localContext5 = al.getContext();
        Object[] arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = Integer.valueOf(i2);
        localTextView5.setText(localContext5.getString(2131166068, arrayOfObject5));
        ((ImageView)findViewById(2131362055)).setImageResource(2130837844);
        return;
      }
      if (!d.Gk().Gz())
      {
        TextView localTextView4 = (TextView)findViewById(2131362056);
        Context localContext4 = al.getContext();
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = Integer.valueOf(i2);
        localTextView4.setText(localContext4.getString(2131166066, arrayOfObject4));
        return;
      }
      ((TextView)findViewById(2131362056)).setText(al.getContext().getString(2131166067));
      return;
    }
    d.Gl().a(this);
    ((ImageView)findViewById(2131362055)).setImageResource(2130837842);
    int i = d.Gl().getOffset();
    int j = d.Gl().vR();
    if (j == 0);
    int m;
    for (int k = 0; ; k = (int)(100L * i / j))
    {
      m = d.Gl().GH();
      if (!d.Gl().Hz())
        break;
      ((ImageView)findViewById(2131362055)).setImageResource(2130837839);
      ((TextView)findViewById(2131362056)).setText(al.getContext().getString(2131166071));
      if (!cNJ)
        a.a(this.context, 2131166072, new bm(this), new bn(this));
      cNJ = true;
      return;
    }
    if (m == 1)
    {
      ((ImageView)findViewById(2131362055)).setImageResource(2130837839);
      ((TextView)findViewById(2131362056)).setText(al.getContext().getString(2131166075));
      return;
    }
    if (m == 2)
    {
      TextView localTextView3 = (TextView)findViewById(2131362056);
      Context localContext3 = al.getContext();
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(k);
      localTextView3.setText(localContext3.getString(2131166074, arrayOfObject3));
      ((ImageView)findViewById(2131362055)).setImageResource(2130837844);
      return;
    }
    if (!d.Gl().Gz())
    {
      TextView localTextView2 = (TextView)findViewById(2131362056);
      Context localContext2 = al.getContext();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(k);
      localTextView2.setText(localContext2.getString(2131166070, arrayOfObject2));
      cNJ = false;
      return;
    }
    TextView localTextView1 = (TextView)findViewById(2131362056);
    Context localContext1 = al.getContext();
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(k);
    localTextView1.setText(localContext1.getString(2131166073, arrayOfObject1));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.BakchatBannerView
 * JD-Core Version:    0.6.2
 */