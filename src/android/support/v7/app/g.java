package android.support.v7.app;

import android.support.v7.internal.view.menu.o;

final class g
  implements Runnable
{
  g(f paramf)
  {
  }

  public final void run()
  {
    o localo = f.a(this.ho);
    if ((this.ho.gZ.a(0, localo)) && (this.ho.gZ.a(0, null, localo)))
      f.a(this.ho, localo);
    while (true)
    {
      f.b(this.ho);
      return;
      f.a(this.ho, null);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.app.g
 * JD-Core Version:    0.6.2
 */