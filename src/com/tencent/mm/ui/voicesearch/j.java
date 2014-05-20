package com.tencent.mm.ui.voicesearch;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.model.ar;
import com.tencent.mm.model.av;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.sh;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.applet.f;
import com.tencent.mm.ui.base.MaskLayout;
import com.tencent.mm.ui.base.dv;
import com.tencent.mm.ui.bc;
import com.tencent.mm.ui.cx;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@SuppressLint({"DefaultLocale"})
public final class j extends bc
  implements com.tencent.mm.n.m
{
  private int bLY = 1;
  private ProgressDialog cIr = null;
  private List cKz = null;
  private LinkedList che = new LinkedList();
  private Context context;
  private com.tencent.mm.ui.applet.b cqO = new com.tencent.mm.ui.applet.b(new k(this));
  private f cqP = null;
  private String dKG;
  private String[] gKD;
  private String htE;
  private boolean htF = false;
  private i htG = null;
  private boolean htH = true;
  private boolean htI = false;
  private boolean htJ = false;

  public j(Context paramContext, int paramInt)
  {
    super(paramContext, new i());
    this.context = paramContext;
    this.htG = new i();
    this.htG.setUsername("_find_more_public_contact_");
    this.htG.qP();
    this.dKG = "@micromsg.with.all.biz.qq.com";
    this.bLY = paramInt;
  }

  private void v(Runnable paramRunnable)
  {
    if (Looper.myLooper() == Looper.getMainLooper())
    {
      paramRunnable.run();
      notifyDataSetChanged();
      return;
    }
    an.i(new n(this, paramRunnable));
  }

  public final void FZ()
  {
    v(new s(this));
  }

  protected final void Ga()
  {
    closeCursor();
    FZ();
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("MicroMsg.SearchResultAdapter", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (paramx.getType() != 106)
    {
      aa.e("MicroMsg.SearchResultAdapter", "error type");
      return;
    }
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    this.htJ = false;
    if (cx.a(this.context, paramInt1, paramInt2, 7))
    {
      this.htH = false;
      return;
    }
    if ((paramInt1 == 4) && (paramInt2 == -4))
    {
      v(new u(this));
      return;
    }
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      v(new l(this));
      return;
    }
    v(new m(this, paramx));
  }

  public final void aB(List paramList)
  {
    v(new o(this, paramList));
  }

  public final void aG(List paramList)
  {
    if (paramList != null)
      this.gKD = ((String[])paramList.toArray(new String[paramList.size()]));
    this.htE = null;
    closeCursor();
    FZ();
  }

  public final boolean aPm()
  {
    return this.htI;
  }

  protected final int aiD()
  {
    boolean bool1 = this.htF;
    int i = 0;
    int j;
    if (bool1)
    {
      boolean bool2 = this.htG.isHidden();
      j = 0;
      if (!bool2)
        break label33;
    }
    while (true)
    {
      i = j + 1;
      return i;
      label33: j = this.che.size();
    }
  }

  public final void detach()
  {
    if (this.cqO != null)
    {
      this.cqO.detach();
      this.cqO = null;
    }
  }

  public final void eA(boolean paramBoolean)
  {
    this.htI = paramBoolean;
    if (paramBoolean)
      this.htG.qP();
  }

  public final void eB(boolean paramBoolean)
  {
    v(new p(this, paramBoolean));
  }

  public final int getItemViewType(int paramInt)
  {
    if (this.bLY == 2)
      return 2;
    if (oE(paramInt))
      return 1;
    return 0;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    boolean bool1 = mz(paramInt);
    boolean bool2 = oE(paramInt);
    if ((this.htF) && (bool1))
    {
      if (paramView != null)
      {
        v localv6 = (v)paramView.getTag();
        if ((bool2) && (localv6.htM == null))
          paramView = null;
      }
      v localv5;
      if (paramView == null)
        if (bool2)
        {
          paramView = View.inflate(this.context, 2130903219, null);
          localv5 = new v();
          localv5.cMU = ((TextView)paramView.findViewById(2131361923));
          localv5.htM = ((ProgressBar)paramView.findViewById(2131362385));
          paramView.setTag(localv5);
        }
      while (!bool2)
      {
        if (this.cqP == null)
          this.cqP = new r(this);
        if (this.cqO != null)
          this.cqO.a(-1 + (paramInt - aEK()), this.cqP);
        sh localsh = oC(paramInt);
        localv5.cMT.setVisibility(8);
        if (localsh == null)
        {
          return paramView;
          paramView = View.inflate(this.context, 2130903225, null);
          localv5 = new v();
          localv5.cMT = ((TextView)paramView.findViewById(2131361912));
          localv5.cTU = ((MaskLayout)paramView.findViewById(2131361915));
          localv5.cMU = ((TextView)paramView.findViewById(2131361923));
          localv5.cMW = ((CheckBox)paramView.findViewById(2131361920));
          localv5.dKL = ((TextView)paramView.findViewById(2131361924));
          paramView.setTag(localv5);
          continue;
          localv5 = (v)paramView.getTag();
        }
        else
        {
          localv5.dKL.setVisibility(8);
          c.a((ImageView)localv5.cTU.getContentView(), localsh.fEI.getString());
          if (localsh.fNp != 0)
          {
            String str4 = ar.ub().cq(localsh.fNp);
            if (str4 != null)
            {
              Bitmap localBitmap2 = com.tencent.mm.p.u.eN(str4);
              localv5.cTU.a(localBitmap2, dv.gCR);
            }
          }
          while (true)
          {
            String str3 = cj.hW(localsh.fNa.getString());
            try
            {
              TextView localTextView4 = localv5.cMU;
              localTextView4.setText(com.tencent.mm.ao.b.e(this.context, str3, (int)localv5.cMU.getTextSize()));
              return paramView;
            }
            catch (Exception localException3)
            {
              localv5.cMU.setText("");
              return paramView;
            }
            localv5.cTU.aHz();
            continue;
            localv5.cTU.aHz();
          }
        }
      }
      if (this.htJ)
        localv5.htM.setVisibility(0);
      while (true)
      {
        aa.d("MicroMsg.SearchResultAdapter", "refresh  " + this.htH);
        if (((this.che != null) && (this.che.size() != 0)) || (this.htH))
          break;
        localv5.cMU.setText(this.context.getString(2131166205));
        localv5.cMU.setTextColor(this.context.getResources().getColor(2131492878));
        return paramView;
        localv5.htM.setVisibility(8);
      }
      localv5.cMU.setText(this.context.getString(2131166204));
      localv5.cMU.setTextColor(a.j(this.context, 2131493120));
      return paramView;
    }
    if (this.bLY == 2)
    {
      v localv3;
      if (paramView == null)
      {
        paramView = View.inflate(this.context, 2130903818, null);
        v localv4 = new v();
        localv4.cMU = ((TextView)paramView.findViewById(2131361923));
        paramView.setTag(localv4);
        localv3 = localv4;
      }
      while (true)
      {
        i locali2 = oD(paramInt);
        localv3.cMU.setTextColor(a.j(this.context, 2131493120));
        try
        {
          Context localContext2 = this.context;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = w.a(locali2, locali2.getUsername());
          String str2 = localContext2.getString(2131166226, arrayOfObject);
          TextView localTextView3 = localv3.cMU;
          localTextView3.setText(com.tencent.mm.ao.b.e(this.context, str2, (int)localv3.cMU.getTextSize()));
          localv3.cMU.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
          return paramView;
          localv3 = (v)paramView.getTag();
        }
        catch (Exception localException2)
        {
          while (true)
            localv3.cMU.setText("");
        }
      }
    }
    v localv1;
    View localView1;
    if (paramView != null)
    {
      localv1 = (v)paramView.getTag();
      if (localv1 == null)
        localView1 = null;
    }
    while (true)
    {
      View localView2;
      v localv2;
      if (localView1 == null)
      {
        localView2 = View.inflate(this.context, 2130903225, null);
        localv2 = new v();
        localv2.cMT = ((TextView)localView2.findViewById(2131361912));
        localv2.cTU = ((MaskLayout)localView2.findViewById(2131361915));
        localv2.cMU = ((TextView)localView2.findViewById(2131361923));
        localv2.cMW = ((CheckBox)localView2.findViewById(2131361920));
        localv2.dKL = ((TextView)localView2.findViewById(2131361924));
        localView2.setTag(localv2);
      }
      while (true)
      {
        i locali1 = oD(paramInt);
        if (localv2.cMT != null)
          localv2.cMT.setVisibility(8);
        TextView localTextView1 = localv2.cMU;
        Context localContext1 = this.context;
        int i;
        if (!w.db(locali1.getUsername()))
          i = 2131493120;
        while (true)
        {
          localTextView1.setTextColor(a.j(localContext1, i));
          c.a((ImageView)localv2.cTU.getContentView(), locali1.getUsername());
          localv2.dKL.setVisibility(8);
          if (locali1.rJ() != 0)
          {
            String str1 = ar.ub().cq(locali1.rJ());
            if (str1 != null)
            {
              Bitmap localBitmap1 = com.tencent.mm.p.u.eN(str1);
              localv2.cTU.a(localBitmap1, dv.gCR);
            }
          }
          try
          {
            while (true)
            {
              TextView localTextView2 = localv2.cMU;
              localTextView2.setText(com.tencent.mm.ao.b.e(this.context, w.a(locali1, locali1.getUsername()), (int)localv2.cMU.getTextSize()));
              return localView2;
              i = 2131493122;
              break;
              localv2.cTU.aHz();
              continue;
              localv2.cTU.aHz();
            }
          }
          catch (Exception localException1)
          {
            while (true)
              localv2.cMU.setText("");
          }
        }
        localView2 = localView1;
        localv2 = localv1;
      }
      localView1 = paramView;
      continue;
      localView1 = paramView;
      localv1 = null;
    }
  }

  public final int getViewTypeCount()
  {
    return 3;
  }

  public final void ih(String paramString)
  {
    String str = paramString.trim();
    if (str.startsWith("@"))
      str = str.substring(1) + "%@micromsg.with.all.biz.qq.com";
    aa.d("MicroMsg.SearchResultAdapter", "translateQueryText [" + str + "]");
    if ((str != null) && (!str.equals(this.htE)))
      v(new t(this));
    this.htE = str;
    this.gKD = null;
    if (this.htE == null)
      this.htE = "";
    closeCursor();
    FZ();
  }

  public final boolean isEnabled(int paramInt)
  {
    return (!oE(paramInt)) || ((this.che != null) && (this.che.size() != 0)) || (this.htH);
  }

  public final sh oC(int paramInt)
  {
    try
    {
      aa.d("MicroMsg.SearchResultAdapter", "position " + paramInt + " size " + this.che.size() + "  " + (paramInt - aEK()));
      sh localsh = (sh)this.che.get(-1 + (paramInt - aEK()));
      return localsh;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final i oD(int paramInt)
  {
    if (mz(paramInt))
      return (i)aEL();
    return (i)super.getItem(paramInt);
  }

  public final boolean oE(int paramInt)
  {
    if (this.htF)
    {
      int i = aEK();
      if ((paramInt == i) && (paramInt < i + aiD()))
        return true;
    }
    return false;
  }

  public final void onPause()
  {
    be.uA().b(106, this);
  }

  public final void onResume()
  {
    be.uA().a(106, this);
  }

  public final void onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.cqO != null)
      this.cqO.onTouchEvent(paramMotionEvent);
  }

  public final void xY(String paramString)
  {
    this.dKG = paramString;
  }

  public final void xZ(String paramString)
  {
    v(new q(this, paramString));
  }

  public final boolean ya(String paramString)
  {
    if ((this.cKz != null) && (paramString != null))
    {
      Iterator localIterator = this.cKz.iterator();
      while (localIterator.hasNext())
        if (((String)localIterator.next()).equals(paramString))
          return false;
    }
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicesearch.j
 * JD-Core Version:    0.6.2
 */