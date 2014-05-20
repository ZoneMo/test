package com.tencent.mm.ui.pluginapp;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ListView;
import com.tencent.mm.m.af;
import com.tencent.mm.protocal.a.sj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.applet.a;
import java.io.IOException;
import java.util.LinkedList;

public class ContactSearchResultUI extends MMActivity
{
  private LinkedList che = new LinkedList();
  private ListView hdf;
  private g hdg;

  protected final void FR()
  {
    mn(2131166428);
    a(new d(this));
    this.hdf = ((ListView)findViewById(2131362445));
    byte[] arrayOfByte = getIntent().getByteArrayExtra("result");
    if (arrayOfByte != null);
    try
    {
      sj localsj = new sj().bP(arrayOfByte);
      if (localsj != null)
        this.che = localsj.fKI;
      label69: if ((this.che == null) || (this.che.size() == 0))
        return;
      this.hdg = new g(this, this);
      this.hdf.setAdapter(this.hdg);
      this.hdf.setOnItemClickListener(new e(this));
      this.hdf.setOnScrollListener(new a());
      this.hdf.setOnTouchListener(new f(this));
      return;
    }
    catch (IOException localIOException)
    {
      break label69;
    }
  }

  protected final int getLayoutId()
  {
    return 2130903233;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  protected void onDestroy()
  {
    af.wo().cancel();
    if (this.hdg != null)
      this.hdg.detach();
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.pluginapp.ContactSearchResultUI
 * JD-Core Version:    0.6.2
 */