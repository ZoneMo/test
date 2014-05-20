package com.tencent.mm.ui.contact;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.tencent.mm.m.af;
import com.tencent.mm.m.m;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.p.ab;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.MaskLayout;

public class BizContactEntranceView extends RelativeLayout
{
  private Context context;
  private View fng = null;
  private View gSW;
  private View gSX;
  private TextView gSY;
  private TextView gSZ;
  private int gTa = 0;

  public BizContactEntranceView(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
    init();
    aKw();
  }

  public BizContactEntranceView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
    init();
    aKw();
  }

  public BizContactEntranceView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.context = paramContext;
    init();
    aKw();
  }

  private void aKw()
  {
    int i = 8;
    long l = System.currentTimeMillis();
    int j = cj.a((Integer)be.uz().sr().get(221185), 0);
    this.gTa = j;
    int i1;
    int i2;
    if (this.gTa != 17)
    {
      int m = be.uz().su().aAA();
      int n = ab.ye().xG();
      if (n <= 0)
        break label244;
      i1 = 16;
      if (m - n <= 0)
        break label250;
      i2 = 1;
      label81: this.gTa = (j | i2 + i1);
      if (this.gTa != j)
        be.uz().sr().set(221185, Integer.valueOf(this.gTa));
    }
    View localView1 = this.gSW;
    int k;
    label139: View localView2;
    if ((0x10 & this.gTa) == 0)
    {
      k = i;
      localView1.setVisibility(k);
      localView2 = this.gSX;
      if ((0x1 & this.gTa) != 0)
        break label262;
    }
    while (true)
    {
      localView2.setVisibility(i);
      if ((0x10 & this.gTa) != 0)
        be.ut().o(new al(this));
      if ((0x1 & this.gTa) != 0)
        be.ut().o(new an(this));
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(System.currentTimeMillis() - l);
      aa.e("MicroMsg.BizContactEntranceView", "setStatus time: %d", arrayOfObject);
      return;
      label244: i1 = 0;
      break;
      label250: i2 = 0;
      break label81;
      k = 0;
      break label139;
      label262: i = 0;
    }
  }

  private void init()
  {
    View.inflate(getContext(), 2130903124, this);
    this.fng = findViewById(2131362131);
    this.gSW = this.fng.findViewById(2131362132);
    this.gSW.setOnClickListener(new ah(this));
    this.gSW.setOnTouchListener(new ai(this));
    MaskLayout localMaskLayout1 = (MaskLayout)this.gSW.findViewById(2131362133);
    ImageView localImageView1 = (ImageView)localMaskLayout1.getContentView();
    af.vJ();
    localImageView1.setImageBitmap(m.eh("service_officialaccounts"));
    this.gSY = ((TextView)localMaskLayout1.findViewById(2131362134));
    this.gSX = this.fng.findViewById(2131362135);
    this.gSX.setOnClickListener(new aj(this));
    this.gSX.setOnTouchListener(new ak(this));
    MaskLayout localMaskLayout2 = (MaskLayout)this.gSX.findViewById(2131362133);
    ImageView localImageView2 = (ImageView)localMaskLayout2.getContentView();
    af.vJ();
    localImageView2.setImageBitmap(m.eh("officialaccounts"));
    this.gSZ = ((TextView)localMaskLayout2.findViewById(2131362134));
  }

  public final void Qi()
  {
    aKw();
    setVisible(true);
  }

  public final void setVisible(boolean paramBoolean)
  {
    aa.d("MicroMsg.BizContactEntranceView", "setVisible visible = " + paramBoolean);
    View localView = this.fng;
    if ((paramBoolean) && (this.gTa != 0));
    for (int i = 0; ; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.BizContactEntranceView
 * JD-Core Version:    0.6.2
 */