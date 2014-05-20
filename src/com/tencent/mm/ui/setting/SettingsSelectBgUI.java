package com.tencent.mm.ui.setting;

import android.content.Intent;
import android.os.Bundle;
import android.widget.GridView;
import com.tencent.mm.ab.i;
import com.tencent.mm.ab.j;
import com.tencent.mm.ab.l;
import com.tencent.mm.ab.r;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ab;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.MMActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SettingsSelectBgUI extends MMActivity
  implements m
{
  private List fhg = new ArrayList();
  private ec hfZ;
  private boolean hfk;
  private GridView hga;
  private i hgb;
  private ay hgc = new ay(new dy(this), true);
  private String username;

  private void aF(List paramList)
  {
    if (paramList.size() > 0)
    {
      this.hgb = ((i)paramList.remove(0));
      be.uA().d(this.hgb);
      return;
    }
    this.hgb = null;
  }

  protected final void FR()
  {
    mn(2131166154);
    a(new dz(this));
    this.hfk = getIntent().getBooleanExtra("isApplyToAll", true);
    this.username = getIntent().getStringExtra("username");
    this.hgc.bO(20L);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if ((!(paramx instanceof ab)) || (((ab)paramx).wQ() != 1))
      aa.d("MicroMsg.SettingsSelectBgUI", "another scene");
    do
    {
      int i;
      do
      {
        return;
        i = paramx.getType();
      }
      while ((i != 159) && (i != 160));
      if (i == 160)
        aF(this.fhg);
    }
    while ((paramInt1 != 0) || (paramInt2 == 0));
  }

  protected final int getLayoutId()
  {
    return 2130903692;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
    be.uA().a(159, this);
    be.uA().a(160, this);
    if (be.uz().isSDCardAvailable())
    {
      j localj = new j(1);
      be.uA().d(localj);
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.hgb != null)
    {
      be.uA().c(this.hgb);
      r.BM().L(this.hgb.BG(), 1);
    }
    List localList = this.fhg;
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      i locali = (i)localIterator.next();
      r.BM().L(locali.BG(), 1);
    }
    localList.clear();
    be.uA().b(159, this);
    be.uA().b(160, this);
    this.hfZ.closeCursor();
    r.BM().f(this.hfZ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsSelectBgUI
 * JD-Core Version:    0.6.2
 */