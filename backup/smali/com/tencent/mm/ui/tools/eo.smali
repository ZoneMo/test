.class public Lcom/tencent/mm/ui/tools/eo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private ctk:Landroid/os/Handler;

.field protected hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

.field private hlS:Z

.field private hlT:Z

.field private hlU:Z

.field private hlV:Landroid/view/MenuItem;

.field private hlW:Lcom/tencent/mm/ui/tools/ez;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlS:Z

    .line 38
    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlT:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlU:Z

    .line 41
    iput-object v2, p0, Lcom/tencent/mm/ui/tools/eo;->hlV:Landroid/view/MenuItem;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->ctk:Landroid/os/Handler;

    .line 44
    iput-object v2, p0, Lcom/tencent/mm/ui/tools/eo;->hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MicroMsg.SearchViewHelper-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->TAG:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/eo;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlS:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/eo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/tencent/mm/ui/tools/eo;->hlS:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/eo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/eo;)Lcom/tencent/mm/ui/tools/ez;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlW:Lcom/tencent/mm/ui/tools/ez;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/tools/eo;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->ctk:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/tools/eo;)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlV:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/tools/eo;)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlV:Landroid/view/MenuItem;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Landroid/view/Menu;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->TAG:Ljava/lang/String;

    const-string v2, "on prepare options menu, searchViewExpand %B, triggerExpand %B, canExpand %B"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/tencent/mm/ui/tools/eo;->hlS:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/tencent/mm/ui/tools/eo;->hlT:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-boolean v5, p0, Lcom/tencent/mm/ui/tools/eo;->hlU:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    if-nez p1, :cond_1

    .line 242
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->TAG:Ljava/lang/String;

    const-string v1, "on hanle status fail, activity is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    sget v0, Lcom/tencent/mm/i;->aAZ:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlV:Landroid/view/MenuItem;

    .line 247
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlV:Landroid/view/MenuItem;

    if-nez v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->TAG:Ljava/lang/String;

    const-string v1, "can not find search menu, error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlU:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlS:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlT:Z

    if-eqz v0, :cond_0

    .line 253
    :cond_3
    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/eo;->hlT:Z

    move v0, v1

    .line 255
    :goto_1
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 256
    invoke-interface {p2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 257
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sget v4, Lcom/tencent/mm/i;->aAZ:I

    if-eq v3, v4, :cond_4

    .line 258
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->ctk:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/tools/ew;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/tools/ew;-><init>(Lcom/tencent/mm/ui/tools/eo;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/ui/tools/ez;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/eo;->hlW:Lcom/tencent/mm/ui/tools/ez;

    .line 54
    return-void
.end method

.method public final aMH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->aMH()Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final aND()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 305
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/eo;->TAG:Ljava/lang/String;

    const-string v3, "do expand, expanded[%B], search menu item null[%B]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/tencent/mm/ui/tools/eo;->hlS:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/tencent/mm/ui/tools/eo;->hlV:Landroid/view/MenuItem;

    if-nez v5, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlS:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlU:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->TAG:Ljava/lang/String;

    const-string v1, "can not expand now"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_1
    :goto_0
    return-void

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlV:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->ctk:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/tools/ey;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/ey;-><init>(Lcom/tencent/mm/ui/tools/eo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/eo;->hlT:Z

    goto :goto_0
.end method

.method public final aNE()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->TAG:Ljava/lang/String;

    const-string v1, "do collapse"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlV:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlV:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/z;->g(Landroid/view/MenuItem;)Z

    .line 343
    :cond_0
    return-void
.end method

.method public final aNF()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlS:Z

    return v0
.end method

.method protected auT()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method protected auU()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method protected auV()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public final b(Landroid/support/v4/app/FragmentActivity;Landroid/view/Menu;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->TAG:Ljava/lang/String;

    const-string v1, "on create options menu"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-nez p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->TAG:Ljava/lang/String;

    const-string v1, "on add search menu, activity is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    new-instance v1, Lcom/tencent/mm/ui/tools/ep;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/ep;-><init>(Lcom/tencent/mm/ui/tools/eo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->a(Lcom/tencent/mm/ui/tools/f;)V

    .line 135
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/eo;->auT()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->cP(Z)V

    .line 136
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    new-instance v1, Lcom/tencent/mm/ui/tools/eq;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/eq;-><init>(Lcom/tencent/mm/ui/tools/eo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 148
    sget v0, Lcom/tencent/mm/i;->aAZ:I

    sget v1, Lcom/tencent/mm/n;->bek:I

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlV:Landroid/view/MenuItem;

    .line 149
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlV:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/tencent/mm/ui/tools/eo;->hlU:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 150
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlV:Landroid/view/MenuItem;

    sget v1, Lcom/tencent/mm/h;->abD:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 151
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlV:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/eo;->hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    invoke-static {v0, v1}, Landroid/support/v4/view/z;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 153
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlV:Landroid/view/MenuItem;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/support/v4/view/z;->a(Landroid/view/MenuItem;I)V

    .line 154
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hlV:Landroid/view/MenuItem;

    new-instance v1, Lcom/tencent/mm/ui/tools/er;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/tools/er;-><init>(Lcom/tencent/mm/ui/tools/eo;Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/z;->a(Landroid/view/MenuItem;Landroid/support/v4/view/af;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public final clearFocus()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->aMJ()V

    .line 84
    :cond_0
    return-void
.end method

.method public final clearText()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eo;->hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/ActionBarSearchView;->em(Z)V

    .line 78
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 293
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/eo;->TAG:Ljava/lang/String;

    const-string v3, "on key down, key code %d, expand %B"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-boolean v5, p0, Lcom/tencent/mm/ui/tools/eo;->hlS:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    const/4 v2, 0x4

    if-ne v2, p1, :cond_0

    iget-boolean v2, p0, Lcom/tencent/mm/ui/tools/eo;->hlS:Z

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/eo;->aNE()V

    .line 298
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
