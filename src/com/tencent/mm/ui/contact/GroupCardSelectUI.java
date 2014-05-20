package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.MMActivity;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class GroupCardSelectUI extends MMActivity
{
  private TextView cPW;
  private List dKR;
  private boolean gUk = true;
  private boolean gUl;
  private ListView gUm;
  private cp gUn;
  private HashMap gUo;

  private void a(int paramInt, i parami, long paramLong)
  {
    for (int i = 0; (i < paramInt) && (paramLong <= ((Long)this.gUo.get(((i)this.dKR.get(i)).getUsername())).longValue()); i++);
    this.dKR.add(i, parami);
  }

  protected final void FR()
  {
    this.gUm = ((ListView)findViewById(2131362848));
    this.gUn = new cp(this);
    this.gUm.setAdapter(this.gUn);
    this.gUm.setOnItemClickListener(new cn(this));
    this.cPW = ((TextView)findViewById(2131362849));
    if (this.gUn.getCount() <= 0)
      this.cPW.setVisibility(0);
    while (true)
    {
      a(new co(this));
      return;
      this.cPW.setVisibility(8);
    }
  }

  protected final int getLayoutId()
  {
    return 2130903358;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    vT(getString(2131166195));
    this.gUk = getIntent().getBooleanExtra("group_select_type", true);
    this.gUl = getIntent().getBooleanExtra("group_select_need_result", false);
    this.gUo = be.uz().sx().aAK();
    this.dKR = new LinkedList();
    List localList = w.tM();
    if ((localList == null) || (localList.size() == 0))
    {
      FR();
      return;
    }
    Iterator localIterator = localList.iterator();
    int i = 0;
    label99: 
    while (localIterator.hasNext())
    {
      i locali = (i)localIterator.next();
      if (!this.gUo.containsKey(locali.getUsername()))
      {
        if (!locali.rb())
          break label205;
        this.dKR.add(locali);
      }
      else
      {
        a(i, locali, ((Long)this.gUo.get(locali.getUsername())).longValue());
      }
    }
    label205: for (int j = i + 1; ; j = i)
    {
      i = j;
      break label99;
      localList.clear();
      break;
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  protected void onPause()
  {
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.GroupCardSelectUI
 * JD-Core Version:    0.6.2
 */