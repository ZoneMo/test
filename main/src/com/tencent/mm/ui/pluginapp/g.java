package com.tencent.mm.ui.pluginapp;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.ar;
import com.tencent.mm.model.av;
import com.tencent.mm.p.u;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.sh;
import com.tencent.mm.ui.applet.f;
import com.tencent.mm.ui.base.MaskLayout;
import com.tencent.mm.ui.base.dv;
import java.util.LinkedList;

final class g extends BaseAdapter
{
  private com.tencent.mm.ui.applet.b cqO = new com.tencent.mm.ui.applet.b(new h(this));
  private f cqP = null;
  private Context mContext;

  public g(ContactSearchResultUI paramContactSearchResultUI, Context paramContext)
  {
    this.mContext = paramContext;
  }

  public final void detach()
  {
    if (this.cqO != null)
    {
      this.cqO.detach();
      this.cqO = null;
    }
  }

  public final int getCount()
  {
    if (ContactSearchResultUI.c(this.hdh) == null)
      return 0;
    return ContactSearchResultUI.c(this.hdh).size();
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.cqP == null)
      this.cqP = new i(this);
    if (this.cqO != null)
      this.cqO.a(paramInt, this.cqP);
    j localj;
    if (paramView == null)
    {
      paramView = View.inflate(this.mContext, 2130903234, null);
      localj = new j(this, (byte)0);
      localj.cTU = ((MaskLayout)paramView.findViewById(2131361915));
      localj.cMU = ((TextView)paramView.findViewById(2131361923));
      localj.gSg = ((TextView)paramView.findViewById(2131361919));
      paramView.setTag(localj);
    }
    sh localsh;
    while (true)
    {
      localsh = nS(paramInt);
      if (localsh != null)
        break;
      if (localj.cTU != null)
      {
        ImageView localImageView = (ImageView)localj.cTU.getContentView();
        if (localImageView != null)
          localImageView.setImageDrawable(null);
      }
      if (localj.cMU != null)
        localj.cMU.setText("");
      if (localj.gSg != null)
        localj.gSg.setText("");
      return paramView;
      localj = (j)paramView.getTag();
    }
    c.a((ImageView)localj.cTU.getContentView(), localsh.fEI.getString());
    String str1;
    if (localsh.fNp != 0)
    {
      String str3 = ar.ub().cq(localsh.fNp);
      if (str3 != null)
      {
        Bitmap localBitmap = u.eN(str3);
        localj.cTU.a(localBitmap, dv.gCR);
        str1 = au.hW(localsh.cqr);
        if (str1.length() <= 0)
          break label456;
        localj.gSg.setVisibility(0);
      }
    }
    while (true)
    {
      Object localObject;
      try
      {
        TextView localTextView2 = localj.gSg;
        localTextView2.setText(com.tencent.mm.ao.b.e(this.mContext, str1, (int)localj.gSg.getTextSize()));
        try
        {
          TextView localTextView1 = localj.cMU;
          Context localContext = this.mContext;
          if (au.hX(localsh.fNa.getString()))
            break label469;
          localObject = localsh.fNa.getString();
          localTextView1.setText(com.tencent.mm.ao.b.e(localContext, (String)localObject, (int)localj.cMU.getTextSize()));
          return paramView;
        }
        catch (Exception localException1)
        {
          localj.cMU.setText("");
          return paramView;
        }
        localj.cTU.aHz();
        break;
        localj.cTU.aHz();
      }
      catch (Exception localException2)
      {
        localj.gSg.setText("");
        continue;
      }
      label456: localj.gSg.setVisibility(8);
      continue;
      label469: if (!au.hX(localsh.cqt))
      {
        localObject = localsh.cqt;
      }
      else
      {
        String str2 = au.hW(localsh.fEI.getString());
        localObject = str2;
      }
    }
  }

  public final sh nS(int paramInt)
  {
    if (ContactSearchResultUI.c(this.hdh) == null)
      return null;
    return (sh)ContactSearchResultUI.c(this.hdh).get(paramInt);
  }

  public final void onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.cqO != null)
      this.cqO.onTouchEvent(paramMotionEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.pluginapp.g
 * JD-Core Version:    0.6.2
 */