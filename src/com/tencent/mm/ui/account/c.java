package com.tencent.mm.ui.account;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class c extends BaseAdapter
  implements Filterable
{
  private List dSX;
  private ArrayList dSZ;
  private d gpu;
  private String gpv;
  private Context mContext;
  private final Object mLock = new Object();

  public c(Context paramContext, String[] paramArrayOfString, String paramString)
  {
    this.mContext = paramContext;
    this.dSX = Arrays.asList(paramArrayOfString);
    this.gpv = paramString;
  }

  private String gz(int paramInt)
  {
    return (String)this.dSX.get(paramInt);
  }

  public final int getCount()
  {
    return this.dSX.size();
  }

  public final Filter getFilter()
  {
    if (this.gpu == null)
      this.gpu = new d(this, (byte)0);
    return this.gpu;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    e locale2;
    if (paramView == null)
    {
      paramView = View.inflate(this.mContext, k.aSr, null);
      locale2 = new e();
      locale2.cQf = ((TextView)paramView.findViewById(i.aMO));
      paramView.setTag(locale2);
    }
    for (e locale1 = locale2; ; locale1 = (e)paramView.getTag())
    {
      String str = gz(paramInt);
      locale1.cQf.setText(str);
      paramView.setBackgroundResource(h.ady);
      return paramView;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.c
 * JD-Core Version:    0.6.2
 */