package com.tencent.mm.ah;

import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.ai;

public final class s extends ai
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS verifycontact ( id INTEGER PRIMARY KEY, username varchar(40), nickname varchar(40), fullpy varchar(60), shortpy varchar(40), imgflag int, scene int, content text, status int, reserved1 int,reserved2 int,reserved3 text,reserved4 text)", "CREATE UNIQUE INDEX IF NOT EXISTS verifyContactIndex  ON verifycontact ( username )" };
  private i cjB;

  public s(i parami)
  {
    this.cjB = parami;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ah.s
 * JD-Core Version:    0.6.2
 */