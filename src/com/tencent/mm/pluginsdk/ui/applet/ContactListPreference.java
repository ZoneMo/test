package com.tencent.mm.pluginsdk.ui.applet;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.e;
import com.tencent.mm.ui.base.preference.Preference;
import java.util.ArrayList;
import java.util.List;

@Deprecated
public class ContactListPreference extends Preference
{
  private Context context;
  private GridView dms;
  private AdapterView.OnItemClickListener dne = new ac(this);
  private List dxK = new ArrayList();
  private boolean fnL = true;
  private boolean fnM = true;
  private View.OnClickListener fnQ;
  private View.OnClickListener fnR;
  private View fnS;
  private View fnT;
  private ArrayList fnZ = new ArrayList();
  private ak foD;
  private AdapterView.OnItemLongClickListener foE = null;
  private ad foF = null;
  private AdapterView.OnItemLongClickListener foG = new ab(this);
  private int foH = 0;
  private View foI;
  private FrameLayout foJ;
  private FrameLayout foK;

  public ContactListPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
    ase();
  }

  public ContactListPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.context = paramContext;
    ase();
  }

  private void a(GridView paramGridView)
  {
    aa.d("MicroMsg.ContactListPreference", "setListViewHeightBasedOnChildren change");
    if (paramGridView == null);
    int i;
    do
    {
      do
      {
        ListAdapter localListAdapter;
        do
        {
          return;
          localListAdapter = paramGridView.getAdapter();
        }
        while (localListAdapter == null);
        i = 1 + (-1 + localListAdapter.getCount()) / 4;
        aa.d("MicroMsg.ContactListPreference", "icount " + i + " " + this.foH);
      }
      while (i == this.foH);
      this.foH = i;
    }
    while (i < 0);
    float f1 = e.a(this.context, 85.0F);
    float f2 = e.a(this.context, 5.0F);
    float f3 = 3.0F * f2;
    aa.d("MicroMsg.ContactListPreference", "dip " + f1 + "  icount:" + i);
    int j = 0 + i * 180;
    aa.d("MicroMsg.ContactListPreference", "_totalHeight " + j + " height:" + this.dms.getHeight() + ", mH:" + this.dms.getMeasuredHeight() + "padding:" + this.dms.getPaddingBottom() + ", paddingTop:" + this.dms.getPaddingTop());
    int k = (int)(f3 + (int)(j + f2 * i));
    ViewGroup.LayoutParams localLayoutParams = paramGridView.getLayoutParams();
    localLayoutParams.height = k;
    paramGridView.setLayoutParams(localLayoutParams);
  }

  private void ase()
  {
    this.foD = new ak(this.context);
  }

  public final boolean asa()
  {
    if (this.foD != null)
      return this.foD.asa();
    return false;
  }

  public final boolean km(int paramInt)
  {
    if (this.foD != null)
      return this.foD.km(paramInt);
    return true;
  }

  public final boolean kn(int paramInt)
  {
    if (this.foD != null)
      return this.foD.kn(paramInt);
    return false;
  }

  public final boolean ko(int paramInt)
  {
    if (this.foD != null)
      return this.foD.ko(paramInt);
    return false;
  }

  public final boolean kp(int paramInt)
  {
    if (this.foD != null)
      return this.foD.kp(paramInt);
    return false;
  }

  public final void notifyChanged()
  {
    if (this.foD != null)
      this.foD.notifyChanged();
    aa.d("MicroMsg.ContactListPreference", "notifyChanged set setListViewHeightBasedOnChildren");
    a(this.dms);
  }

  public final void onBindView(View paramView)
  {
    long l1 = System.currentTimeMillis();
    int i;
    if (this.fnZ == null)
    {
      i = 0;
      this.foH = 0;
      aa.d("MicroMsg.ContactListPreference", "MicroMsg.RoomInfoContPreference BindView  memberList->Size : " + this.dxK.size() + " memberContactList " + i);
      this.dms = ((GridView)paramView.findViewById(i.avL));
      this.dms.setDrawingCacheEnabled(false);
      this.foI = paramView.findViewById(i.aHK);
      this.foJ = ((FrameLayout)paramView.findViewById(i.aHI));
      this.foK = ((FrameLayout)paramView.findViewById(i.aHH));
      this.foH = -1;
      this.dms.setAdapter(this.foD);
      if (this.fnS != null)
      {
        this.foJ.removeAllViews();
        if (this.fnS.getParent() != null)
          ((ViewGroup)this.fnS.getParent()).removeAllViews();
        this.foJ.addView(this.fnS);
        if (this.fnQ == null)
          break label401;
        this.foJ.setOnClickListener(this.fnQ);
        label201: this.foJ.setVisibility(0);
      }
      if ((this.fnT != null) && ((!this.fnL) || (this.foD.asc())))
      {
        this.foK.removeAllViews();
        if (this.fnT.getParent() != null)
          ((ViewGroup)this.fnT.getParent()).removeAllViews();
        this.foK.addView(this.fnT);
        if (this.fnR == null)
          break label412;
        this.foK.setOnClickListener(this.fnR);
        label292: this.foK.setVisibility(0);
      }
      int j = h.ady;
      this.foI.setBackgroundResource(j);
      if (this.foE == null)
        break label423;
      this.dms.setOnItemLongClickListener(this.foE);
    }
    while (true)
    {
      this.dms.setOnItemClickListener(this.dne);
      a(this.dms);
      super.onBindView(paramView);
      long l2 = System.currentTimeMillis() - l1;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(l2);
      aa.e("MicroMsg.ContactListPreference", "onbindview, %s", arrayOfObject);
      return;
      i = this.fnZ.size();
      break;
      label401: this.foJ.setClickable(false);
      break label201;
      label412: this.foK.setClickable(false);
      break label292;
      label423: this.dms.setOnItemLongClickListener(this.foG);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.ContactListPreference
 * JD-Core Version:    0.6.2
 */