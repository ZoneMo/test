package com.tencent.mm.plugin.scanner.ui;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.e;
import com.tencent.mm.ui.base.MMDotView;
import com.tencent.mm.ui.base.MMFlipper;
import java.util.List;

public class SelectScanModePanel extends LinearLayout
{
  private static int efa = 85;
  private static int efb = 85;
  private Context context;
  private final int efc = 0;
  private int efd = 0;
  protected List efe;
  private int[] eff;
  private int[] efg;
  private int[] efh;
  private int[] efi;
  private AdapterView.OnItemClickListener efj;
  private int efk;
  private boolean efl;
  private int efm;
  private int efn;
  private MMFlipper efo;
  private MMDotView efp;
  private bs efq;

  public SelectScanModePanel(Context paramContext)
  {
    super(paramContext);
    int[] arrayOfInt1 = new int[4];
    arrayOfInt1[0] = n.bxg;
    arrayOfInt1[1] = n.bxe;
    arrayOfInt1[2] = n.bxj;
    arrayOfInt1[3] = n.bxf;
    this.eff = arrayOfInt1;
    int[] arrayOfInt2 = new int[4];
    arrayOfInt2[0] = h.ahS;
    arrayOfInt2[1] = h.ahO;
    arrayOfInt2[2] = h.ahU;
    arrayOfInt2[3] = h.ahX;
    this.efg = arrayOfInt2;
    int[] arrayOfInt3 = new int[4];
    arrayOfInt3[0] = h.ahT;
    arrayOfInt3[1] = h.ahP;
    arrayOfInt3[2] = h.ahV;
    arrayOfInt3[3] = h.ahY;
    this.efh = arrayOfInt3;
    this.efi = new int[] { 1, 2, 5, 3 };
    this.efk = 0;
    this.efl = false;
    this.context = paramContext;
    init();
  }

  public SelectScanModePanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    int[] arrayOfInt1 = new int[4];
    arrayOfInt1[0] = n.bxg;
    arrayOfInt1[1] = n.bxe;
    arrayOfInt1[2] = n.bxj;
    arrayOfInt1[3] = n.bxf;
    this.eff = arrayOfInt1;
    int[] arrayOfInt2 = new int[4];
    arrayOfInt2[0] = h.ahS;
    arrayOfInt2[1] = h.ahO;
    arrayOfInt2[2] = h.ahU;
    arrayOfInt2[3] = h.ahX;
    this.efg = arrayOfInt2;
    int[] arrayOfInt3 = new int[4];
    arrayOfInt3[0] = h.ahT;
    arrayOfInt3[1] = h.ahP;
    arrayOfInt3[2] = h.ahV;
    arrayOfInt3[3] = h.ahY;
    this.efh = arrayOfInt3;
    this.efi = new int[] { 1, 2, 5, 3 };
    this.efk = 0;
    this.efl = false;
    this.context = paramContext;
    init();
  }

  private void init()
  {
    View.inflate(this.context, k.aZl, this);
    this.efp = ((MMDotView)findViewById(i.aIP));
    aa.v("MicroMsg.scanner.SelectScanModePanel", "AppPanel initFlipper");
    this.efo = ((MMFlipper)findViewById(i.aIQ));
    View localView = findViewById(i.aIO);
    if (this.context.getResources().getConfiguration().orientation == 2)
    {
      LinearLayout.LayoutParams localLayoutParams2 = (LinearLayout.LayoutParams)localView.getLayoutParams();
      localLayoutParams2.height = e.a(this.context, efb);
      localView.setLayoutParams(localLayoutParams2);
    }
    while (true)
    {
      this.efo.removeAllViews();
      this.efo.a(new bp(this));
      this.efo.a(new bq(this));
      return;
      LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)localView.getLayoutParams();
      localLayoutParams1.height = e.a(this.context, efa);
      localView.setLayoutParams(localLayoutParams1);
    }
  }

  public final void a(bs parambs)
  {
    this.efq = parambs;
  }

  public final void hI(int paramInt)
  {
    for (int i = 0; i < this.efi.length; i++)
      if (this.efi[i] == paramInt)
        this.efd = i;
    if (this.efe != null)
      for (int j = 0; j < this.efe.size(); j++)
      {
        bm localbm = (bm)((SelectScanModeGrid)this.efe.get(j)).getAdapter();
        if (localbm != null)
        {
          int k = 0;
          if (k < localbm.getCount())
          {
            bo localbo = (bo)localbm.getItem(k);
            if ((localbo != null) && (localbo.eeZ != null))
            {
              if (localbo.eeY != paramInt)
                break label166;
              localbo.eeZ.setBackgroundResource(localbo.eeX);
              if (j > 0)
              {
                this.efo.nb(j);
                this.efp.mY(j);
              }
            }
            while (true)
            {
              k++;
              break;
              label166: localbo.eeZ.setBackgroundResource(localbo.eeW);
            }
          }
        }
      }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.SelectScanModePanel
 * JD-Core Version:    0.6.2
 */