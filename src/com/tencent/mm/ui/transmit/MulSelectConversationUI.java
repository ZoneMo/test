package com.tencent.mm.ui.transmit;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.AlphabetScrollBar;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.ek;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.contact.db;
import com.tencent.mm.ui.tools.eo;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class MulSelectConversationUI extends MMActivity
  implements MenuItem.OnMenuItemClickListener, View.OnClickListener, ek
{
  private AlphabetScrollBar dLK;
  private eo diw;
  private int gLJ = 2;
  private ListView gSA;
  private LinearLayout gSI;
  private db gUQ;
  private Button gVc;
  private boolean gpY = false;
  private TextView hrA;
  private TextView hrB;
  private TextView hrC;
  private TextView hrD;
  private TextView hrE;
  private final int hrF = 0;
  private final int hrG = 1;
  private final int hrH = 2;
  private int hrI = 0;
  private String imagePath;
  private int state = 0;

  private void U(String paramString, boolean paramBoolean)
  {
    if (au.hX(paramString))
      break label7;
    label7: 
    while (this.gSI == null)
      return;
    int i = this.gUQ.VL();
    this.gVc.setText(getString(2131167677) + "(" + i + ")");
    Button localButton = this.gVc;
    boolean bool;
    label76: int j;
    if (i > 0)
    {
      bool = true;
      localButton.setEnabled(bool);
      j = this.gSI.getChildCount();
    }
    for (int k = 0; ; k++)
    {
      if (k >= j - 1)
        break label149;
      if (paramString.equals(this.gSI.getChildAt(k).getTag()))
      {
        if (paramBoolean)
          break;
        this.gSI.removeViewAt(k);
        return;
        bool = false;
        break label76;
      }
    }
    label149: ImageView localImageView = new ImageView(this);
    c.a(localImageView, paramString);
    localImageView.setTag(paramString);
    localImageView.setOnClickListener(this);
    this.gSI.addView(localImageView, j - 1);
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)localImageView.getLayoutParams();
    localLayoutParams.height = getResources().getDimensionPixelSize(2131558461);
    localLayoutParams.width = getResources().getDimensionPixelSize(2131558461);
    localLayoutParams.rightMargin = getResources().getDimensionPixelSize(2131558427);
    localImageView.setLayoutParams(localLayoutParams);
    ((HorizontalScrollView)this.gSI.getParent()).smoothScrollTo(this.gSI.getMeasuredWidth(), 0);
  }

  private void aPa()
  {
    ListView localListView;
    int i;
    int j;
    Resources localResources;
    if (this.gpY)
    {
      this.hrA.setVisibility(8);
      this.hrB.setVisibility(8);
      this.hrC.setVisibility(8);
      this.hrD.setVisibility(8);
      this.hrE.setVisibility(8);
      localListView = this.gSA;
      i = this.gSA.getPaddingLeft();
      j = this.gSA.getPaddingTop();
      localResources = getResources();
      if (this.state != 1)
        break label333;
    }
    label333: for (int k = 2131558466; ; k = 2131558428)
    {
      localListView.setPadding(i, j, localResources.getDimensionPixelSize(k), this.gSA.getPaddingBottom());
      this.gSA.setAdapter(this.gUQ);
      aPb();
      return;
      if (this.state == 0)
      {
        this.gUQ.a("@micromsg.qq.com", "", 8, null);
        this.hrA.setVisibility(0);
        this.hrB.setVisibility(0);
        this.hrC.setVisibility(0);
        this.hrD.setVisibility(8);
        this.hrE.setVisibility(0);
        break;
      }
      if (this.state == 1)
      {
        this.gUQ.a("@all.contact.without.chatroom", "", 1, null);
        this.hrA.setVisibility(8);
        this.hrB.setVisibility(8);
        this.hrC.setVisibility(8);
        this.hrD.setText(2131166195);
        this.hrD.setVisibility(0);
        this.hrE.setVisibility(8);
        break;
      }
      this.gUQ.a("@all.chatroom.contact", "", 1, null);
      this.hrA.setVisibility(8);
      this.hrB.setVisibility(8);
      this.hrC.setVisibility(8);
      this.hrD.setVisibility(8);
      this.hrE.setVisibility(8);
      break;
    }
  }

  private void aPb()
  {
    switch (this.state)
    {
    case 1:
    default:
      if (this.dLK != null)
        this.dLK.setVisibility(0);
      break;
    case 0:
    case 2:
    }
    do
      return;
    while (this.dLK == null);
    this.dLK.setVisibility(8);
  }

  private void ey(boolean paramBoolean)
  {
    SM();
    if (paramBoolean)
      if (this.state == 0)
      {
        com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = Integer.valueOf(0);
        arrayOfObject[1] = Integer.valueOf(0);
        arrayOfObject[2] = Integer.valueOf(0);
        localm.d(11048, arrayOfObject);
        finish();
      }
    while (true)
    {
      aPa();
      return;
      if (this.state == 1)
      {
        this.state = 0;
      }
      else
      {
        this.state = 1;
        continue;
        if (this.state == 0)
          this.state = 1;
        else if (this.state == 1)
          this.state = 2;
      }
    }
  }

  protected final void FR()
  {
    mn(2131167421);
    this.dLK = ((AlphabetScrollBar)findViewById(2131361906));
    this.gSA = ((ListView)findViewById(2131361903));
    this.gSI = ((LinearLayout)findViewById(2131361909));
    this.gVc = ((Button)findViewById(2131361911));
    View localView1 = View.inflate(this, 2130903556, null);
    this.hrA = ((TextView)localView1.findViewById(2131363289));
    this.hrA.setVisibility(0);
    TextView localTextView1 = (TextView)localView1.findViewById(2131363290);
    this.hrB = localTextView1;
    localTextView1.setOnClickListener(new m(this));
    this.hrB.setVisibility(0);
    TextView localTextView2 = (TextView)localView1.findViewById(2131361912);
    this.hrC = localTextView2;
    localTextView2.setVisibility(0);
    TextView localTextView3 = (TextView)localView1.findViewById(2131363291);
    this.hrD = localTextView3;
    localTextView3.setOnClickListener(new n(this));
    this.gSA.addHeaderView(localView1);
    View localView2 = View.inflate(this, 2130903556, null);
    this.hrE = ((TextView)localView2.findViewById(2131363291));
    this.hrE.setOnClickListener(new o(this));
    this.hrE.setVisibility(0);
    this.gSA.addFooterView(localView2);
    this.diw = new eo();
    this.diw.a(new p(this));
    a(true, this.diw);
    this.gUQ = new db(this, "@micromsg.qq.com", "");
    LinkedList localLinkedList = new LinkedList();
    if ((0x2 & this.gLJ) != 0)
    {
      String[] arrayOfString = w.chR;
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        localLinkedList.add(arrayOfString[j]);
      if ((0x8 & this.gLJ) != 0)
        localLinkedList.remove("medianote");
    }
    localLinkedList.add("weixin");
    localLinkedList.add("officialaccounts");
    localLinkedList.add("newsapp");
    this.gUQ.aB(localLinkedList);
    this.gUQ.aKR();
    this.gUQ.aKS();
    this.gSA.setAdapter(this.gUQ);
    this.gSA.setOnItemClickListener(new q(this));
    this.gVc.setOnClickListener(this);
    this.gVc.setEnabled(false);
    this.dLK.a(this);
    aPb();
    a(this);
  }

  protected final int getLayoutId()
  {
    return 2130903557;
  }

  public final void lx(String paramString)
  {
    if (getString(2131167789).equals(paramString))
      this.gSA.setSelection(0);
    String[] arrayOfString;
    int i;
    do
    {
      return;
      do
      {
        do
          arrayOfString = this.gUQ.VG();
        while (arrayOfString == null);
        if ("↑".equals(paramString))
        {
          this.gSA.setSelection(0);
          return;
        }
        boolean bool = "☆".equals(paramString);
        i = 0;
        if (bool)
        {
          this.gSA.setSelection(this.gSA.getHeaderViewsCount());
          return;
          i++;
        }
      }
      while (i >= arrayOfString.length);
    }
    while (!arrayOfString[i].equals(paramString));
    int j = this.gUQ.getPositionForSection(i);
    this.gSA.setSelection(j + this.gSA.getHeaderViewsCount());
  }

  public void onClick(View paramView)
  {
    ArrayList localArrayList;
    ch localch;
    if (paramView == this.gVc)
    {
      localArrayList = this.gUQ.dU(true);
      if (localArrayList.size() > 0)
        localch = h.a(aal(), getString(2131165599), false, null);
    }
    Object localObject;
    do
    {
      be.ut().o(new r(this, localArrayList, localch));
      do
        return;
      while (!(paramView instanceof ImageView));
      localObject = paramView.getTag();
    }
    while (localObject == null);
    this.gUQ.wO((String)localObject);
    U((String)localObject, false);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.gLJ = getIntent().getIntExtra("Select_Conv_Type", 2);
    this.imagePath = getIntent().getStringExtra("intent_extra_image_path");
    FR();
  }

  protected void onDestroy()
  {
    this.gUQ.closeCursor();
    this.dLK.aHU();
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      ey(true);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    ey(true);
    return true;
  }

  protected void onPause()
  {
    super.onPause();
    if (this.diw != null)
      this.diw.aNE();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.MulSelectConversationUI
 * JD-Core Version:    0.6.2
 */