package com.tencent.mm.ui.contact;

import android.content.Context;
import android.database.Cursor;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.pluginsdk.ui.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.applet.f;
import com.tencent.mm.ui.base.MMSlideDelView;
import com.tencent.mm.ui.base.MaskLayout;
import com.tencent.mm.ui.base.cy;
import com.tencent.mm.ui.base.cz;
import com.tencent.mm.ui.base.db;
import com.tencent.mm.ui.base.dc;
import com.tencent.mm.ui.bc;
import java.util.List;

public final class ap extends bc
{
  protected MMActivity bLH;
  protected List cKz = null;
  protected dc cPK;
  protected cy cPL;
  protected cz cPN = MMSlideDelView.aHp();
  private com.tencent.mm.ui.applet.b cqO = null;
  private f cqP = null;
  protected String dKG = null;
  protected db dNc;
  private e fof;

  public ap(Context paramContext, String paramString)
  {
    super(paramContext, new i());
    this.bLH = ((MMActivity)paramContext);
    this.dKG = paramString;
    this.cqO = new com.tencent.mm.ui.applet.b(new aq(this));
  }

  private String F(i parami)
  {
    if (parami.rl() == 31)
      return "";
    if (parami.rl() == 43)
      return this.bLH.getString(2131167554);
    return String.valueOf((char)parami.rl());
  }

  public final void FZ()
  {
    try
    {
      Cursor localCursor = be.uz().su().a(this.dKG, "", this.cKz, false);
      closeCursor();
      setCursor(localCursor);
      notifyDataSetChanged();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected final void Ga()
  {
    FZ();
  }

  public final void a(e parame)
  {
    this.fof = parame;
  }

  public final void a(cy paramcy)
  {
    this.cPL = paramcy;
  }

  public final void a(db paramdb)
  {
    this.dNc = paramdb;
  }

  public final void a(dc paramdc)
  {
    this.cPK = paramdc;
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
    return getCursor().getCount();
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.cqP == null)
      this.cqP = new ar(this);
    if (this.cqO != null)
      this.cqO.a(paramInt, this.cqP);
    as localas1;
    if (paramView == null)
    {
      paramView = View.inflate(this.bLH, 2130903140, null);
      as localas2 = new as();
      localas2.cMT = ((TextView)paramView.findViewById(2131361912));
      localas2.cTU = ((MaskLayout)paramView.findViewById(2131361915));
      localas2.cMU = ((TextView)paramView.findViewById(2131361923));
      paramView.setTag(localas2);
      localas1 = localas2;
    }
    while (true)
    {
      i locali1 = (i)getItem(paramInt - 1);
      int i;
      label134: i locali2;
      String str2;
      label196: label206: int j;
      if (locali1 == null)
      {
        i = -1;
        locali2 = (i)getItem(paramInt);
        if (paramInt != 0)
          break label403;
        str2 = F(locali2);
        if (!au.hX(str2))
          break label369;
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = locali2.getUsername();
        arrayOfObject2[1] = Integer.valueOf(paramInt);
        aa.c("MicroMsg.ChatroomContactAdapter", "get display show head return null, user[%s] pos[%d]", arrayOfObject2);
        localas1.cMT.setVisibility(8);
        TextView localTextView1 = localas1.cMU;
        MMActivity localMMActivity = this.bLH;
        if (w.db(locali2.getUsername()))
          break label538;
        j = 2131493120;
        localTextView1.setTextColor(com.tencent.mm.an.a.j(localMMActivity, j));
        ImageView localImageView = (ImageView)localas1.cTU.getContentView();
        c.a(localImageView, locali2.getUsername());
        com.tencent.mm.pluginsdk.ui.a locala = (com.tencent.mm.pluginsdk.ui.a)localImageView.getDrawable();
        if (this.fof != null)
          this.fof.a(locala);
        localas1.cTU.aHz();
      }
      try
      {
        TextView localTextView2 = localas1.cMU;
        localTextView2.setText(com.tencent.mm.ao.b.e(this.bLH, w.cu(locali2.getUsername()), (int)localas1.cMU.getTextSize()));
        return paramView;
        localas1 = (as)paramView.getTag();
        continue;
        i = locali1.rl();
        break label134;
        label369: localas1.cMT.setVisibility(0);
        localas1.cMT.setText(str2);
        localas1.cMT.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        break label206;
        label403: if ((paramInt <= 0) || (locali2.rl() == i))
          break label196;
        String str1 = F(locali2);
        if (au.hX(str1))
        {
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = locali2.getUsername();
          arrayOfObject1[1] = Integer.valueOf(paramInt);
          aa.c("MicroMsg.ChatroomContactAdapter", "get display show head return null, user[%s] pos[%d]", arrayOfObject1);
          break label196;
        }
        localas1.cMT.setVisibility(0);
        localas1.cMT.setText(str1);
        if (locali2.rl() == 32)
        {
          localas1.cMT.setCompoundDrawablesWithIntrinsicBounds(2130838821, 0, 0, 0);
          localas1.cMT.setCompoundDrawablePadding(2);
          break label206;
        }
        localas1.cMT.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        break label206;
        label538: j = 2131493122;
      }
      catch (Exception localException)
      {
        localas1.cMU.setText("");
      }
    }
    return paramView;
  }

  public final void onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.cqO != null)
      this.cqO.onTouchEvent(paramMotionEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ap
 * JD-Core Version:    0.6.2
 */