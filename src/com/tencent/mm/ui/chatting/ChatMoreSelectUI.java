package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.tencent.mm.model.r;
import com.tencent.mm.model.w;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.applet.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.tools.eo;
import com.tencent.mm.ui.transmit.s;
import java.util.LinkedList;
import java.util.List;

public class ChatMoreSelectUI extends MMActivity
{
  private eo diw;
  private ch gLG = null;
  private ListView gLH;
  private s gLI;
  private int gLJ = 3;

  private void wv(String paramString)
  {
    if (au.hX(paramString))
    {
      aa.v("MicroMsg.ChatMoreSelectUI", "avatarUseName is null or nil show dialog fail ");
      return;
    }
    boolean bool = w.cp(paramString);
    String str = null;
    if (bool)
      str = "(" + r.ci(paramString) + ")";
    i.a(aal(), paramString, getString(2131165629), paramString, str, getString(2131167684), new az(this, paramString));
  }

  protected final void FR()
  {
    this.gLH = ((ListView)findViewById(2131363625));
    this.diw = new eo();
    this.diw.a(new av(this));
    a(true, this.diw);
    View localView = View.inflate(this, 2130903670, null);
    localView.setOnClickListener(new aw(this));
    this.gLH.addHeaderView(localView);
    this.gLI = new s(this, (byte)0);
    LinkedList localLinkedList = new LinkedList();
    if (((0x2 & this.gLJ) != 0) && ((0x8 & this.gLJ) != 0))
      localLinkedList.remove("medianote");
    localLinkedList.add("weixin");
    String[] arrayOfString = w.chR;
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
      localLinkedList.add(arrayOfString[j]);
    s locals = this.gLI;
    if ((0x1 & this.gLJ) != 0);
    for (boolean bool = true; ; bool = false)
    {
      locals.e(localLinkedList, bool);
      this.gLH.setAdapter(this.gLI);
      this.gLH.setOnItemClickListener(new ax(this));
      mn(2131165625);
      a(new ay(this));
      return;
    }
  }

  protected final int getLayoutId()
  {
    return 2130903669;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    aa.e("MicroMsg.ChatMoreSelectUI", "onActivityResult, requestCode = " + paramInt1 + ", resultCode = " + paramInt2 + ", data = " + paramIntent);
    if (paramIntent != null)
      aa.e("MicroMsg.ChatMoreSelectUI", "onActivityResult, data.toString() = " + paramIntent.toString());
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1)
    {
      if (paramInt2 == -1)
      {
        aa.d("MicroMsg.ChatMoreSelectUI", "getIntent = " + getIntent());
        wv(paramIntent.getStringExtra("Select_Conv_User"));
      }
      return;
    }
    aa.e("MicroMsg.ChatMoreSelectUI", "onActivityResult, unknown requestCode = " + paramInt1);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  protected void onDestroy()
  {
    this.gLI.closeCursor();
    super.onDestroy();
  }

  protected void onPause()
  {
    super.onPause();
    if (this.diw != null)
      this.diw.aNE();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ChatMoreSelectUI
 * JD-Core Version:    0.6.2
 */