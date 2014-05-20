package com.tencent.mm.ui.account;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;

public final class a extends BaseAdapter
{
  private LayoutInflater dLe;
  private String[] gpq;
  private Drawable gpr = null;
  private View.OnTouchListener gps = new b(this);

  public a(Context paramContext, String[] paramArrayOfString)
  {
    this.gpq = paramArrayOfString;
    this.dLe = LayoutInflater.from(paramContext);
    this.gpr = paramContext.getResources().getDrawable(h.aiy);
    this.gpr.setBounds(0, 0, this.gpr.getIntrinsicWidth(), this.gpr.getIntrinsicHeight());
  }

  private boolean mK(int paramInt)
  {
    return paramInt == -1 + this.gpq.length;
  }

  public final int getCount()
  {
    return this.gpq.length;
  }

  public final Object getItem(int paramInt)
  {
    return this.gpq[paramInt];
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = 1;
    if (paramView == null)
      paramView = this.dLe.inflate(k.aSf, null);
    TextView localTextView = (TextView)paramView.findViewById(i.amd);
    paramView.setOnTouchListener(this.gps);
    int j;
    if (paramInt == 0)
    {
      j = i;
      if ((j == 0) || (!mK(paramInt)))
        break label106;
      localTextView.setPadding(25, 0, 25, 10);
      localTextView.setCompoundDrawablePadding(0);
      localTextView.setCompoundDrawables(null, null, null, null);
    }
    while (true)
    {
      localTextView.setText(this.gpq[paramInt]);
      return paramView;
      j = 0;
      break;
      label106: if (paramInt == 0);
      while (true)
      {
        if (i == 0)
          break label155;
        localTextView.setPadding(25, 0, 10, 10);
        localTextView.setCompoundDrawablePadding(10);
        localTextView.setCompoundDrawables(null, null, this.gpr, null);
        break;
        i = 0;
      }
      label155: if (mK(paramInt))
      {
        localTextView.setPadding(0, 0, 25, 10);
        localTextView.setCompoundDrawablePadding(0);
        localTextView.setCompoundDrawables(null, null, null, null);
      }
      else
      {
        localTextView.setPadding(0, 0, 10, 10);
        localTextView.setCompoundDrawablePadding(10);
        localTextView.setCompoundDrawables(null, null, this.gpr, null);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.a
 * JD-Core Version:    0.6.2
 */