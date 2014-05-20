package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.g;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.applet.a;
import com.tencent.mm.ui.base.AlphabetScrollBar;
import com.tencent.mm.ui.base.ce;
import com.tencent.mm.ui.base.ek;
import com.tencent.mm.ui.tools.eo;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class SnsAddressUI extends MMActivity
{
  public static final int eut = g.ggt;
  private AlphabetScrollBar dLK;
  private ek dLM = new ez(this);
  private eo diw;
  private Button eqt;
  private int eyn = 0;
  private String gRX;
  private ListView gSA;
  private TextView gSB;
  private int gSH;
  private LinearLayout gSI;
  private String gUR;
  private en gVB;
  private String gVC = "";
  private String gVD = "@micromsg.qq.com";
  private int gVE = 0;
  private ce gVb;
  private View.OnClickListener gVm = new er(this);
  private String gVz = "";

  private void wR(String paramString)
  {
    if ((cj.hX(paramString)) && (this.gVB != null));
    while (true)
    {
      return;
      if (this.gVB.aKZ() != null);
      for (boolean bool = this.gVB.aKZ().contains(paramString); (!bool) && (this.gSI != null); bool = false)
      {
        int i = this.gSI.getChildCount();
        for (int j = 0; j < i - 1; j++)
          if (paramString.equals(this.gSI.getChildAt(j).getTag()))
          {
            this.gSI.removeViewAt(j);
            return;
          }
        ImageView localImageView = new ImageView(this);
        c.a(localImageView, paramString);
        localImageView.setTag(paramString);
        localImageView.setOnClickListener(this.gVm);
        this.gSI.addView(localImageView, i - 1);
        LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)localImageView.getLayoutParams();
        localLayoutParams.height = getResources().getDimensionPixelSize(2131558461);
        localLayoutParams.width = getResources().getDimensionPixelSize(2131558461);
        localLayoutParams.rightMargin = getResources().getDimensionPixelSize(2131558427);
        localImageView.setLayoutParams(localLayoutParams);
        ((HorizontalScrollView)this.gSI.getParent()).smoothScrollTo(this.gSI.getMeasuredWidth(), 0);
        return;
      }
    }
  }

  protected final void FR()
  {
    findViewById(2131363964).setVisibility(8);
    this.gSA = ((ListView)findViewById(2131361903));
    this.gSB = ((TextView)findViewById(2131361905));
    this.gSB.setText(2131166182);
    this.gSB.setVisibility(8);
    String str1 = this.gVD;
    String str2 = this.gRX;
    this.gVB = new en(this, str1, str2, this.gVz);
    this.gVB.a(new eq(this));
    this.diw = new eo();
    this.diw.a(new es(this));
    a(true, this.diw);
    this.gSA.setAdapter(this.gVB);
    this.gSA.setOnItemClickListener(new et(this));
    this.gSA.setOnTouchListener(new eu(this));
    this.gSA.setOnScrollListener(new a(new ev(this)));
    dg(this.gVB.aKU());
    new ew(this);
    a(new ex(this));
    this.dLK = ((AlphabetScrollBar)findViewById(2131361906));
    this.dLK.setVisibility(0);
    this.dLK.a(this.dLM);
    int i = this.gVB.aKV().size();
    findViewById(2131361908).setVisibility(0);
    this.gSI = ((LinearLayout)findViewById(2131361909));
    this.gSI.setVisibility(0);
    this.eqt = ((Button)findViewById(2131361911));
    this.eqt.setVisibility(0);
    Button localButton = this.eqt;
    if (i > 0);
    for (boolean bool = true; ; bool = false)
    {
      localButton.setEnabled(bool);
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = getString(2131167684);
      arrayOfObject[1] = Integer.valueOf(i + this.eyn);
      arrayOfObject[2] = Integer.valueOf(eut);
      wV(String.format("%s(%d/%d)", arrayOfObject));
      this.eqt.setOnClickListener(new ey(this));
      return;
    }
  }

  public final void dV(boolean paramBoolean)
  {
    if (this.eqt != null)
      this.eqt.setEnabled(paramBoolean);
  }

  protected final int getLayoutId()
  {
    return 2130903069;
  }

  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    super.onContextItemSelected(paramMenuItem);
    return true;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.gRX = getIntent().getStringExtra("Contact_GroupFilter_Str");
    this.gUR = getIntent().getStringExtra("Block_list");
    this.gVz = cj.R(getIntent().getStringExtra("Add_get_from_sns"), "");
    this.gVC = cj.R(getIntent().getStringExtra("Select_Contact"), "");
    this.gVD = cj.R(getIntent().getStringExtra("Contact_GroupFilter_Type"), "@micromsg.qq.com");
    String str = getIntent().getStringExtra("Add_address_titile");
    this.eyn = getIntent().getIntExtra("sns_address_count", 0);
    vT(str);
    FR();
    if ((this.gVC != null) && (!this.gVC.equals("")));
    for (List localList1 = cj.c(this.gVC.split(",")); ; localList1 = null)
    {
      if ((localList1 != null) && (localList1.size() != 0))
      {
        this.gVB.aD(localList1);
        int i = localList1.size();
        for (int j = 0; j < i; j++)
          wR((String)localList1.get(j));
      }
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = getString(2131167684);
      arrayOfObject[1] = Integer.valueOf(this.gVB.VL() + this.eyn);
      arrayOfObject[2] = Integer.valueOf(eut);
      wV(String.format("%s(%d/%d)", arrayOfObject));
      boolean bool;
      LinkedList localLinkedList;
      List localList3;
      if (this.gVB.VL() > 0)
      {
        bool = true;
        dV(bool);
        localLinkedList = new LinkedList();
        if ((this.gUR == null) || (this.gUR.equals("")))
          break label735;
        localList3 = cj.c(this.gUR.split(","));
        this.gVE = localList3.size();
      }
      label735: for (Object localObject = localList3; ; localObject = localLinkedList)
      {
        new LinkedList();
        List localList2 = w.tT();
        if (localList2 != null)
        {
          Iterator localIterator = localList2.iterator();
          while (true)
            if (localIterator.hasNext())
            {
              ((List)localObject).add((String)localIterator.next());
              continue;
              bool = false;
              break;
            }
        }
        ((List)localObject).add("weixin");
        ((List)localObject).add("weibo");
        ((List)localObject).add("qqmail");
        ((List)localObject).add("fmessage");
        ((List)localObject).add("tmessage");
        ((List)localObject).add("qmessage");
        ((List)localObject).add("qqsync");
        ((List)localObject).add("floatbottle");
        ((List)localObject).add("lbsapp");
        ((List)localObject).add("shakeapp");
        ((List)localObject).add("medianote");
        ((List)localObject).add("qqfriend");
        ((List)localObject).add("readerapp");
        ((List)localObject).add("newsapp");
        ((List)localObject).add("blogapp");
        ((List)localObject).add("facebookapp");
        ((List)localObject).add("masssendapp");
        ((List)localObject).add("meishiapp");
        ((List)localObject).add("feedsapp");
        ((List)localObject).add("voipapp");
        ((List)localObject).add("filehelper");
        ((List)localObject).add("officialaccounts");
        ((List)localObject).add("helper_entry");
        ((List)localObject).add("pc_share");
        ((List)localObject).add("cardpackage");
        ((List)localObject).add("voicevoipapp");
        ((List)localObject).add("voiceinputapp");
        ((List)localObject).add("linkedinplugin");
        this.gVB.aB((List)localObject);
        return;
      }
    }
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }

  public void onDestroy()
  {
    this.dLK.aHU();
    this.gVB.closeCursor();
    this.gVB.aDU();
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      finish();
      if (!getIntent().getBooleanExtra("stay_in_wechat", true))
        moveTaskToBack(true);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    if (this.gVb != null)
      this.gVb.dismiss();
    if (this.diw != null)
      this.diw.aNE();
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
    if (this.gVB != null)
      this.gVB.ca(null);
  }

  public final void wV(String paramString)
  {
    if (this.eqt != null)
      this.eqt.setText(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.SnsAddressUI
 * JD-Core Version:    0.6.2
 */