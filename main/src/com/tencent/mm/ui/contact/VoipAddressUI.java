package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.model.w;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.applet.a;
import com.tencent.mm.ui.base.AlphabetScrollBar;
import com.tencent.mm.ui.base.ce;
import com.tencent.mm.ui.base.ek;
import com.tencent.mm.ui.tools.eo;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class VoipAddressUI extends MMActivity
{
  private AlphabetScrollBar dLK;
  private ek dLM = new fo(this);
  private eo diw;
  private boolean eSl = false;
  private ListView gSA;
  private TextView gSB;
  private fe gVM;
  private boolean gVN = false;
  private ce gVb;

  private List aLb()
  {
    LinkedList localLinkedList = new LinkedList();
    new LinkedList();
    List localList = w.tT();
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
        localLinkedList.add((String)localIterator.next());
    }
    localLinkedList.add("weixin");
    localLinkedList.add("weibo");
    localLinkedList.add("qqmail");
    localLinkedList.add("fmessage");
    localLinkedList.add("tmessage");
    localLinkedList.add("qmessage");
    localLinkedList.add("qqsync");
    localLinkedList.add("floatbottle");
    localLinkedList.add("lbsapp");
    localLinkedList.add("shakeapp");
    localLinkedList.add("medianote");
    localLinkedList.add("qqfriend");
    localLinkedList.add("readerapp");
    localLinkedList.add("newsapp");
    localLinkedList.add("blogapp");
    localLinkedList.add("facebookapp");
    localLinkedList.add("masssendapp");
    localLinkedList.add("meishiapp");
    localLinkedList.add("feedsapp");
    localLinkedList.add("voipapp");
    localLinkedList.add("filehelper");
    localLinkedList.add("officialaccounts");
    localLinkedList.add("helper_entry");
    localLinkedList.add("pc_share");
    localLinkedList.add("cardpackage");
    localLinkedList.add("voicevoipapp");
    localLinkedList.add("voiceinputapp");
    localLinkedList.add("linkedinplugin");
    this.gVM.aB(localLinkedList);
    return localLinkedList;
  }

  protected final void FR()
  {
    findViewById(2131363964).setVisibility(8);
    this.gSA = ((ListView)findViewById(2131361903));
    this.gSB = ((TextView)findViewById(2131361905));
    this.gSB.setText(2131166182);
    this.gSB.setVisibility(8);
    this.gVM = new fe(this, "@micromsg.qq.com");
    this.gVM.a(new fg(this));
    this.diw = new eo();
    this.diw.a(new fh(this));
    a(true, this.diw);
    this.gSA.setAdapter(this.gVM);
    this.gSA.setOnItemClickListener(new fi(this));
    this.gSA.setOnTouchListener(new fj(this));
    this.gSA.setOnScrollListener(new a(new fk(this)));
    new fl(this);
    a(new fm(this));
    this.dLK = ((AlphabetScrollBar)findViewById(2131361906));
    this.dLK.setVisibility(0);
    this.dLK.a(this.dLM);
    a(new fn(this));
  }

  protected final int getLayoutId()
  {
    return 2130903069;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    String str1 = getIntent().getStringExtra("LauncherUI.Shortcut.LaunchType");
    if ((str1 != null) && (str1.equals("launch_type_voip")))
      this.gVN = true;
    this.eSl = getIntent().getBooleanExtra("voip_video", true);
    String str2 = getIntent().getStringExtra("Add_address_titile");
    if ((str2 == null) || (str2.length() <= 0))
      str2 = getString(2131166174);
    vT(str2);
    FR();
    aLb();
  }

  public void onDestroy()
  {
    this.dLK.aHU();
    this.gVM.closeCursor();
    this.gVM.aDU();
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 4) && (this.gVN))
    {
      Intent localIntent = new Intent(this, LauncherUI.class);
      localIntent.addFlags(67108864);
      startActivity(localIntent);
      finish();
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    if (this.gVb != null)
      this.gVb.dismiss();
    this.diw.aNE();
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
    aLb();
    if (this.gVM != null)
      this.gVM.ca(null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.VoipAddressUI
 * JD-Core Version:    0.6.2
 */