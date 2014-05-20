package com.tencent.mm.ui.voicesearch;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.database.Cursor;
import android.database.MergeCursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.c.a.gy;
import com.tencent.mm.c.a.ha;
import com.tencent.mm.model.be;
import com.tencent.mm.model.r;
import com.tencent.mm.model.v;
import com.tencent.mm.modelvoice.bf;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.aj;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.storage.n;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.bc;
import com.tencent.mm.ui.bd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

@SuppressLint({"DefaultLocale"})
public final class a extends bc
{
  private String cIs;
  protected List cKz = null;
  private com.tencent.mm.ui.applet.b cqO = new com.tencent.mm.ui.applet.b(new b(this));
  private com.tencent.mm.ui.applet.f cqP = null;
  private ColorStateList[] gXT = new ColorStateList[2];
  private HashMap gXU;
  private boolean gXV = true;
  private e hty;

  public a(Context paramContext, bd parambd)
  {
    super(paramContext, new n());
    super.a(parambd);
    this.gXT[0] = com.tencent.mm.an.a.j(paramContext, 2131493125);
    this.gXT[1] = com.tencent.mm.an.a.j(paramContext, 2131493126);
    this.gXU = new HashMap();
  }

  private static int iM(String paramString)
  {
    int i = 1;
    if ((paramString != null) && (paramString.length() > 0));
    try
    {
      int j = Integer.valueOf(paramString).intValue();
      i = j;
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return i;
  }

  public final void FZ()
  {
    Cursor[] arrayOfCursor = new Cursor[2];
    arrayOfCursor[0] = be.uz().sx().a(com.tencent.mm.model.w.chM, this.cKz, this.cIs);
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    if ((this.cKz != null) && (this.cKz.size() > 0))
      localArrayList1.addAll(this.cKz);
    try
    {
      while (arrayOfCursor[0].moveToNext())
      {
        String str = arrayOfCursor[0].getString(arrayOfCursor[0].getColumnIndex("username"));
        localArrayList1.add(str);
        if (!str.endsWith("@chatroom"))
          localArrayList2.add(str);
        aa.d("MicroMsg.SearchConversationAdapter", "block user " + str);
      }
    }
    catch (Exception localException)
    {
      arrayOfCursor[1] = be.uz().su().b(this.cIs, "@micromsg.with.all.biz.qq.com", localArrayList1, localArrayList2);
      setCursor(new MergeCursor(arrayOfCursor));
      if ((this.hty != null) && (this.cIs != null))
        getCursor().getCount();
      super.notifyDataSetChanged();
    }
  }

  protected final void Ga()
  {
    FZ();
  }

  public final void aB(List paramList)
  {
    if (paramList == null)
      paramList = new LinkedList();
    this.cKz = paramList;
    ca(null);
  }

  public final void ca(String paramString)
  {
    if ((paramString != null) && (!paramString.equals("")) && (this.gXU != null))
      this.gXU.remove(paramString);
    while (true)
    {
      super.ca(paramString);
      return;
      if (this.gXU != null)
        this.gXU.clear();
    }
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.cqP == null)
      this.cqP = new c(this);
    if (this.cqO != null)
      this.cqO.a(paramInt, this.cqP);
    n localn = (n)getItem(paramInt);
    if ((iM(localn.rR()) == 34) && (localn.rO() == 0) && (!au.hX(localn.getContent())))
    {
      String str2 = localn.getContent();
      if ((localn.getUsername().equals("qmessage")) || (localn.getUsername().equals("floatbottle")))
      {
        String[] arrayOfString = str2.split(":");
        if ((arrayOfString != null) && (arrayOfString.length > 3))
          str2 = arrayOfString[1] + ":" + arrayOfString[2] + ":" + arrayOfString[3];
      }
      if (new bf(str2).Ev());
    }
    for (int i = 1; ; i = 0)
    {
      f localf;
      Object localObject2;
      label446: int j;
      int k;
      String str1;
      int m;
      label506: Object localObject3;
      label534: int i2;
      if (paramView == null)
      {
        localf = new f();
        paramView = View.inflate(this.context, 2130903661, null);
        localf.cMS = ((ImageView)paramView.findViewById(2131362448));
        localf.cPP = ((TextView)paramView.findViewById(2131362450));
        localf.cPQ = ((TextView)paramView.findViewById(2131362451));
        localf.cPR = ((TextView)paramView.findViewById(2131362452));
        localf.cPT = ((TextView)paramView.findViewById(2131362134));
        localf.gYC = ((ImageView)paramView.findViewById(2131362454));
        localf.gYE = ((ImageView)paramView.findViewById(2131362455));
        paramView.setTag(localf);
        Object localObject1 = (d)this.gXU.get(localn.getUsername() + localn.getContent());
        d locald;
        if (localObject1 == null)
        {
          locald = new d(this, (byte)0);
          locald.nickName = com.tencent.mm.ao.b.e(this.context, com.tencent.mm.model.w.cu(localn.getUsername()), (int)localf.cPP.getTextSize());
          if (localn.getStatus() != 1)
            break label1094;
          localObject2 = this.context.getString(2131165599);
          locald.gYo = ((CharSequence)localObject2);
          j = (int)localf.cPR.getTextSize();
          k = v.tl();
          str1 = localn.getUsername();
          if (au.c((Integer)be.uz().sr().get(17)) != 1)
            break label1132;
          m = 1;
          if ((!str1.equals("qqmail")) || (m != 0))
            break label1138;
          localObject3 = this.context.getString(2131165862);
          locald.gYp = ((CharSequence)localObject3);
          if ((com.tencent.mm.model.w.cp(localn.getUsername())) && (r.ci(localn.getUsername()) == 0))
            locald.nickName = this.context.getString(2131165739);
        }
        switch (localn.getStatus())
        {
        case 3:
        case 4:
        default:
          i2 = -1;
          label623: locald.gYq = i2;
          this.gXU.put(localn.getUsername() + localn.getContent(), locald);
          localObject1 = locald;
          localf.cPR.setTextColor(this.gXT[i]);
          localf.cPP.setText(((d)localObject1).nickName);
          localf.cPQ.setText(((d)localObject1).gYo);
          TextView localTextView = localf.cPR;
          localTextView.setText(com.tencent.mm.ao.b.c(this.context, ((d)localObject1).gYp.toString(), (int)localf.cPR.getTextSize()));
          if (localn.rQ() == 0L)
          {
            localf.cPQ.setVisibility(8);
            label775: localf.gYC.setVisibility(8);
            if (com.tencent.mm.model.w.cp(localn.getUsername()))
            {
              i locali = be.uz().su().tO(localn.getUsername());
              if ((locali != null) && (locali.ry() == 0))
                localf.gYC.setVisibility(0);
            }
            com.tencent.mm.pluginsdk.ui.c.a(localf.cMS, localn.getUsername());
            if (this.gXV)
            {
              if (localn.rN() <= 100)
                break label1337;
              localf.cPT.setText("...");
              localf.cPT.setVisibility(0);
            }
            label884: if (be.se())
            {
              if (!com.tencent.mm.model.w.a(localn))
              {
                be.uz().sx();
                if (o.e(localn))
                  be.uz().sx().d(localn);
              }
              be.uz().sx();
              if (o.e(localn))
                break label1395;
              paramView.findViewById(2131362447).setBackgroundResource(2130837910);
            }
          }
          break;
        case 0:
        case 1:
        case 2:
        case 5:
        }
      }
      gy localgy;
      while (true)
      {
        localgy = new gy();
        localgy.bQS.bQU = true;
        com.tencent.mm.sdk.b.a.ayH().f(localgy);
        if ((0L != o.a(localn, 7, 0L)) && (!localn.getUsername().equals(localgy.bQT.bQW)))
        {
          localn.p(o.a(localn, 6, localn.rQ()));
          be.uz().sx().a(localn, localn.getUsername());
        }
        if ((h.apl() != null) && (h.apl().oZ(localn.getUsername())))
          break label1411;
        localf.gYE.setVisibility(8);
        return paramView;
        localf = (f)paramView.getTag();
        break;
        label1094: if (localn.rQ() == 9223372036854775807L)
        {
          localObject2 = "";
          break label446;
        }
        localObject2 = com.tencent.mm.pluginsdk.e.e.b(this.context, localn.rQ(), true);
        break label446;
        label1132: m = 0;
        break label506;
        label1138: ca localca = be.uz().sz().vB("@t.qq.com");
        if ((localca != null) && (localca.aBS()));
        for (int n = 1; ; n = 0)
        {
          if ((!str1.equals("tmessage")) || (n != 0))
            break label1205;
          localObject3 = this.context.getString(2131165862);
          break;
        }
        label1205: if ((k & 0x40) != 0);
        for (int i1 = 1; ; i1 = 0)
        {
          if ((!str1.equals("qmessage")) || (i1 != 0))
            break label1253;
          localObject3 = this.context.getString(2131165862);
          break;
        }
        label1253: localObject3 = com.tencent.mm.ao.b.c(this.context, com.tencent.mm.booter.w.a(localn.rO(), localn.getUsername(), localn.getContent(), iM(localn.rR()), this.context), j);
        break label534;
        i2 = -1;
        break label623;
        i2 = 2130838897;
        break label623;
        i2 = -1;
        break label623;
        i2 = 2130838895;
        break label623;
        localf.cPQ.setVisibility(0);
        break label775;
        label1337: if (localn.rN() > 0)
        {
          localf.cPT.setText(localn.rN());
          localf.cPT.setVisibility(0);
          break label884;
        }
        localf.cPT.setVisibility(4);
        break label884;
        label1395: paramView.findViewById(2131362447).setBackgroundResource(2130837909);
      }
      label1411: localf.gYE.setVisibility(0);
      if (localn.getUsername().equals(localgy.bQT.bQW))
      {
        localf.gYE.setImageResource(2130839519);
        return paramView;
      }
      localf.gYE.setImageResource(2130839517);
      return paramView;
    }
  }

  public final void ih(String paramString)
  {
    this.cIs = paramString;
    closeCursor();
    FZ();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicesearch.a
 * JD-Core Version:    0.6.2
 */