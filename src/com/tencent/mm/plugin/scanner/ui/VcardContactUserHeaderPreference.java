package com.tencent.mm.plugin.scanner.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.n;
import com.tencent.mm.plugin.scanner.a.j;
import com.tencent.mm.plugin.scanner.a.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.preference.Preference;

public class VcardContactUserHeaderPreference extends Preference
{
  private String cie;
  private final Context context;
  private TextView dcY;
  private String ebr;
  private ImageView efA;
  private TextView efB;
  private TextView efC;
  private TextView efD;
  private String efE;
  private String title;

  public VcardContactUserHeaderPreference(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
  }

  public VcardContactUserHeaderPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
  }

  public VcardContactUserHeaderPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.context = paramContext;
  }

  public final void b(j paramj)
  {
    if (paramj != null)
    {
      if (!cj.hX(paramj.ZG().ZZ()))
        this.efE = paramj.ZG().ZZ();
      if (!cj.hX(paramj.yP()))
        this.cie = paramj.yP();
      if (!cj.hX(paramj.ZU()))
        this.ebr = paramj.ZU();
      if (!cj.hX(paramj.getTitle()))
        this.title = paramj.getTitle();
    }
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    aa.e("MicroMsg.scanner.VcardContactUserHeaderPreference", "onbindview");
    this.efA = ((ImageView)paramView.findViewById(i.aOm));
    this.dcY = ((TextView)paramView.findViewById(i.aOn));
    if (this.efE != null)
      this.dcY.setText(this.efE);
    this.efB = ((TextView)paramView.findViewById(i.aOo));
    if (this.cie != null)
    {
      TextView localTextView3 = this.efB;
      Context localContext3 = this.context;
      int k = n.bDR;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = this.cie;
      localTextView3.setText(localContext3.getString(k, arrayOfObject3));
      this.efB.setVisibility(0);
    }
    this.efC = ((TextView)paramView.findViewById(i.aOp));
    if (this.ebr != null)
    {
      TextView localTextView2 = this.efC;
      Context localContext2 = this.context;
      int j = n.bDT;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = this.ebr;
      localTextView2.setText(localContext2.getString(j, arrayOfObject2));
      this.efC.setVisibility(0);
    }
    this.efD = ((TextView)paramView.findViewById(i.aOq));
    if (this.title != null)
    {
      TextView localTextView1 = this.efD;
      Context localContext1 = this.context;
      int i = n.bDU;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = this.title;
      localTextView1.setText(localContext1.getString(i, arrayOfObject1));
      this.efD.setVisibility(0);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.VcardContactUserHeaderPreference
 * JD-Core Version:    0.6.2
 */