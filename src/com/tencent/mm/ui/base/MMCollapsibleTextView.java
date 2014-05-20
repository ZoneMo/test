package com.tencent.mm.ui.base;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;

public class MMCollapsibleTextView extends LinearLayout
{
  private Context context;
  private Runnable diC = new aq(this);
  private int eun;
  private TextView ezT;
  private TextView ezU;
  private boolean ezV = true;
  private String ezW;
  private String ezX;
  private SparseIntArray gzl = new SparseIntArray();

  public MMCollapsibleTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
    this.ezW = this.context.getString(n.bCy);
    this.ezX = this.context.getString(n.bAH);
    View localView = inflate(this.context, k.aWt, this);
    localView.setPadding(0, -3, 0, 0);
    this.ezT = ((TextView)localView.findViewById(i.arg));
    this.ezU = ((TextView)localView.findViewById(i.arf));
    this.ezU.setOnClickListener(new ap(this));
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.ezV)
      return;
    this.ezV = true;
    if (this.ezT.getLineCount() <= 10)
    {
      this.gzl.put(this.eun, 0);
      return;
    }
    this.gzl.put(this.eun, 1);
    post(this.diC);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMCollapsibleTextView
 * JD-Core Version:    0.6.2
 */