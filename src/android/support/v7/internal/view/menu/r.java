package android.support.v7.internal.view.menu;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.ListAdapter;
import com.tencent.mm.k;

public class r
  implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, af
{
  private o hh;
  private AlertDialog kM;
  m kN;
  private af kO;

  public r(o paramo)
  {
    this.hh = paramo;
  }

  public final void a(o paramo, boolean paramBoolean)
  {
    if ((paramBoolean) || (paramo == this.hh))
      dismiss();
    if (this.kO != null)
      this.kO.a(paramo, paramBoolean);
  }

  public final boolean b(o paramo)
  {
    if (this.kO != null)
      return this.kO.b(paramo);
    return false;
  }

  public final void cl()
  {
    o localo = this.hh;
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(localo.getContext());
    this.kN = new m(k.aRY, com.tencent.mm.o.bII);
    this.kN.a(this);
    this.hh.a(this.kN);
    localBuilder.setAdapter(this.kN.getAdapter(), this);
    View localView = localo.ch();
    if (localView != null)
      localBuilder.setCustomTitle(localView);
    while (true)
    {
      localBuilder.setOnKeyListener(this);
      this.kM = localBuilder.create();
      this.kM.setOnDismissListener(this);
      WindowManager.LayoutParams localLayoutParams = this.kM.getWindow().getAttributes();
      localLayoutParams.type = 1003;
      localLayoutParams.flags = (0x20000 | localLayoutParams.flags);
      this.kM.show();
      return;
      localBuilder.setIcon(localo.cg()).setTitle(localo.cf());
    }
  }

  public final void dismiss()
  {
    if (this.kM != null)
      this.kM.dismiss();
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.hh.c((s)this.kN.getAdapter().getItem(paramInt), 0);
  }

  public void onDismiss(DialogInterface paramDialogInterface)
  {
    this.kN.a(this.hh, true);
  }

  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 82) || (paramInt == 4))
      if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
      {
        Window localWindow2 = this.kM.getWindow();
        if (localWindow2 != null)
        {
          View localView2 = localWindow2.getDecorView();
          if (localView2 != null)
          {
            KeyEvent.DispatcherState localDispatcherState2 = localView2.getKeyDispatcherState();
            if (localDispatcherState2 != null)
            {
              localDispatcherState2.startTracking(paramKeyEvent, this);
              return true;
            }
          }
        }
      }
      else if ((paramKeyEvent.getAction() == 1) && (!paramKeyEvent.isCanceled()))
      {
        Window localWindow1 = this.kM.getWindow();
        if (localWindow1 != null)
        {
          View localView1 = localWindow1.getDecorView();
          if (localView1 != null)
          {
            KeyEvent.DispatcherState localDispatcherState1 = localView1.getKeyDispatcherState();
            if ((localDispatcherState1 != null) && (localDispatcherState1.isTracking(paramKeyEvent)))
            {
              this.hh.l(true);
              paramDialogInterface.dismiss();
              return true;
            }
          }
        }
      }
    return this.hh.performShortcut(paramInt, paramKeyEvent, 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.r
 * JD-Core Version:    0.6.2
 */